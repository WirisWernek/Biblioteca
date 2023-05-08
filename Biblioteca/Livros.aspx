<%@ Page Title="Livros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Livros.aspx.cs" Inherits="Biblioteca.Livros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-floating mb-3">
        <br />
        <asp:Label ID="lblNome" class="label" runat="server" Text="Nome do Livro:"></asp:Label>
        <asp:TextBox ID="nomeFiltro" class="form-control" runat="server" placeholder="Livro"></asp:TextBox><br />
        <asp:Label ID="lblAutor" class="label" runat="server" Text="Autor do Livro: "></asp:Label>
        <asp:TextBox ID="autorFiltro" class="form-control" runat="server" placeholder="Autor"></asp:TextBox><br />
        <asp:Label ID="lblGenero" class="label" runat="server" Text="Genero do Livro: "></asp:Label>
        <asp:TextBox ID="generoFiltro" class="form-control" runat="server" placeholder="Gênero"></asp:TextBox><br />
        <asp:Label ID="lblInput" runat="server" Text="** Para uma busca completa deixe os campo em branco" Font-Bold="True" ForeColor="#CC0000" Font-Size="15px"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary" OnClick="btnFiltro_Click" />
    </div>
    <br />
    <asp:GridView ID="gridLivros" class="table table-striped table-bordered" runat="server"></asp:GridView>
</asp:Content>
