using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

namespace RankenConcernReport
{

    public partial class About : Page
    {

        public SqlConnection con;
        public string constr;

        public void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["SearchConnectionString"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            //Label1.Visible = false;

        }



        private void rep_bind()
        {
            connection();
            string query = "select * from [User] where FirstName like'" + txtBoxSearch.Text + "%'";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvDatabase.DataSource = ds;
            gvDatabase.DataSourceID = String.Empty;
            gvDatabase.DataBind();
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            connection();
            string query = "select FirstName from [User] where FirstName like'" + txtBoxSearch.Text + "%'";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();

                rep_bind();
                gvDatabase.Visible = true;

                txtBoxSearch.Text = "";
               // Label1.Text = "";
            }
            else
            {
                gvDatabase.Visible = false;
              //  Label1.Visible = true;
              //  Label1.Text = "The search Term " + TextBox1.Text + " &nbsp;Is Not Available in the Records"; ;

            }



        }
    }
}