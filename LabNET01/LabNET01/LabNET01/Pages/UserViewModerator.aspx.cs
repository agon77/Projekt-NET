using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabNET01.Pages
{
    public partial class UserViewModerator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["Username"].DefaultValue = User.Identity.Name; 
        }

        protected void Update_Password_Click(object sender, EventArgs e)
        {
            MembershipUser mem = Membership.GetUser(User.Identity.Name);
            mem.ChangePassword(mem.GetPassword(), update_password.Text);
            Membership.UpdateUser(mem);
            Response.Redirect(Request.RawUrl);
        }

        protected void Update_Email_Click(object sender, EventArgs e)
        {
            MembershipUser mem = Membership.GetUser(User.Identity.Name);
            mem.Email = update_email.Text;
            Membership.UpdateUser(mem);
            Response.Redirect(Request.RawUrl);
        }
    }
}