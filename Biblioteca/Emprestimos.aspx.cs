using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Emprestimos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmprestar_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta3 = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            int? resp = 0;
            ta3.insereEmprestimo(isbnInput.Text, dpiInput.Text, ref resp);

            string mensagemRetorno = "I";


            if (resp == 0) { mensagemRetorno = "EMPRESTIMO EFETUADO COM SUCESSO"; }

            if (resp == 1) { mensagemRetorno = "Erro: Usuário não existe"; }

            if (resp == 2) { mensagemRetorno = "Erro: Livro não existe"; }

            if (resp == 3) { mensagemRetorno = "Erro: Livro já está emprestado"; }

            lblAviso.Text = mensagemRetorno;
            lblAviso.Visible = true;
        }
    }
}