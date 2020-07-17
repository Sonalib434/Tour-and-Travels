using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourDemoBL;
using TourDemoPL;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

public partial class PackageList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlPackage.Visible = false;
        if (!Page.IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        PackageBL pBL = new PackageBL();
        gvPackageDetails.DataSource = pBL.getPackageList();
        gvPackageDetails.DataBind();
    }
    protected void LbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in gvPackageDetails.Rows)
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
        PackagePL pPL = new PackagePL();
        foreach (GridViewRow gvrow in gvPackageDetails.Rows)
        {          
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                pnlPackage.Visible = true;
                int ide = Convert.ToInt32(gvPackageDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                DataTable dt = new DataTable();
                pPL.Id = ide;
                
                PackageBL pBL = new PackageBL();
                dt= pBL.getPackagebyId(pPL);
                if (dt.Rows.Count > 0)
                {
                    
                    btnAdd.Visible = false;
                    btnAddDetails.Visible = false;
                    btnUpdate.Visible = true;

                    txtName.Text = dt.Rows[0]["Name"].ToString();
                    txtPickup.Text = dt.Rows[0]["PlaceForm"].ToString();
                    txtDrop.Text = dt.Rows[0]["PlaceTo"].ToString();
                    txtStartDate.Text = dt.Rows[0]["StartDate"].ToString();
                    txtEndDate.Text = dt.Rows[0]["EndDate"].ToString();
                    txtDuration.Text = dt.Rows[0]["Duration"].ToString();
                    txtPrice.Text = dt.Rows[0]["Price"].ToString();
                    txtDescription.Text = dt.Rows[0]["Description"].ToString();
                }
            }      
        }
    }
       
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        PackagePL pPL = new PackagePL();
        foreach (GridViewRow gvrow in gvPackageDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                pPL.Id = Convert.ToInt32(gvPackageDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                PackageBL pBL = new PackageBL();
                pBL.deletePackagebyId(pPL.Id);
            }
            BindGrid();
            lblmsg.Text = "Data Deleted Successfully..";
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string placeform = txtPickup.Text;
        string placeto = txtDrop.Text;
        DateTime startdate = Convert.ToDateTime(txtStartDate.Text);
        DateTime enddate = Convert.ToDateTime(txtEndDate.Text);
        string duration = txtDuration.Text;
        double price = Convert.ToDouble(txtPrice.Text);
        string desc = txtDescription.Text;

        foreach (GridViewRow gvrow in gvPackageDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                int ide = Convert.ToInt32(gvPackageDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                PackagePL pPL = new PackagePL();

                btnAdd.Visible = false;
                btnAddDetails.Visible = false;
                pPL.Name = name;
                pPL.PlaceForm = placeform;
                pPL.PlaceTo = placeto;
                pPL.StartDate = startdate;
                pPL.EndDate = enddate;
                pPL.Duration = duration;
                pPL.Price = price;
                pPL.Description = desc;
                pPL.Id = ide;

                PackageBL pBL = new PackageBL();
                pBL.updatePackageData(pPL);
                BindGrid();
                lblpack.Text = "Data Updated Successfully..";
                lblmsg.Text = "Package Updated Successfully..";
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        pnlPackage.Visible = true;
        btnUpdate.Visible = false;

    }

    protected void btnAddDetails_Click(object sender, EventArgs e)
    {
        pnlPackage.Visible = true;
        btnAdd.Visible = false;
        btnUpdate.Visible = false;
        PackagePL pPL = new PackagePL();
        pPL.Name = txtName.Text;
        pPL.PlaceForm = txtPickup.Text;
        pPL.PlaceTo = txtDrop.Text;
        pPL.StartDate = Convert.ToDateTime(txtStartDate.Text);
        pPL.EndDate = Convert.ToDateTime(txtEndDate.Text);
        pPL.Duration = txtDuration.Text;
        pPL.Price = Convert.ToDouble(txtPrice.Text);
        pPL.Description = txtDescription.Text;

        PackageBL pBL = new PackageBL();
        pBL.savePackageData(pPL);
        lblpack.Text = "Package Details have been saved successfully...";
            
        BindGrid();        
    }
}