using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestLogin
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            lblPassError.Text = "";
            lblUserError.Text = "";
            if (txtUsuario.Text != "" && txtPassword.Text != "")
            {
                string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection sqlConectar = new SqlConnection(conectar);
                SqlCommand cmd = new SqlCommand("SaveUser", sqlConectar)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Connection.Open();
                cmd.Parameters.Add("@User", SqlDbType.VarChar, 50).Value = txtUsuario.Text;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = txtPassword.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                if (!dr.Read())
                {
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    lblError.Text = "Error al registrar usuario";
                }

                cmd.Connection.Close();
            }
            if(txtUsuario.Text == "")
            {
                lblUserError.Text = "Se requiere el Usuario para registro";
            }
            if (txtPassword.Text == "")
            {
                lblPassError.Text = "Se requiere el Password para registro";
            }

        }

        protected void BtnRegresar_click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}