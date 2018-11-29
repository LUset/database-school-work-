<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Eventos.aspx.vb" Inherits="Eventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Adicionar efeitos.css // efeitos gerais -->
<link rel="stylesheet" type="text/css" href="efeitos.css"/>
        <!-- ViewPort Site Responsivo -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
    <title>EventGest</title>
</head>
<body>
    <form id="form1" runat="server">
            <h1 style="font-size:6.5vw;">EventGest</h1>
            <h1 style="color: black;">EVENTOS</h1>
            Eventos:<br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Editar Eventos" Width="183px" />
        
    
            <br />
            Ver:
       
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="eventos_dataSource" DataTextField="nm_evento" DataValueField="nm_evento">
        </asp:DropDownList>
        
            <asp:SqlDataSource ID="eventos_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" SelectCommand="SELECT [nm_evento] FROM [Evento]"></asp:SqlDataSource>
        
            <br />
            Conselho Cientifico:&nbsp;<br />
                <asp:Button ID="Button2" runat="server" Text="Editar Conselho Cientifico" Width="188px" />
        
            &nbsp;
            <br />
            Ver: <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Conselho_dataSource" DataTextField="descricao" DataValueField="descricao">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Conselho_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" SelectCommand="SELECT [descricao] FROM [Conselho_Cientifico]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Novo Evento" Width="123px" />
            <br />
            <asp:Button ID="Button5" runat="server" Text="Novo Conselho" Width="123px" />
            <p style="text-align: center; margin-top: 7px; padding: 10px">
                <asp:Button ID="Button3" runat="server" Text="Voltar" Width="123px" />
            </p>
        
    </form>
<div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>    
</body>
</html>
