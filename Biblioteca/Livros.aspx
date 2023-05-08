<%@ Page Title="Livros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Livros.aspx.cs" Inherits="Biblioteca.Livros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      
    <div  class="form-floating mb-3">
        <br />
            <asp:Label ID="lblNome" runat="server" Text="Nome do Livro:"></asp:Label>
            <asp:TextBox ID="nomeFiltro" class="form-control" runat="server" placeholder="Livro"></asp:TextBox><br />
            <asp:Label ID="lblAutor" runat="server" Text="Autor do Livro: "></asp:Label>
            <asp:TextBox ID="autorFiltro" class="form-control" runat="server" placeholder="Autor"></asp:TextBox><br />
            <asp:Label ID="lblGenero" runat="server" Text="Genero do Livro: "></asp:Label>
            <asp:TextBox ID="generoFiltro" class="form-control" runat="server" placeholder="Gênero"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary" OnClick="btnFiltro_Click"/><br />
            <asp:Label ID="lblInput" runat="server" Text="** Para uma busca completa deixe os campo em branco" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
        </div>
        <asp:GridView ID="gridLivros" runat="server"></asp:GridView>
</asp:Content>
