using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabNET01.Pages
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //tworzenie nowych uzytkownikow            
            /*Membership.CreateUser("agon77", ".net12345", "agon77@o2.pl"); // alt + shift + f10 do importowania usingow
            Membership.CreateUser("asia93", ".net12345", "joanna.kasinska@gmail.com");
            Membership.CreateUser("luki12", ".net12345", "luki12@gmail.com");
            Membership.CreateUser("kamcio123", ".net12345", "kamcio123@gmail.com");
            Membership.CreateUser("gosc11", ".gosc12345", "gosc11@gmail.com");
            Membership.CreateUser("gosc22", ".gosc12345", "gosc22@gmail.com");
            Membership.CreateUser("zalogowany11", ".zalogowany12345", "zalogowany11@gmail.com");
            Membership.CreateUser("zalogowany22", ".zalogowany12345", "zalogowany22@gmail.com");*/

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if(User.Identity.IsAuthenticated)
                Response.Redirect(String.Format("HomePage.aspx"))
        }
    }
}