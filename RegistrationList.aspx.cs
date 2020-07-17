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

public partial class RegistrationList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlRegList.Visible = false;        
        if (!Page.IsPostBack)
        {
            BindGrid();
        }   
    }

    private void BindGrid()
    {
        RegistrationBL rBL = new RegistrationBL();
        rBL.getRegistrationData();
        gvRegDetails.DataSource = rBL.getRegistrationData();
        gvRegDetails.DataBind();
    }

    protected void LbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }



    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in gvRegDetails.Rows)
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
        RegistrationPL rPL = new RegistrationPL();
        foreach (GridViewRow gvrow in gvRegDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
                pnlRegList.Visible = true;
                rPL.RegistrationId = Convert.ToInt32(gvRegDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                RegistrationBL rBL = new RegistrationBL();
                rBL.registrationDataByRegid(rPL.RegistrationId);
            }
        }
        DatabaseConnection dbcon = new DatabaseConnection();
        Hashtable ht = new Hashtable();
        ht.Add("@Id", rPL.RegistrationId);
        DataTable dt = dbcon.getData("getRegisterDataByRegId", ht); ;
        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
            ddlCity.SelectedValue = dt.Rows[0]["City"].ToString();
            ddlState.SelectedValue = dt.Rows[0]["State"].ToString();
            txtPhone.Text = dt.Rows[0]["Phone"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtAge.Text = dt.Rows[0]["Age"].ToString();
            RadioButtonListGender.SelectedValue = dt.Rows[0]["Gender"].ToString();
            txtPass.Text = dt.Rows[0]["Password"].ToString();
        }
        BindGrid();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        RegistrationPL rPL = new RegistrationPL();
        foreach (GridViewRow gvrow in gvRegDetails.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)gvrow.FindControl("CheckBox1");
            if (CheckBox1.Checked == true)
            {
               
                rPL.RegistrationId = Convert.ToInt32(gvRegDetails.DataKeys[gvrow.RowIndex].Value.ToString());
                RegistrationBL rBL = new RegistrationBL();
                rBL.deleteRegistration(rPL.RegistrationId);
            }
            BindGrid();
            lblmsg.Text = "Data Deleted Successfully..";
        }
        
        
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        RegistrationPL rPL = new RegistrationPL();
        rPL.Name = txtName.Text;
        rPL.Address = txtAddress.Text;
        rPL.City = ddlCity.SelectedValue.ToString();
        rPL.State = ddlState.SelectedValue.ToString();
        rPL.Phone = txtPhone.Text;
        rPL.Email = txtEmail.Text;
        rPL.Age =Convert.ToInt32( txtAge.Text);
        rPL.Gender = RadioButtonListGender.SelectedValue.ToString();
        rPL.Password = txtPass.Text;
        
        
        RegistrationBL rBL = new RegistrationBL();
        rBL.saveRegistrationData(rPL);
            
        BindGrid();
        lblmsg.Text = "Registration Details Updated Successfully..";
        lblUpdate.Text = "Data Updated Successfully..";
    }
           
    protected void gvRegDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvRegDetails.PageIndex = e.NewPageIndex;
        RegistrationBL rBL = new RegistrationBL();
        rBL.getRegistrationData();
        gvRegDetails.DataSource = rBL.getRegistrationData();
        gvRegDetails.DataBind();
    }
   
}

    
