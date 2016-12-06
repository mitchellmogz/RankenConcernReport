using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace RankenConcernReport
{
    public partial class _Default : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\mitch\\Source\\Repos\\RankenConcernReport\\ConcernReport\\RankenConcernReport\\RankenConcernReport\\App_Data\\ConcernReportDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("db_ins", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("FirstName", FirstName.Text);
            cmd.Parameters.AddWithValue("LastName", LastName.Text);
            cmd.Parameters.AddWithValue("PhoneNumber", Phone.Text);
            cmd.Parameters.AddWithValue("Email", Email.Text);
            cmd.Parameters.AddWithValue("Relationship", relationship.SelectedValue);
            cmd.Parameters.AddWithValue("InputDate", DateTime.Today.Date);
            cmd.Parameters.AddWithValue("Concern", Concern.Text);
            cmd.Parameters.AddWithValue("ConcernDetails", Details.Text);
            cmd.Parameters.AddWithValue("ConcernMade", concernMade.SelectedValue);
            cmd.Parameters.AddWithValue("FollowUp", followUp.SelectedValue);

            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}