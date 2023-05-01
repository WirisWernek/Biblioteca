<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Biblioteca.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <asp:TextBox ID="nomeFiltro" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltro" runat="server" Text="Filtrar" OnClick="btnFiltro_Click"/><br />
            <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe o campo em branco"></asp:Label>
        </div>
        <asp:GridView ID="gridUsuarios" runat="server"></asp:GridView>
</asp:Content>
