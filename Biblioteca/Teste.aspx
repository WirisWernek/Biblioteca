﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste.aspx.cs" Inherits="Biblioteca.Teste" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <asp:TextBox ID="nomeFiltro" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltro" runat="server" Text="Filtrar" /><br />
            <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe o campo em branco"></asp:Label>
        </div>
        <asp:GridView ID="gridUsuarios" runat="server"></asp:GridView>
</asp:Content>
