using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Collections;
using System.Data.SqlClient;
using System.Data.Entity;

namespace Sindbad_Cars
{
    public partial class Purchase : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string vehicleId = Request.QueryString["VehicleID"];
                if (!string.IsNullOrEmpty(vehicleId))
                {
                    LoadVehicleDetails(vehicleId);
                }
                else
                {
                    // Handle the error or alert the user
                    Response.Write("Vehicle ID is missing.");
                }
            }
        }
        private void LoadVehicleDetails(string vehicleId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Vehicle_ID, Registration_Number, Price FROM Vehicle WHERE Vehicle_ID = @VehicleID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@VehicleID", vehicleId);

                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        TextBox1.Text = reader["Vehicle_ID"].ToString();
                        TextBox2.Text = reader["Registration_Number"].ToString();
                        TextBox3.Text = reader["Price"].ToString();
                    }
                    else
                    {
                        Response.Write("No vehicle found with the given ID.");
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
                finally
                {
                    con.Close();
                }
            }
        }
        protected void ButtonBuy_Click(object sender, EventArgs e)
        {
            string cardNumber = txtCardNumber.Text.Trim();
            string cvv = txtCVV.Text.Trim();
            bool isValid = true;

            // Validate card number (assuming 16 digits)
            if (!System.Text.RegularExpressions.Regex.IsMatch(cardNumber, @"^\d{16}$"))
            {
                lblCardNumberError.Text = "Invalid card number. Please enter a valid 16-digit card number.";
                lblCardNumberError.Visible = true;
                isValid = false;
            }
            else
            {
                lblCardNumberError.Visible = false;
            }

            // Validate CVV (3 or 4 digits)
            if (!System.Text.RegularExpressions.Regex.IsMatch(cvv, @"^\d{3,4}$"))
            {
                lblCVVError.Text = "Invalid CVV. Please enter a valid 3 or 4-digit CVV.";
                lblCVVError.Visible = true;
                isValid = false;
            }
            else
            {
                lblCVVError.Visible = false;
            }

            if (!isValid)
            {
                return; 
            }

            try
            {
                string clientId = Session["Client_ID"] as string;
                if (string.IsNullOrEmpty(clientId))
                {
                    Response.Write("<script>alert('User is not logged in or session has expired. Please log in again.');</script>");
                    return; // This will stop further execution if the session is null or empty
                }

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString))
                {
                    conn.Open();
                    string sql = "INSERT INTO Purchase3 (Vehicle_ID, Client_ID, Payment_Type, Payment_Mode, No_Installments, Final_Price) " +
                                 "VALUES (@Vehicle_ID, @Client_ID, @Payment_Type, @Payment_Mode, @No_Installments, @Final_Price)";

                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        // Ensure that all data are fetched correctly
                        cmd.Parameters.AddWithValue("@Vehicle_ID", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Client_ID", clientId);
                        cmd.Parameters.AddWithValue("@Payment_Type", DropDownList1.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@Payment_Mode", DropDownList2.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@No_Installments", txtNumberOfMonths.Text);
                        cmd.Parameters.AddWithValue("@Final_Price", txtTotalPrice.Text);

                        cmd.ExecuteNonQuery();
                        int result = cmd.ExecuteNonQuery();
                        if (result == 0)
                        {
                            Response.Write("No rows inserted.");
                        }
                    }
                }
                Response.Write("<script>alert('Purchase Successful.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error during purchase: {ex.Message}');</script>");
            }
    }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CardDetailsPanel.Visible = DropDownList1.SelectedValue == "Card";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            InstallmentDetails.Visible = DropDownList2.SelectedValue == "Installments";
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {

            double interestRate;
            double Price = double.Parse(TextBox3.Text);
            double Installement = double.Parse(txtNumberOfMonths.Text);
            double monthinstallment = 0;
            double totalPrice = 0;

            if (Installement <= 12)
            {
                interestRate = 0.025;
                monthinstallment = (Price / Installement) + (interestRate * Price / Installement);
                totalPrice = Price + interestRate * Price;
            }
            else if (Installement <= 24)
            {
                interestRate = 0.039;
                monthinstallment = (Price / Installement) + (interestRate * Price / Installement);
                totalPrice = Price + interestRate * Price;
            }
            else
            {
                // Handle cases where the installment number is invalid
                lblError.Text = "Maximum Installment period is 24 Months.";
                lblError.Visible = true;
                return;

            }
            txtTotalPrice.Text = totalPrice.ToString("F2");
            txtMonthlyPayment.Text = monthinstallment.ToString("F2");

        }
    }
 }


