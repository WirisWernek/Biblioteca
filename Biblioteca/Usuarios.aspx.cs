using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaUsuarioTableAdapter ta = new BibliotecaDSTableAdapters.buscaUsuarioTableAdapter();
            BibliotecaDS.buscaUsuarioDataTable dt = ta.GetData(nomeFiltro.Text);
            gridUsuarios.DataSource = dt;
            gridUsuarios.DataBind();
        }
    }
}