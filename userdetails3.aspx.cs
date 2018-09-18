using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userdetails3 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["UDConnectionString1"].ConnectionString;
    DataTable sqlDt1 = new DataTable();
    DataTable sqlDt2 = new DataTable();
    DataTable sqlDt3 = new DataTable();
    int UserID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["UserID"] != null && Convert.ToString(Request.QueryString["UserID"]) != "")
        {
            UserID = Convert.ToInt32(Request.QueryString["UserID"]);
            bindUserDetails(); bindUserSpouseChild(); bindUserSpouseParent();
        }
    }

    protected void bindUserDetails()
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tbl_User u inner join UserSpouseDetails USD on u.UserID = usd.UserID where u.UserID=@UserID"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Connection = con;
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                sqlDa.Fill(sqlDt1);
                con.Close();
                if (sqlDt1.Rows.Count > 0)
                {
                    txtName.Text = Convert.ToString(sqlDt1.Rows[0]["FirstName"]);
                    txtMiddleName.Text = Convert.ToString(sqlDt1.Rows[0]["MiddleName"]);
                    txtLastName.Text = Convert.ToString(sqlDt1.Rows[0]["LastName"]);
                    txtUserDOB.Text = Convert.ToString(sqlDt1.Rows[0]["DOB"]);
                    txtAge.Text = Convert.ToString(sqlDt1.Rows[0]["Age"]);
                    txtDepartment.Text = Convert.ToString(sqlDt1.Rows[0]["DeptName"]);
                    txtDOJ.Text = Convert.ToString(sqlDt1.Rows[0]["DOJ"]);
                    txtGrossSalary.Text = Convert.ToString(sqlDt1.Rows[0]["GSalary"]);
                    txtTax.Text = Convert.ToString(sqlDt1.Rows[0]["Tax"]);
                    txtNetSalary.Text = Convert.ToString(sqlDt1.Rows[0]["NetSalary"]);


                    txtSpouseName.Text = Convert.ToString(sqlDt1.Rows[0]["SpouseName"]);
                    txtSpouseDOB.Text = Convert.ToString(sqlDt1.Rows[0]["SpouseDOB"]);
                    txtSpouseAge.Text = Convert.ToString(sqlDt1.Rows[0]["SpouseAge"]);
                }
            }
        }

    }

    protected void bindUserSpouseChild()
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tbl_User u inner join UserSpouseDetails USD on u.UserID = usd.UserID inner join SpouseChildDetails SCD ON USD.UserDeID=SCD.UserDelID where u.UserID=@UserID"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Connection = con;
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                sqlDa.Fill(sqlDt2);
                con.Close();
                GVSpouseChild.DataSource = sqlDt2;
                GVSpouseChild.DataBind();
            }
        }
    }

    protected void bindUserSpouseParent()
    {
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tbl_User u inner join UserSpouseDetails USD on u.UserID = usd.UserID INNER JOIN SpouseParentsDetails SPD ON USD.UserDeID=SPD.UserDeID where u.UserID=@UserID"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Connection = con;
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                sqlDa.Fill(sqlDt3);
                con.Close();
                GVSpouseParent.DataSource = sqlDt3;
                GVSpouseParent.DataBind();
            }
        }
    }



    protected void GVSpouseParent_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblgvTypeOfParent = (e.Row.FindControl("lblgvTypeOfParent") as Label);
            string Parent = lblgvTypeOfParent.Text;
            if (Parent=="1")
            {
                lblgvTypeOfParent.Text = "Father";
            }
            if (Parent == "2")
            {
                lblgvTypeOfParent.Text = "Mother";
            }
            if (Parent == "3")
            {
                lblgvTypeOfParent.Text = "Father-in-law";
            }
            if (Parent == "4")
            {
                lblgvTypeOfParent.Text = "Mother-in-law";
            }

        }
    }

    protected void GVSpouseChild_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
         

            Label lblgvChild = (e.Row.FindControl("lblgvChild") as Label);
            string child = lblgvChild.Text;
            lblgvChild.Text = "Child " + child;
        }
    }
}