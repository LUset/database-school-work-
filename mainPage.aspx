<%@ Page Language="VB" AutoEventWireup="false" CodeFile="mainPage.aspx.vb" Inherits="mainPage" %>

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
    <form id="form1" runat="server">
       
        <h1 style="font-size:6.5vw;">EventGest</h1>
        
        <asp:Button ID="Button1" runat="server" Text="Eventos" Width="85px" />
        <asp:Button ID="Button2" runat="server" Text="Participantes" Width="85px" />
        <p>
            <asp:Button ID="Button3" runat="server" Text="Revisores" Width="85px" />
            <asp:Button ID="Button4" runat="server" Text="Artigos" Width="85px" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="NÓS" Width="85px" />
        </p>
     </form>
    <div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
