using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userdetails : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["UDConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // bindDept();
            //bindTax();
            BindXmlDepartment(); BindXmlTax();
        }
    }

    protected void txtUserDOB_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(txtUserDOB.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        txtAge.Text = Convert.ToString(age);

    }


    private void BindXmlDepartment()
    {
        string filePath = Server.MapPath("~/App_Data/Department.xml");
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(filePath);
            ddlDepartment.DataSource = ds;
            ddlDepartment.DataTextField = "DeptName";
            ddlDepartment.DataValueField = "DeptID";
            ddlDepartment.DataBind();
            ddlDepartment.Items.Insert(0, new ListItem("--Select Department--", "0"));
        }
    }

    private void BindXmlTax()
    {
        string filePath = Server.MapPath("~/App_Data/Tax.xml");
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(filePath);
            ddlTax.DataSource = ds;
            ddlTax.DataTextField = "Name";
            ddlTax.DataValueField = "ID";
            ddlTax.DataBind();
            ddlTax.Items.Insert(0, new ListItem("--Select Tax--", "0"));
        }
    }

    protected void bindDept()
    {

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select * from DeptMaster"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                ddlDepartment.DataSource = cmd.ExecuteReader();
                ddlDepartment.DataTextField = "DeptName";
                ddlDepartment.DataValueField = "DeptID";
                ddlDepartment.DataBind();
                con.Close();
            }
        }
        ddlDepartment.Items.Insert(0, new ListItem("--Select Department--", "0"));
    }
    protected void bindTax()
    {

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select * from TaxMaster"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                ddlTax.DataSource = cmd.ExecuteReader();
                ddlTax.DataTextField = "TaxName";
                ddlTax.DataValueField = "TaxID";
                ddlTax.DataBind();
                con.Close();
            }
        }
        ddlTax.Items.Insert(0, new ListItem("--Select Tax--", "0"));
    }


    [WebMethod]
    public static void SaveUser(string FirstName, string MiddleName, string LastName, string DOB, string Age, string DeptID, string DOJ, string GSalary, string TaxID, string NetSalary)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO tbl_User(FirstName,MiddleName,LastName,DOB,Age,DeptID,DOJ,GSalary,TaxID,NetSalary)values(@FirstName,@MiddleName,@LastName,@DOB,@Age,@DeptID,@DOJ,@GSalary,@TaxID,@NetSalary)"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@MiddleName", MiddleName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@DOB", DOB);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@DeptID", DeptID);
                cmd.Parameters.AddWithValue("@DOJ", DOJ);
                cmd.Parameters.AddWithValue("@GSalary", GSalary);
                cmd.Parameters.AddWithValue("@TaxID", TaxID);
                cmd.Parameters.AddWithValue("@NetSalary", NetSalary);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }



    protected void ddlTax_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlTax.Text != "")
        {

            int value = Convert.ToInt32(txtGrossSalary.Text);
            double percent = Convert.ToDouble(ddlTax.SelectedItem.Text);
            txtNetSalary.Text = ((value * percent) / 100 + value).ToString();


            //decimal NSalary = Convert.ToDecimal(txtGrossSalary.Text) + Convert.ToDecimal(ddlTax.SelectedItem.Text);
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(constr))
        {

            using (SqlCommand cmd = new SqlCommand("sp_InsertUser"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName", txtName.Text);
                cmd.Parameters.AddWithValue("@MiddleName", txtMiddleName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@DOB", txtUserDOB.Text);
                cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                cmd.Parameters.AddWithValue("@DeptID", ddlDepartment.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@DOJ", txtDOJ.Text);
                cmd.Parameters.AddWithValue("@GSalary", txtGrossSalary.Text);
                cmd.Parameters.AddWithValue("@TaxID", ddlTax.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@NetSalary", txtNetSalary.Text);
                cmd.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                con.Open();
                int Result = cmd.ExecuteNonQuery();
                string id = cmd.Parameters["@id"].Value.ToString();
                con.Close();

                if (Result > 0)
                {
                    Response.Redirect("userdetails2.aspx?UserID=" + id);
                }
            }
        }
    }
}