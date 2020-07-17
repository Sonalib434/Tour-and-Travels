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


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        RegistrationPL rPL = new RegistrationPL();
        rPL.Name = txtName.Text;
        rPL.Address = txtAdd.Text;
        rPL.State = DropDownListState.SelectedValue.ToString();
        rPL.City = DropDownListCity.SelectedValue.ToString();
        rPL.Phone = txtPhone.Text;
        rPL.Email = txtEmail.Text;
        rPL.Password = txtPass.Text;
        rPL.Age = Convert.ToInt32(txtAge.Text);
        rPL.Gender = RadioButtonListGender.SelectedValue.ToString();

        RegistrationBL rBL = new RegistrationBL();
        rBL.saveRegistrationData(rPL);
        lblmsg.Text = "Your Details have been saved successfully...";
        ConfirmRegistration();
        
    }
    public void ConfirmRegistration()
    {
        RegistrationBL rBL = new RegistrationBL();
        string strEmail = txtEmail.Text.Trim();
        Session["ID"] = strEmail;
        Response.Redirect("ConfirmRegistration.aspx");        
    }
}