using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userdetails2 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["UDConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtUserDOB_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(txtUserDOB.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        txtAge.Text = Convert.ToString(age);

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (chk1.Checked == true)
        {
            insertChild("Child", "1", txtChildName1.Text, txtDOB1.Text, ddlRelation1.SelectedItem.Text, "", "", "", "");
        }
        if (chk2.Checked == true)
        {
            insertChild("Child", "2", txtChildName2.Text, txtDOB2.Text, ddlRelation2.SelectedItem.Text, "", "", "", "");
        }
        if (chk3.Checked == true)
        {
            insertChild("Child", "3", txtChildName3.Text, txtDOB3.Text, ddlRelation3.SelectedItem.Text, "", "", "", "");
        }
        if (chk4.Checked == true)
        {
            insertChild("Child", "4", txtChildName4.Text, txtDOB4.Text, ddlRelation4.SelectedItem.Text, "", "", "", "");
        }

        if (chk5.Checked == true)
        {
            insertChild("Parent", "", "", "", "", "1", TextBox1.Text, TextBox2.Text, TextBox9.Text);
        }

        if (chk6.Checked == true)
        {
            insertChild("Parent", "", "", "", "", "2", TextBox3.Text, TextBox4.Text, TextBox10.Text);
        }
        if (chk7.Checked == true)
        {
            insertChild("Parent", "", "", "", "", "3", TextBox5.Text, TextBox6.Text, TextBox11.Text);
        }
        if (chk8.Checked == true)
        {
            insertChild("Parent", "", "", "", "", "4", TextBox7.Text, TextBox8.Text, TextBox12.Text);
        }

        Response.Redirect("userdetails3.aspx?UserID=" + Convert.ToInt32(Request.QueryString["UserID"]));
    }

    protected void chk1_CheckedChanged(object sender, EventArgs e)
    {
        if (chk1.Checked == true)
        {
            txtChildName1.Enabled = true;
            txtDOB1.Enabled = true;
            ddlRelation1.Enabled = true;
        }
        else
        {
            txtChildName1.Enabled = false;
            txtDOB1.Enabled = false;
            ddlRelation1.Enabled = false;

            txtChildName1.Text = "";
            txtDOB1.Text = "";
            ddlRelation1.SelectedIndex = 0;
        }


    }

    protected void chk2_CheckedChanged(object sender, EventArgs e)
    {
        if (chk2.Checked == true)
        {
            txtChildName2.Enabled = true;
            txtDOB2.Enabled = true;
            ddlRelation2.Enabled = true;
        }
        else
        {
            txtChildName2.Enabled = false;
            txtDOB2.Enabled = false;
            ddlRelation2.Enabled = false;

            txtChildName2.Text = "";
            txtDOB2.Text = "";
            ddlRelation2.SelectedIndex = 0;
        }
    }

    protected void chk3_CheckedChanged(object sender, EventArgs e)
    {
        if (chk3.Checked == true)
        {
            txtChildName3.Enabled = true;
            txtDOB3.Enabled = true;
            ddlRelation3.Enabled = true;
        }
        else
        {
            txtChildName3.Enabled = false;
            txtDOB3.Enabled = false;
            ddlRelation3.Enabled = false;

            txtChildName3.Text = "";
            txtDOB3.Text = "";
            ddlRelation3.SelectedIndex = 0;
        }
    }

    protected void chk4_CheckedChanged(object sender, EventArgs e)
    {
        if (chk4.Checked == true)
        {
            txtChildName4.Enabled = true;
            txtDOB4.Enabled = true;
            ddlRelation4.Enabled = true;
        }
        else
        {
            txtChildName4.Enabled = false;
            txtDOB4.Enabled = false;
            ddlRelation4.Enabled = false;

            txtChildName4.Text = "";
            txtDOB4.Text = "";
            ddlRelation4.SelectedIndex = 0;
        }
    }

    protected void chk5_CheckedChanged(object sender, EventArgs e)
    {
        if (chk5.Checked == true)
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;

            chk7.Enabled = false;
            chk8.Enabled = false;
        }
        else
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;

            chk7.Enabled = true;
            chk8.Enabled = true;

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(TextBox2.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        TextBox9.Text = Convert.ToString(age);
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(TextBox4.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        TextBox10.Text = Convert.ToString(age);
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(TextBox6.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        TextBox11.Text = Convert.ToString(age);
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(TextBox7.Text);
        TimeSpan tm = (DateTime.Now - dob);
        int age = (tm.Days / 365);
        TextBox12.Text = Convert.ToString(age);
    }

    protected void chk6_CheckedChanged(object sender, EventArgs e)
    {
        if (chk6.Checked == true)
        {
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;

            chk7.Enabled = false;
            chk8.Enabled = false;
        }
        else
        {
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;

            chk7.Enabled = true;
            chk8.Enabled = true;

            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }

    protected void chk7_CheckedChanged(object sender, EventArgs e)
    {
        if (chk7.Checked == true)
        {
            TextBox5.Enabled = true;
            TextBox6.Enabled = true;

            chk5.Enabled = false;
            chk6.Enabled = false;
        }
        else
        {
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;

            chk5.Enabled = true;
            chk6.Enabled = true;

            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }

    protected void chk8_CheckedChanged(object sender, EventArgs e)
    {
        if (chk7.Checked == true)
        {
            TextBox7.Enabled = true;
            TextBox8.Enabled = true;

            chk5.Enabled = false;
            chk6.Enabled = false;
        }
        else
        {
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;

            chk5.Enabled = true;
            chk6.Enabled = true;

            TextBox7.Text = "";
            TextBox8.Text = "";
        }
    }

    protected void insertChild(string flag, string Type, string ChildName, string ChildDOB, string Relation, string TypeOfParent, string ParentName, string ParentDOB, string ParentAge)
    {
        int UserID = Convert.ToInt32(Request.QueryString["UserID"]);
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("sp_UserSpouseDetails"))
            {
                if (ViewState["UserDelID"] == null && Convert.ToString(ViewState["UserDelID"]) == "")
                {
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    cmd.Parameters.AddWithValue("@SpouseName", txtSpouseName.Text.Trim());
                    cmd.Parameters.AddWithValue("@SpouseDOB", txtUserDOB.Text.Trim());
                    cmd.Parameters.AddWithValue("@Age", txtAge.Text.Trim());
                    cmd.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    con.Open();
                    int Result = cmd.ExecuteNonQuery();
                    string id = cmd.Parameters["@id"].Value.ToString(); ViewState["UserDelID"] = id;
                    con.Close();
                }

                if (ViewState["UserDelID"] != null && Convert.ToString(ViewState["UserDelID"]) != "")
                {
                    if (flag == "Child")
                    {
                        using (SqlCommand cmd1 = new SqlCommand("insert into SpouseChildDetails(UserDelID,Type,ChildName,ChildDOB,Relation)values(@UserDelID,@Type,@ChildName,@ChildDOB,@Relation)"))
                        {
                            cmd1.CommandType = CommandType.Text;
                            cmd1.Parameters.AddWithValue("@UserDelID", Convert.ToInt32(ViewState["UserDelID"]));
                            cmd1.Parameters.AddWithValue("@Type", Type);
                            cmd1.Parameters.AddWithValue("@ChildName", ChildName);
                            cmd1.Parameters.AddWithValue("@ChildDOB", ChildDOB);
                            cmd1.Parameters.AddWithValue("@Relation", Relation);
                            cmd1.Connection = con;
                            con.Open();
                            cmd1.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                    if (flag == "Parent")
                    {
                        using (SqlCommand cmd2 = new SqlCommand("insert into SpouseParentsDetails(UserDeID,TypeOfParent,ParentName,ParentDOB,ParentAge)values(@UserDelID,@TypeOfParent,@ParentName,@ParentDOB,@ParentAge)"))
                        {
                            cmd2.CommandType = CommandType.Text;
                            cmd2.Parameters.AddWithValue("@UserDelID", Convert.ToInt32(ViewState["UserDelID"]));
                            cmd2.Parameters.AddWithValue("@TypeOfParent", TypeOfParent);
                            cmd2.Parameters.AddWithValue("@ParentName", ParentName);
                            cmd2.Parameters.AddWithValue("@ParentDOB", ParentDOB);
                            cmd2.Parameters.AddWithValue("@ParentAge", ParentAge);
                            cmd2.Connection = con;
                            con.Open();
                            cmd2.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                }
            }


        }
    }
}