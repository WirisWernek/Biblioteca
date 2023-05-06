<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Devolucao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblNomeUsuario" runat="server" Text="Nome do Usuario"></asp:Label>            
		<asp:TextBox ID="nomeUsuarioFiltro" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblNomeLivro" runat="server" Text="Nome do Livro"></asp:Label>
        <asp:TextBox ID="nomeLivroFiltro" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnFiltro" runat="server" Text="Filtrar"/><br />
        <asp:Label ID="lblInput" runat="server" Text="**Para uma busca completa deixe os campos em branco"></asp:Label>
    </div>
    <asp:GridView ID="gridDevolucoes" runat="server" OnSelectedIndexChanged="gridDevolucoes_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="Devolver" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblDevolvido" runat="server" Text="DEVOLUÇÃO EFETUADA COM SUCESSO" onClick="Ocultar()" ></asp:Label>

    <script type="text/javascript">
      function Ocultar()
      {
          javascript: document.getElementById('MainContent_lblDevolvido').hidden = true;
      }    
    </script>

</asp:Content>
