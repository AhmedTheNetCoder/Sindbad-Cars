using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sindbad_Cars
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Checks if 'username' in session is null or empty
                if (string.IsNullOrEmpty(Session["Client_ID"] as string))
                {
                    LinkButton1.Visible = true;  // sign in
                    LinkButton2.Visible = true;  // sign up
                    LinkButton4.Visible = true; // admin page

                    LinkButton3.Visible = false; // log out
                    LinkButton7.Visible = false; // hello message
                }
                else
                {
                    LinkButton1.Visible = false; // sign in
                    LinkButton2.Visible = false; // sign up
                    LinkButton4.Visible = true; // admin page

                    LinkButton3.Visible = true;  // log out
                    LinkButton7.Visible = true;  // hello message
                    LinkButton7.Text = "Hello, " + Session["firstname"].ToString() + " " + Session["lastname"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpForm.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["firstname"] = "";
            Session["lastname"] = "";

            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton4.Visible = true; // admin page

            LinkButton3.Visible = false; //log out
            LinkButton7.Visible = false; //hello
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}