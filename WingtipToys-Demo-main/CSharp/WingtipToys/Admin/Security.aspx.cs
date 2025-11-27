using System;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace WingtipToys.Admin
{
    public partial class Security : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // BOTÓN 1 – HACER ADMIN (usa TextBox1 y Label1)
        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text.Trim();

            if (Membership.GetUser(user) != null)
            {
                Roles.AddUserToRole(user, "canEdit");
                Label1.Text = $"El usuario {user} ahora es administrador (canEdit).";
            }
            else
            {
                Label1.Text = "El usuario no existe.";
            }
        }

        // BOTÓN 2 – ASIGNAR ROL (usa txtUser y lblStatus)
        protected void btnAddToRole_Click(object sender, EventArgs e)
        {
            string user = txtUser.Text.Trim();

            if (Membership.GetUser(user) != null)
            {
                Roles.AddUserToRole(user, "canEdit");
                lblStatus.Text = $"Usuario {user} ahora es administrador (canEdit).";
            }
            else
            {
                lblStatus.Text = "El usuario no existe.";
            }
        }
    }
}