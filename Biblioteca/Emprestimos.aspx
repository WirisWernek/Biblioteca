<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Emprestimos.aspx.cs" Inherits="Biblioteca.Emprestimos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblDpi" runat="server" Text="DPI do Usuario"></asp:Label>            
		<asp:TextBox ID="dpiInput" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblIsbn" runat="server" Text="ISBN do Livro"></asp:Label>
        <asp:TextBox ID="isbnInput" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnEmprestar" runat="server" Text="Emprestar"/><br />
    </div>
        <asp:Label ID="lblAviso" runat="server" Text="" Visible="false" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
      function Ocultar()
      {
          javascript: document.getElementById('MainContent_lblAviso').hidden = true;
      }    
    </script>

</asp:Content>
