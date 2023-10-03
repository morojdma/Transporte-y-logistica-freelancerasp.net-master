using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;


namespace CRUD.Sources.Pages
{
    public partial class FrmVehiculos : System.Web.UI.Page
    {

        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Session["usuariologueado"].ToString());
            if (Session["usuariologueado"] == null)
            {
                Response.Redirect("Sources/Pages/FrmLogin.aspx");
            }
            else
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Vehiculo", con)) 
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            image.ImageUrl = "/Sources/Pages/FrmImagen.aspx?id=" + id;
                            this.tbPlaca.Text = dr["Placa"].ToString();
                            this.tbMarca.Text = dr["Marca"].ToString();
                            this.tbModelo.Text = dr["Modelo"].ToString();
                            dr.Close();
                        }
                        con.Close();
                    }
                }
            }
        }
    }
}