<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Emprestimos.aspx.cs" Inherits="Biblioteca.Emprestimos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblDpi" runat="server" Text="DPI do Usuario"></asp:Label>            
		<asp:TextBox ID="dpiInput" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblIsbn" runat="server" Text="ISBN do Livro"></asp:Label>
        <asp:TextBox ID="isbnInput" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnEmprestar" runat="server" OnClientClick="return Validate()" Text="Emprestar"/><br />
    </div>
        <asp:Label ID="lblAviso" runat="server" Text="" Visible="false" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
        function Ocultar()
        {
          javascript: document.getElementById('MainContent_lblAviso').hidden = true;
        }

        function Validate() {  
            if (document.getElementById("MainContent_dpiInput").value.trim() == "") {
                alert("Informe o DPI.");
                document.getElementById("MainContent_dpiInput").focus();
                return false;
            }

            if (document.getElementById("MainContent_isbnInput").value.trim() == "") {
                alert("Informe o ISBN.");
                document.getElementById("MainContent_isbnInput").focus();
                return false;
            }

            var regex_onlyNumbers = /^[0-9]/;
            var tempDpi = document.getElementById("MainContent_dpiInput").value;
            var tempIsbn = document.getElementById("MainContent_isbnInput").value;
            var matchDpi = tempDpi.match(regex_onlyNumbers);
            var matchIsbn = tempIsbn.match(regex_onlyNumbers);

            if (matchDpi == null) {
                alert("DPI inválido! Apenas números aceitos.");
                document.getElementById("MainContent_dpiInput").focus();
                return false;
            }
            if (matchIsbn == null) {
                alert("ISBN inválido! Apenas números aceitos.");
                document.getElementById("MainContent_isbnInput").focus();
                return false;
            }
            return true;
        }


    </script>

</asp:Content>
