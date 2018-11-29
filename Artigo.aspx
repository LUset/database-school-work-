<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Artigo.aspx.vb" Inherits="Artigo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Adicionar efeitos.css // efeitos gerais -->
<link rel="stylesheet" type="text/css" href="efeitos.css">
        <!-- ViewPort Site Responsivo -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 


    <title>EventGest</title>
</head>
<body>
    <h1 style="font-size:6.5vw;">EventGest</h1>
            <h1 style="color: black;">Artigos</h1>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="artigosDataSource" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="nm_artigo" HeaderText="Artigo" SortExpression="nm_artigo" />
                <asp:BoundField DataField="nm_evento" HeaderText="Evento" SortExpression="nm_evento" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="artigosDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" SelectCommand="SELECT Artigos.nm_artigo, Evento.nm_evento 
FROM Artigos,Evento 
WHERE (Artigos.id_artigos=Evento.id_evento)"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Novo" />
        <asp:Button ID="Button2" runat="server" Text="Editar" />
        <asp:Button ID="Button3" runat="server" Text="Voltar" />
    </form>
 <div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
