﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Label ID="lblNomeUsuario" class="label" runat="server" Text="Nome do Usuário:"></asp:Label>
        <asp:TextBox ID="nomeUsuarioFiltro" class="form-control" runat="server" placeholder="Usuário"></asp:TextBox><br />
        <asp:Label ID="lblNomeLivro" class="label" runat="server" Text="Nome do Livro: "></asp:Label>
        <asp:TextBox ID="nomeLivroFiltro" class="form-control" runat="server" placeholder="Livro"></asp:TextBox><br />
        <asp:Label ID="lblInput" runat="server" Text="** Para uma busca completa deixe os campos em branco" Font-Bold="True" ForeColor="#CC0000" Font-Size="15px"></asp:Label>
        <br />  <br />
        <asp:Button ID="btnFiltro" class="btn btn-primary" runat="server" Text="Filtrar" OnClick="btnFiltro_Click" /><br />

    </div>
    <br />
    <asp:GridView ID="gridDevolucoes" runat="server" class="table table-striped table-bordered">
    </asp:GridView>
    <asp:Label ID="lblDpi" class="label" runat="server" Text="DPI do Usuário: "></asp:Label>
    <asp:TextBox ID="dpiInput" class="form-control" runat="server" placeholder="DPI Usuário"></asp:TextBox><br />
    <asp:Label ID="lblIsbn" class="label" runat="server" Text="ISBN do Livro: "></asp:Label>
    <asp:TextBox ID="isbnInput" class="form-control" runat="server" placeholder="ISBN Livro"></asp:TextBox><br />
    <asp:Button ID="btnDevolver" class="btn btn-primary" runat="server" Text="Devolver" OnClientClick="return Validate()" OnClick="btnDevolver_Click" /><br />
    <br />
    <asp:Label ID="lblDevolvido" runat="server" ForeColor="#CC0000" Font-Size="24px" Text="DEVOLUÇÃO EFETUADA COM SUCESSO" onClick="Ocultar()"></asp:Label>

    <script type="text/javascript">
        function Ocultar() {
            javascript: document.getElementById('MainContent_lblDevolvido').hidden = true;
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
