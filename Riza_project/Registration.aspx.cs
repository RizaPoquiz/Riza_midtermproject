using System;
using System.Web.UI;

namespace Riza_project
{
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                string successScript = @"Swal.fire({
                    icon: 'success',
                    title: 'Registered Successfully!',
                    text: 'Welcome, " + txtFullName.Text + @"!',
                    confirmButtonColor: '#FF9F80'
                });";

                ScriptManager.RegisterStartupScript(this, GetType(), "SuccessMessage", successScript, true);
            }
            else
            {
                string errorScript = @"Swal.fire({
                    icon: 'error',
                    title: 'Error!',
                    text: 'Passwords do not match!',
                    confirmButtonColor: '#FF9F80'
                });";

                ScriptManager.RegisterStartupScript(this, GetType(), "ErrorMessage", errorScript, true);
            }
        }
    }
}
