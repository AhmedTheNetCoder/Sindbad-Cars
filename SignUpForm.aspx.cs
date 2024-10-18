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
    public partial class SignUpForm : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
                
            }
            else
            {
                SignUpNewUser();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login To Login');</script>");
            }
            
        }
        
            bool checkMemberExists()
        {
            try
            {
                SqlConnection SindbadCarsDB = new SqlConnection(strcon);
                SindbadCarsDB.Open();

                SqlCommand cmd = new SqlCommand("SELECT * from Client where Client_ID='"+ TextBox8.Text.Trim() +"';", SindbadCarsDB);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    SindbadCarsDB.Close();
                    return true;
                }
                else
                {
                    return false;
                }
                
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }

        void SignUpNewUser()
        {
            try
            {
                SqlConnection SindbadCarsDB = new SqlConnection(strcon);
                SindbadCarsDB.Open();
 
                SqlCommand cmd = new SqlCommand("INSERT INTO Client(Client_ID,Client_Forename,Client_Surname,Client_Address_Line1,Client_Address_Line2,Town,PostCODE,Email_Address,Phone_No,Mobile_No,Client_Password) " +
                    "values (@Client_ID,@Client_Forename,@Client_Surname,@Client_Address_Line1,@Client_Address_Line2,@Town,@Postcode,@Email_Address,@Phone_No,@Mobile_No,@Client_Password)", SindbadCarsDB);
                cmd.Parameters.AddWithValue("@Client_ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Client_Password", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@Client_Forename", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Client_Surname", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Client_Address_Line1", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Client_Address_Line2", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@Town", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Postcode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_Address", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_No", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Mobile_No", TextBox12.Text.Trim());

                cmd.ExecuteNonQuery();
                SindbadCarsDB.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login To Login');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}