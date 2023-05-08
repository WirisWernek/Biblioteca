<%@ Page Title="Devolução" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Label ID="lblNomeUsuario" class="label" runat="server" Text="Nome do Usuario"></asp:Label>
        <asp:TextBox ID="nomeUsuarioFiltro" class="form-control" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblNomeLivro"  class="label" runat="server" Text="Nome do Livro"></asp:Label>
        <asp:TextBox ID="nomeLivroFiltro" class="form-control" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnFiltro" class="btn btn-primary" runat="server" Text="Filtrar" />
        <br />
        <asp:Label ID="lblInput" runat="server" Text="** Para uma busca completa deixe os campos em branco"
            Font-Bold="True" ForeColor="#CC0000"></asp:Label>

    </div>
    <br />
    <asp:GridView ID="gridDevolucoes" class="table table-striped table-bordered" runat="server" OnSelectedIndexChanged="gridDevolucoes_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="Devolver" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblDevolvido" runat="server" ForeColor="#CC0000" Font-Size="24px" Text="DEVOLUÇÃO EFETUADA COM SUCESSO" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
        function Ocultar() {
            javascript: document.getElementById('MainContent_lblDevolvido').hidden = true;
        }
    </script>

</asp:Content>
