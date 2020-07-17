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


public partial class BookingConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageBind();
    }

    private void PageBind()
    {
        string s = Convert.ToString(Request.QueryString["Id"]);
        BookingBL bBL = new BookingBL();
        if (!String.IsNullOrEmpty(s))
        {
            DataTable dt = bBL.bookingConfirmationDetails(Convert.ToInt32(s));
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }      
    }
}