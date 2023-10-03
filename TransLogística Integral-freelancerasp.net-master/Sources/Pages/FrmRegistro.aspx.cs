using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Data;

namespace CRUD.Sources.Pages
{
    public partial class FrmRegistro : System.Web.UI.Page
    {
        protected void  Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Cancelar(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmLogin.aspx");
        }
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        

        protected void Registrar(object sender, EventArgs e)
        {
            int tamanioimagen = int.Parse(FUImage.FileContent.Length.ToString());
            string contraseniasinverificar = tbClave.Text;
            Regex letras = new Regex(@"[a-zA-Z]");
            Regex numeros = new Regex(@"[0-9]");
            Regex especiales = new Regex("[!\"#\\$%&'()*+,-./:;=?@\\[\\]{|}~]");
            con.Open();
            SqlCommand usuario = new SqlCommand("ContarUsuario", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            usuario.Parameters.Add("@usuario", SqlDbType.VarChar).Value = tbUsuario.Text;
            int user = Convert.ToInt32(usuario.ExecuteScalar());
            if (tbNombres.Text == "" || tbApellidos.Text == "" || tbfecha.Text == "" || tbEdad.Text == "" || tbDocumento.Text == "" || tbCelular.Text == "" || tbUsuario.Text == "" || tbCOrigen.Text == "" || tbCDestino.Text == "" || tbVReal.Text == "" || tbVCobrado.Text == "" || tbFTrayecto.Text == "" || tbPlaca.Text == "" || tbMarca.Text == "" || tbModelo.Text == "")
            {
                lblError.Text = "Los campos no pueden quedar vacíos!";
            }
            else if(user>=1)
            {       
                lblError.Text = "El usuario "+tbUsuario.Text+" ya existe!";
            }
            else if (tbClave.Text != tbClave2.Text) 
            {
                lblError.Text = "Las contraseñas no coinciden!";
            }
            else if(!letras.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener letras! ";
            }
            else if (!numeros.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener números! ";
            }
            else if (!especiales.IsMatch(contraseniasinverificar))
            {
                lblError.Text = "La contraseña debe contener caracteres especiales! ";
            }
            else if(!FUImage.HasFile)
            {
                lblError.Text = "No se ha cargado una imagen de conductor!";
            }
            else if(tamanioimagen>= 2097151000)
            {
                lblError.Text = "El tamaño de la imagen no puede ser mayor a 10 Mb!";
            }
            else
            {
                byte[] imagen = FUImage.FileBytes;
                string patron = "InfoToolsSV";
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Registrar", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Nombres", SqlDbType.VarChar).Value = tbNombres.Text;
                        cmd.Parameters.Add("@Apellidos", SqlDbType.VarChar).Value = tbApellidos.Text;
                        cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = tbfecha.Text;
                        cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = tbUsuario.Text;
                        cmd.Parameters.Add("@Edad", SqlDbType.Int).Value = tbEdad.Text;
                        cmd.Parameters.Add("@Documento", SqlDbType.BigInt).Value = tbDocumento.Text;
                        cmd.Parameters.Add("@Celular", SqlDbType.BigInt).Value = tbCelular.Text;
                        cmd.Parameters.Add("@Clave", SqlDbType.VarChar).Value = tbClave.Text;   
                        cmd.Parameters.Add("@Patron", SqlDbType.VarChar).Value = patron;
                        cmd.Parameters.Add("@Imagen", SqlDbType.Image).Value = imagen;
                        cmd.Parameters.Add("@IdUsuario", SqlDbType.Int).Value = 0;
                        cmd.Parameters.Add("@IdVehiculo", SqlDbType.Int).Value = 0;
                        cmd.Parameters.Add("@Placa", SqlDbType.VarChar).Value = tbPlaca.Text;
                        cmd.Parameters.Add("@Marca", SqlDbType.VarChar).Value = tbMarca.Text;
                        cmd.Parameters.Add("@Modelo", SqlDbType.VarChar).Value = tbModelo.Text;
                        cmd.Parameters.Add("@IdTrayecto", SqlDbType.Int).Value = 0;
                        cmd.Parameters.Add("@CiudadOrigen", SqlDbType.VarChar).Value = tbCOrigen.Text;
                        cmd.Parameters.Add("@CiudadDestino", SqlDbType.VarChar).Value = tbCDestino.Text;
                        cmd.Parameters.Add("@ValorReal", SqlDbType.BigInt).Value = tbVReal.Text;
                        cmd.Parameters.Add("@ValorCobrado", SqlDbType.BigInt).Value = tbVCobrado.Text;
                        cmd.Parameters.Add("@FechaTrayecto", SqlDbType.Date).Value = tbFTrayecto.Text;
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                    Response.Redirect("/Sources/Pages/FrmLogin.aspx");
                }
            }
        }
    }
}