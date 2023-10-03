using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CRUD.Sources.Pages
{
    public partial class MP : System.Web.UI.MasterPage
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuariologueado"]!=null)
            {
                int id = int.Parse(Session["usuariologueado"].ToString());
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Conductor", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                        dr.Read();
                        this.lblUsuario.Text = dr["Nombres"].ToString() + "  "+dr["Apellidos"].ToString() + ".......";
                        imgConductor.ImageUrl = "/Sources/Pages/FrmImagen.aspx?id="+id;
                    }
                }
            }
            else
            {
                Response.Redirect("Sources/Pages/FrmLogin.aspx");
            }
        }



        protected void Conductores(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmConductores.aspx");
        }

        protected void Vehiculos(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmVehiculos.aspx");
        }

        protected void Trayectos(object sender, EventArgs e)
        {
            Response.Redirect("/Sources/Pages/FrmTrayectos.aspx");
        }

        protected void Salir(object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            Response.Redirect("/Sources/Pages/FrmLogin.aspx");
        }

    }
}