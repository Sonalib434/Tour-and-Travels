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

public partial class Login : System.Web.UI.Page
{
    UserRegistrationBL urBL = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    public void btnlogin_Click(object sender, EventArgs e)
    {
        login();    
    }
    public void login()
    {
        string strName=txtEmail.Text.Trim();
        bool isVal = urBL.login(txtEmail.Text.Trim(), txtPass.Text.Trim(),out strName);
        if (isVal)
        {
            Session["ID"] = strName;

            Response.Redirect("BookingDetails.aspx");
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Invalid UserName or Password...";
            txtEmail.Text = "";
            txtPass.Text = "";
        }
    }
}
