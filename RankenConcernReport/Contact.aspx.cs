using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RankenConcernReport
{
    public partial class Contact : Page
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
            string queryString = ("SELECT MAX(ConcernID) FROM [User]");

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\mitch\\Source\\Repos\\RankenConcernReport\\ConcernReport\\RankenConcernReport\\RankenConcernReport\\App_Data\\ConcernReportDatabase.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                SqlCommand command = new SqlCommand(
                    queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                try
                {
                    while (reader.Read())
                    {
                        lblConcernID.Text = reader[0].ToString();
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
            }

            var dateAndTime = DateTime.Now;
            var date = dateAndTime.Date;

            lblInputDate.Text = date.AddDays(15).ToString("MM/dd/yyyy");
            
        }



        private void rep_bind()
        {
            connection();
            string query = "select ConcernID from [User] where ConcernID like";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            //gvDatabase.DataSource = ds;
            //gvDatabase.DataSourceID = String.Empty;
           // gvDatabase.DataBind();
        }

    }
}