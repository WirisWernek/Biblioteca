using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Devolucao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDevolvido.Visible = false;
        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter taEmprestimo = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            BibliotecaDS.buscaEmprestimoDataTable dtEmprestimo = taEmprestimo.GetData(nomeUsuarioFiltro.Text, nomeLivroFiltro.Text);
            gridDevolucoes.DataSource = dtEmprestimo;
            gridDevolucoes.DataBind();
        }

        protected void btnDevolver_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter taEmprestimo = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            string isbn = isbnInput.Text;
            string dpi = dpiInput.Text;
            int? resp = 0;
            taEmprestimo.deletaEmprestimo(isbn, dpi, ref resp);
            lblDevolvido.Visible = true;

            BibliotecaDS.buscaEmprestimoDataTable dtEmprestimo = taEmprestimo.GetData("","");
            gridDevolucoes.DataSource = dtEmprestimo;
            gridDevolucoes.DataBind();
        }

    }
}