using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Sindbad_Cars
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
                BindClientGrid();
                BindModelGrid();
                BindVehicleGrid();
            }
        }
        private void BindData()
        {
            string connString = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT Purchase_ID, Vehicle_ID, Client_ID, Payment_Type, Payment_Mode, No_Installments, Final_Price FROM Purchase3";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        private void BindClientGrid()
        {
            string connString = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT * FROM Client";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridViewClients.DataSource = dt;
                        GridViewClients.DataBind();
                    }
                }
            }
        }
        private void BindModelGrid()
        {
            string connString = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT * FROM Model";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridViewModels.DataSource = dt;
                        GridViewModels.DataBind();
                    }
                }
            }
        }
        private void BindVehicleGrid()
        {
            string connString = ConfigurationManager.ConnectionStrings["SindbadCarsDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT * FROM Vehicle";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridViewVehicles.DataSource = dt;
                        GridViewVehicles.DataBind();
                    }
                }
            }
        }



    }
}