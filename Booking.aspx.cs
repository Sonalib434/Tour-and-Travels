using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Collections;
using TourDemoBL;
using TourDemoPL;



public partial class Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookingPL bPL = new BookingPL();
        if (IsPostBack == false)
        {
            ddlvalue();
            ddlRegister();           
        }
    }   
   
    protected void btnBook_Click(object sender, EventArgs e)
    {
        string s = Convert.ToString(Request.QueryString["Id"]);
        BookingPL bPL = new BookingPL();
        if (!String.IsNullOrEmpty(s))
        {
            bPL.Id = Convert.ToInt32(s);
        }        
        bPL.RegistrationId = Convert.ToInt32(ddlReg.SelectedValue);
        bPL.BookingDate = Convert.ToDateTime(txtBookingDate.Text);
        bPL.NoOfPerson = Convert.ToInt32(txtNumofPerson.Text);
        bPL.PackageId = Convert.ToInt32(ddlPackage.SelectedValue);
        bPL.HotelId = Convert.ToInt32(ddlHotelName.SelectedValue);      
        bPL.Amount = Convert.ToDouble(txtAmount.Text.Trim());
        
        BookingBL bBL = new BookingBL();
        int rt = 0;        
        rt=bBL.SaveBookingData(bPL);

        lblmsg.Text = "Data Save Successfully..";
        Response.Redirect("BookingConfirmation.aspx?Id="+rt);             
    }

    protected void ddlvalue()
    {        
        BookingBL bBL = new BookingBL();
        DataTable dt = bBL.ddlvalue();
        ddlPackage.DataSource = dt;
        ddlPackage.DataTextField = "Name";
        ddlPackage.DataValueField = "Id";
        ddlPackage.DataBind();
        ddlPackage.Items.Insert(0, "...Select Package...");   
    }
    protected void ddlRegister()
    {
        BookingBL bBL = new BookingBL();
        DataTable dt = bBL.ddlRegistrationValue();
        ddlReg.DataSource = dt;
        ddlReg.DataTextField = "Name";
        ddlReg.DataValueField = "RegistrationId";
        ddlReg.DataBind();
        ddlReg.Items.Insert(0,"...Select Name...");
    }
    

    protected void ddlPackage_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(txtNumofPerson.Text))
        {
            int Pid = Convert.ToInt32(ddlPackage.SelectedValue);
            BookingBL bBL = new BookingBL();
            DataTable dt = bBL.ddlHotelvalues(Pid);
            ddlHotelName.DataSource = dt;
            ddlHotelName.DataTextField = "Name";
            ddlHotelName.DataValueField = "Id";
            ddlHotelName.DataBind();
            ddlHotelName.Items.Insert(0, "...Select Hotel...");
            txtPackagePrice.Text = Convert.ToString(dt.Rows[0]["Price"]);
            int noOfPerson = Convert.ToInt32(txtNumofPerson.Text);
            double packagePrice = Convert.ToDouble(txtPackagePrice.Text);
            txtAmount.Text = Convert.ToString(noOfPerson * packagePrice);
        }
        else
        {
            lblmsg.Text = "Please Enter No of Person";
        }
    }
   
        
   
}