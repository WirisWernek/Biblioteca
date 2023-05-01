<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Biblioteca.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <asp:Label ID="lblNome" runat="server" Text="Nome do Usuario"></asp:Label>
            <asp:TextBox ID="nomeFiltro" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnFiltro" runat="server" Text="Filtrar" /><br />
            <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe o campo em branco"></asp:Label>
        </div>
        <asp:GridView ID="gridUsuarios" runat="server"></asp:GridView>
</asp:Content>
