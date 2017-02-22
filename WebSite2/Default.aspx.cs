using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    static int book_id = 9561;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = Calendar1.SelectedDate.Day.ToString();
        FillQualifications();
                
    }

    private void FillQualifications()
    {
        string day = Calendar1.SelectedDate.DayOfWeek.ToString();
        TextBox2.Text = day;
        SqlCommand cmd = new SqlCommand("Select * from Bus where BusNo=(Select Distinct(BusNo) from Destination where Dest='"+DropDownList2.SelectedValue+"' and Days='"+TextBox2.Text+"')", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        dt.Columns.Add("All", typeof(string), "BusNo + ' -- -- ' + BusName + ' -- -- ' + Time + ' -- -- ' + Seats + ' seats -- -- Rs.' + Fare");
        rblQualification.DataSource = dt;
        rblQualification.DataTextField = "All";
        rblQualification.DataValueField = "BusNo";
        
        /*rblQualification.DataValueField = "BusNo";
        rblQualification.DataValueField = "BusNo";*/
        rblQualification.DataBind();
        con.Close();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //int seats=
        //con.Open();
        SqlCommand cmd1 = new SqlCommand("Insert into Passenger(BookID,BusNo,PassName,Seats,DOJ) Values('"+book_id+"','"+rblQualification.SelectedValue+"','"+TextBox1.Text+"','"+DropDownList3.SelectedValue+"','"+Calendar1.SelectedDate+"')",con);
        cmd1.Connection = con;
        //con.Open();
        cmd1.ExecuteNonQuery();
       // SqlCommand cmd2=new SqlCommand("Update into Bus Set ")
        con.Close();
        book_id++;
        Response.Redirect("Default2.aspx");
    }
}