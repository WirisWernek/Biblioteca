using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Livros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaLivroTableAdapter taLivros = new BibliotecaDSTableAdapters.buscaLivroTableAdapter();
            BibliotecaDS.buscaLivroDataTable dtLivros = taLivros.GetData(nomeFiltro.Text, autorFiltro.Text, generoFiltro.Text);
            gridLivros.DataSource = dtLivros;
            gridLivros.DataBind();
        }
    }
}