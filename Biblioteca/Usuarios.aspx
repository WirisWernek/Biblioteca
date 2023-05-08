<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Biblioteca.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="form-floating mb-3">
            <br/>
			<asp:Label ID="lblNome" runat="server" Text="Nome do Usuario: " ></asp:Label>            
			<asp:TextBox ID="nomeFiltro" class="form-control" runat="server" placeholder="Usuário"></asp:TextBox> <br />
            <asp:Button ID="btnFiltro" class="btn btn-primary" runat="server" Text="Filtrar" OnClick="btnFiltro_Click"/><br />
            <asp:Label ID="lblInput" runat="server" Text="** Para uma busca completa deixe o campo em branco" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
        </div>
        <asp:GridView ID="gridUsuarios" runat="server"></asp:GridView>
</asp:Content>
