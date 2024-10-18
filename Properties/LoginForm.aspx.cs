using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.Entity;

namespace Sindbad_Cars
{
    public partial class LoginForm : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidateCredentials();
        }

        private void ValidateCredentials()
        {
            bool isValid = true;
            lblUserIdError.Visible = false;
            lblPasswordError.Visible = false;

            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                lblUserIdError.Visible = true;
                lblUserIdError.Text = "User ID cannot be empty.";
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                lblPasswordError.Visible = true;
                lblPasswordError.Text = "Password cannot be empty.";
                isValid = false;
            }

            if (isValid)
            {
                // Proceed to check credentials against the database
                CheckDatabaseCredentials();
            }
        }

        private void CheckDatabaseCredentials()
        {
            try
            {
                using (SqlConnection SindbadCarsDB = new SqlConnection(strcon))
                {
                    SindbadCarsDB.Open();
                    string sql = "SELECT Client_ID, Client_Forename, Client_Surname FROM Client WHERE Client_ID = @ClientID AND Client_Password = @Password";
                    using (SqlCommand cmd = new SqlCommand(sql, SindbadCarsDB))
                    {
                        cmd.Parameters.AddWithValue("@ClientID", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    Session["Client_ID"] = reader["Client_ID"].ToString();
                                    Session["firstname"] = reader["Client_Forename"].ToString();
                                    Session["lastname"] = reader["Client_Surname"].ToString();
                                }
                                Response.Redirect("Index.aspx");
                            }
                            else
                            {
                                lblUserIdError.Visible = true;
                                lblUserIdError.Text = "Invalid User ID or Password.";
                                lblPasswordError.Visible = true;
                                lblPasswordError.Text = "Invalid User ID or Password.";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception, consider using logging frameworks like log4net or NLog
                Response.Write("<script>alert('An error occurred. Please try again later.');</script>");
                // For development purposes, you might want to print the stack trace: ex.ToString()
            }
        }
    }
}