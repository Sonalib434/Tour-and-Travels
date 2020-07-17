using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
using TourDemoBL;
using TourDemoPL;

public partial class BookingDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlBooking.Visible = false;
        lblUserName.Text = "Welcome "+ Session["ID"].ToString();
        if (!Page.IsPostBack)
        {
            BindGrid();
        }   
    }

    private void BindGrid()
    {
        BookingBL bBL = new BookingBL();
        bBL.getBookingData();
        gvBooking.DataSource = bBL.getBookingData();
        gvBooking.DataBind();
    }

    protected void gvBooking_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvBooking.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    protected void LbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    protected void LbtnRegList_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistrationList.aspx");
    }
    protected void LbtnHotelList_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelList.aspx");
    }
    protected void LbtnPackageList_Click(object sender, EventArgs e)
    {
        Response.Redirect("PackageList.aspx");
    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in gvBooking.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                Button btnedit = (Button)gvrow.FindControl("btnEdit");
                Button btndelete = (Button)gvrow.FindControl("btnDelete");
            }
        }
    }
   

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        BookingPL bPL = new BookingPL();
        foreach (GridViewRow gvrow in gvBooking.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                int ide = Convert.ToInt32(gvBooking.DataKeys[gvrow.RowIndex].Value.ToString());
                DataTable dt = new DataTable();
                bPL.Id = ide;
                BookingBL bBL = new BookingBL();
                dt = bBL.getBookingbyId(bPL);
                if (dt.Rows.Count > 0)
                {
                    pnlBooking.Visible = true;
                    txtPackId.Text = dt.Rows[0]["PackageId"].ToString();
                    txtRegId.Text = dt.Rows[0]["RegistrationId"].ToString();
                    txtHotelid.Text = dt.Rows[0]["HotelId"].ToString();
                    txtBookingDate.Text = dt.Rows[0]["BookingDate"].ToString();
                    txtNumofPerson.Text = dt.Rows[0]["NoOfPreson"].ToString();
                    txtAmount.Text = dt.Rows[0]["Amount"].ToString();
                }
            }
        }        
    }
    
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        BookingPL bPL = new BookingPL();
        foreach (GridViewRow gvrow in gvBooking.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                pnlBooking.Visible = false;
                bPL.Id = Convert.ToInt32(gvBooking.DataKeys[gvrow.RowIndex].Value.ToString());
                BookingBL bBL = new BookingBL();
                bBL.deleteBooking(bPL.Id);
            }
        }
        BindGrid();
        lblmsg.Text = "Data Deleted Successfully..";
    }
       
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int packid = Convert.ToInt32(txtPackId.Text.Trim());
        int regid = Convert.ToInt32(txtRegId.Text.Trim());
        int hotelid = Convert.ToInt32(txtHotelid.Text.Trim());
        DateTime bookingdate = Convert.ToDateTime(txtBookingDate.Text.Trim());
        int noofperson = Convert.ToInt32(txtNumofPerson.Text.Trim());
        double amount = Convert.ToDouble(txtAmount.Text.Trim());
        foreach (GridViewRow gvrow in gvBooking.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                int ide = Convert.ToInt32(gvBooking.DataKeys[gvrow.RowIndex].Value.ToString());
                BookingPL bPL = new BookingPL();
                bPL.PackageId = packid;
                bPL.RegistrationId = regid;
                bPL.HotelId = hotelid;
                bPL.BookingDate = bookingdate;
                bPL.NoOfPerson = noofperson;
                bPL.Amount = amount;
                bPL.Id = ide;
                BookingBL bBL = new BookingBL();
                bBL.updateBookingData(bPL);
            }
            BindGrid();
            lblmsg.Text = "Data Updated Successfully..";
        }
    }
    
}
