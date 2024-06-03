using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Index : System.Web.UI.Page
    {
        Conversion c = new Conversion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuarioLogueado"] != null)
            {
                string usuariologueado = Session["usuariologueado"].ToString();
                lblBienvenida.Text = "Bienvedio/a " + usuariologueado;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BtnCerrar_Click(Object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            Response.Redirect("Login.aspx");
        }

        protected void BtnConvertir_Click(Object sender, EventArgs e)
        {
            lblLetras.Text = c.enletras(txtNumero.Text);
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SaveValue", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Numero", SqlDbType.VarChar, 100).Value = txtNumero.Text;
            cmd.Parameters.Add("@NumeroEnLetra", SqlDbType.VarChar, 200).Value = lblLetras.Text; 
             SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.Read())
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Se guardo correctamente el numero.";
                lblMensajeError.Visible = false;
            }
            else
            {
                lblMensaje.Visible = false;
                lblMensajeError.Visible = true;
                lblMensajeError.Text = "Error, no se ingreso un Numero.";
            }
            cmd.Connection.Close();
        }
    }
}