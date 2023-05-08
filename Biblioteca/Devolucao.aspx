<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblNomeUsuario" runat="server" Text="Nome do Usuario"></asp:Label>
        <asp:TextBox ID="nomeUsuarioFiltro" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblNomeLivro" runat="server" Text="Nome do Livro"></asp:Label>
        <asp:TextBox ID="nomeLivroFiltro" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnFiltro" runat="server" Text="Filtrar" OnClick="btnFiltro_Click" /><br />
        <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe os campos em branco"></asp:Label>
    </div>
    <asp:GridView ID="gridDevolucoes" runat="server">
    </asp:GridView>
    <asp:Label ID="lblDpi" runat="server" Text="DPI do Usuario"></asp:Label>
    <asp:TextBox ID="dpiInput" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblIsbn" runat="server" Text="ISBN do Livro"></asp:Label>
    <asp:TextBox ID="isbnInput" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnDevolver" runat="server" Text="Devolver" OnClick="btnDevolver_Click" /><br />

    <asp:Label ID="lblDevolvido" runat="server" Text="DEVOLUÇÃO EFETUADA COM SUCESSO" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
        function Ocultar() {
            javascript: document.getElementById('MainContent_lblDevolvido').hidden = true;
        }
    </script>

</asp:Content>
