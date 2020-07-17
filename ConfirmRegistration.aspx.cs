using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using TourDemoPL;
using TourDemoBL;
using TourDemoDAL;

public partial class ConfirmRegistration : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
        PageBind();
    }
    public void PageBind()
    {
  
        DatabaseConnection dbcon = new DatabaseConnection();
        Hashtable ht = new Hashtable();
        ht.Add("@Id",Session["ID"].ToString());        
        RegistrationBL rBL = new RegistrationBL();
        DataTable dt = dbcon.getData("getRegisterDataByEmail", ht);
        GridView1.DataSource = dt;
        GridView1.DataBind();
       
    }
   
}