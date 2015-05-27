using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabNET01.Pages
{
    public partial class ProductsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.IsInRole("Niezalogowany") || !(Context.User.Identity.IsAuthenticated))
            {
                HideNiezalogowany();
                return;
            }
            if (Context.User.IsInRole("Zalogowany"))
            {
                HideZalogowany();
                return;
            }
            if (Context.User.IsInRole("Moderator"))
            {
                HideModerator();
                return;
            }

            /*HttpCookie cookie = Request.Cookies["CookieCookie1"];

            if(cookie == null)
            {
                cookie = new HttpCookie("CookieCooki1");
                cookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(cookie);
                   //cookie.Values.Add();
            }*/


        }

       
            //string connStr = ConfigurationManager.ConnectionStrings["ProductsConnectionString"].ConnectionString;

            //SqlConnection conn = new SqlConnection(connStr);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = "SELECT * FROM PRODUCTS";
            //string choose = DropDownList1.SelectedValue;
            //string item = TextBox2.Text;
            //command.CommandText = "UPDATE PRODUCTS SET Name = "+item+" WHERE Id = "+choose;
            //command.Connection = conn;

            //SqlDataReader reader;

            //conn.Open();
            //reader = command.ExecuteReader();
            //command.ExecuteNonQuery();

            /*if (reader.HasRows)
            {
                // jeśli byśmy nie mieli przypiętych danych do GridView:
                //GridView1.DataSource = reader;
                //GridView1.DataBind();

                while (reader.Read())
                {
                    System.Diagnostics.Debug.WriteLine(reader["Name"]);
                }
            }*/
            
            //conn.Close();
        
        protected void HideModerator()
        {   
            delete_box.Visible = false;
            insert_box.Visible = false;
        }

        protected void HideZalogowany()
        {
            delete_box.Visible = false;
            insert_box.Visible = false;
            update_box.Visible = false;
        }

        protected void HideNiezalogowany()
        {
            Response.Write("Jesteś niezalogowany! <br /> <a href='LoginPage.aspx'> Zaloguj się </a>");
            ContentPlaceHolder myContent = (ContentPlaceHolder)Page.Master.FindControl("ContentPlaceHolder1");
            myContent.Visible = false;
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Delete();
            Response.Redirect(Request.RawUrl); //przeladowuje strone
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
            Response.Redirect(Request.RawUrl);
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
            Response.Redirect(Request.RawUrl);
        }
    }

}