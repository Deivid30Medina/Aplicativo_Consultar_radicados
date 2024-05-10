using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI.WebControls;

namespace consultar_radicados.pages
{
    public partial class index : Page
    {

        public class ConsultaData
        {
            public string Parametro { get; set; }

        }

        public ConsultaData GetConsulta()
        {
            string consultaSQL = "";
            string parametro = "";

            if (!string.IsNullOrEmpty(idDocumento2.Text))
            {
                parametro = idDocumento2.Text;
                idDocumento2.Text = null;
            }
            else if (!string.IsNullOrEmpty(idRadicado2.Text))
            {
                parametro = idRadicado2.Text;
                idRadicado2.Text = null;
            }
            else if (!string.IsNullOrEmpty(idCorreo2.Text))
            {
                parametro = idCorreo2.Text;
                idCorreo2.Text = null;
            }

            return new ConsultaData
            {
                Parametro = parametro
                
            };
        }

        private DataTable ExecuteConsulta(string parametro, string connectionString)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("spBuscarRadicados", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Parametro", parametro);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        return dt;
                    }
                }
            }
        }


        private void BindDataToGridView(DataTable dt)
        {
            gridTramites.DataSource = dt;
            gridTramites.DataBind();
        }

        private void ClearGridView()
        {
            gridTramites.DataSource = null;
            gridTramites.DataBind();
        }

        private void ShowNoDataMessage()
        {
            string mensaje = "No se encontraron datos asociados a la consulta.";
            Response.Write("<script>alert('" + mensaje + "');</script>");
        }

        private void HandleException(Exception ex)
        {
            Response.Write("<script>console.error('" + ex.Message + "');</script>");
        }

        protected void btnSelectRadicados_Click(object sender, EventArgs e)
        {
            try
            {
                ConsultaData consultaData = GetConsulta();
                string parametro = consultaData.Parametro;
                string connectionString = ConfigurationManager.ConnectionStrings["conection"].ConnectionString;
                
                DataTable dt = ExecuteConsulta(parametro, connectionString);

                if (dt != null && dt.Rows.Count > 0)
                {
                    BindDataToGridView(dt);
                }
                else
                {
                    ShowNoDataMessage();
                    ClearGridView();
                }
            }
            catch (Exception ex)
            {
                HandleException(ex);
            }
        }


    }
}
