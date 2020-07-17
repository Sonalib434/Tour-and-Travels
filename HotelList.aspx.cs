using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourDemoBL;
using TourDemoDAL;
using TourDemoPL;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

public partial class HotelList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlHotel.Visible = false;
        if (!Page.IsPostBack)
        {
            BindGrid();
        }

    }
    private void BindGrid()
    {
        HotelBL hBL = new HotelBL();
        hBL.getHotelsData();
        gvHotelDetails.DataSource = hBL.getHotelsData();
        gvHotelDetails.DataBind();
    }

    protected void LbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in gvHotelDetails.Rows)
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
        HotelPL hPL = new HotelPL();
        foreach (GridViewRow gvrow in gvHotelDetails.Rows)
        {          
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                pnlHotel.Visible = true;
                btnAdd.Visible = false;
                btnAddHotel.Visible = false;
                btnUpdate.Visible = true;

                int ide = Convert.ToInt32(gvHotelDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                hPL.Id = ide;
                DataTable dt = new DataTable();
                HotelBL hBL = new HotelBL();
                dt=hBL.getHotelDatabyId(hPL);
                if (dt.Rows.Count > 0)
                {
                    txtName.Text = dt.Rows[0]["Name"].ToString();
                    txtLocation.Text = dt.Rows[0]["Location"].ToString();
                    txtCheckIn.Text = dt.Rows[0]["FromDate"].ToString();
                    txtCheckOut.Text = dt.Rows[0]["Todate"].ToString();
                    txtPrice.Text = dt.Rows[0]["Price"].ToString();
                }
            }            
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        HotelPL hPL = new HotelPL();
        foreach (GridViewRow gvrow in gvHotelDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                hPL.Id = Convert.ToInt32(gvHotelDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                HotelBL hBL = new HotelBL();
                hBL.deleteHotelbyId(hPL.Id);
            }
            BindGrid();
            lblmsg.Text = "Data Deleted Successfully..";
        }
    }
   
   
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
       

        
        string Name = txtName.Text;
        string Location = txtLocation.Text;
        DateTime FromDate =Convert.ToDateTime(txtCheckIn.Text);
        DateTime ToDate = Convert.ToDateTime(txtCheckOut.Text);
        double Price = Convert.ToDouble(txtPrice.Text);

        foreach (GridViewRow gvrow in gvHotelDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                btnAdd.Visible = false;
                btnAddHotel.Visible = false;

                int ide = Convert.ToInt32(gvHotelDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                HotelPL hPL = new HotelPL();
                hPL.Name = Name;
                hPL.Location = Location;
                hPL.FromDate = FromDate;
                hPL.ToDate = ToDate;
                hPL.Price = Price;
                hPL.Id = ide;

                HotelBL hBL = new HotelBL();
                hBL.updateHotelData(hPL);
                BindGrid();

                lblhotel.Text = "Data Updated Successfully..";
                lblmsg.Text = "Hotel Updated Successfully..";
            }
        }
    }
    
    protected void btnAddHotel_Click(object sender, EventArgs e)
    {
        pnlHotel.Visible = true;
        btnUpdate.Visible = false;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        pnlHotel.Visible = true;
        btnUpdate.Visible = false;
        btnAddHotel.Visible = false;
        HotelPL hPL = new HotelPL();
        hPL.Name = txtName.Text.Trim();
        hPL.Location = txtLocation.Text.Trim();
        hPL.FromDate = Convert.ToDateTime(txtCheckIn.Text.Trim());
        hPL.ToDate = Convert.ToDateTime(txtCheckOut.Text.Trim());
        hPL.Price = Convert.ToDouble(txtPrice.Text.Trim());

        HotelBL hBL = new HotelBL();
        hBL.saveHotelsData(hPL);
        lblmsg.Text = "Hotel Added Successfully..";
        lblhotel.Text="Data have been saved successfully...";
        BindGrid();
    }

    
}