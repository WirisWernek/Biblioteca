<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblNomeUsuario" class="label" runat="server" Text="Nome do Usuario"></asp:Label>
        <asp:TextBox ID="nomeUsuarioFiltro" class="form-control" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblNomeLivro" class="label" runat="server" Text="Nome do Livro"></asp:Label>
        <asp:TextBox ID="nomeLivroFiltro" class="form-control" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnFiltro" class="btn btn-primary" runat="server" Text="Filtrar" OnClick="btnFiltro_Click" /><br />
        <asp:Label ID="lblInput"  runat="server" Text="** Para uma busca completa deixe os campos em branco" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
    </div>
    <br />
    <asp:GridView ID="gridDevolucoes" runat="server" class="table table-striped table-bordered">
    </asp:GridView>
    <asp:Label ID="lblDpi" class="label" runat="server" Text="DPI do Usuario"></asp:Label>
    <asp:TextBox ID="dpiInput" class="form-control" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblIsbn" class="label" runat="server" Text="ISBN do Livro"></asp:Label>
    <asp:TextBox ID="isbnInput" class="form-control" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnDevolver" class="btn btn-primary" runat="server" Text="Devolver" OnClick="btnDevolver_Click" /><br />

    <asp:Label ID="lblDevolvido" runat="server" ForeColor="#CC0000" Font-Size="24px" Text="DEVOLUÇÃO EFETUADA COM SUCESSO" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
        function Ocultar() {
            javascript: document.getElementById('MainContent_lblDevolvido').hidden = true;
        }
    </script>

</asp:Content>
