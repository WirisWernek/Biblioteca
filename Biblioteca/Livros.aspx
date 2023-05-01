<%@ Page Title="Livros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Livros.aspx.cs" Inherits="Biblioteca.Livros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <asp:Label ID="lblNome" runat="server" Text="Nome do Livro"></asp:Label>
            <asp:TextBox ID="nomeFiltro" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblAutor" runat="server" Text="Autor do Livro"></asp:Label>
            <asp:TextBox ID="autorFiltro" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblGenero" runat="server" Text="Genero do Livro"></asp:Label>
            <asp:TextBox ID="generoFiltro" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnFiltro" runat="server" Text="Filtrar" /><br />
            <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe os campo em branco"></asp:Label>
        </div>
        <asp:GridView ID="gridLivros" runat="server"></asp:GridView>
</asp:Content>
