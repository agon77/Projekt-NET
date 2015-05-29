using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabNET01.Pages.Admin
{
    public partial class ProductsViewAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            Response.Redirect(Request.RawUrl); //przeladowuje strone
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            Response.Redirect(Request.RawUrl);
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            Response.Redirect(Request.RawUrl);
        }

        protected void Return_Page(object sender, EventArgs e)
        {
            string strPath = Request.UrlReferrer.AbsoluteUri;
	        Response.Redirect(strPath);
        }
    }
}
