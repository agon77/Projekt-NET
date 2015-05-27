using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Text;

namespace LabNET01.Pages
{
    public partial class UserManagePage : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["Username"].DefaultValue = User.Identity.Name; 
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.IsInRole("Niezalogowany") || !(Context.User.Identity.IsAuthenticated))
            {
                HideNiezalogowany();
                return;
            }
            if (Context.User.IsInRole("Zalogowany"))
            {
                HideModeratorZalogowany();
                return;
            }
            if (Context.User.IsInRole("Moderator"))
            {
                HideModeratorZalogowany();
                return;
            }
            if (Context.User.IsInRole("Administrator"))
            {
                HideAdministrator();
                return;
            }
        }

        protected void HideAdministrator()
        {
            edit_own_data_users.Visible = false;
        }

        protected void HideModeratorZalogowany()
        {
            admin_view_users.Visible = false;
        }

        protected void HideNiezalogowany()
        {
            Response.Write("Jesteś niezalogowany! <br /> <a href='LoginPage.aspx'> Zaloguj się </a>");
            all_page.Visible = false;
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            Membership.DeleteUser(DropDownList1.SelectedItem.Value, true);
            Response.Redirect(Request.RawUrl);
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            Membership.CreateUser(insert_username.Text,insert_password.Text, insert_email.Text);
            Response.Redirect(Request.RawUrl);
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            MembershipUser mem = Membership.GetUser(DropDownList2.SelectedItem.Value);
            Roles.AddUserToRole(mem.UserName, insert_role.Text);
            mem.Email = update_email.Text;
            mem.ChangePassword(mem.GetPassword(), update_password.Text);
            Membership.UpdateUser(mem);
            Response.Redirect(Request.RawUrl);
        }

    }

}


