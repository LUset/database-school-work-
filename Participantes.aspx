<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Participantes.aspx.vb" Inherits="Participantes" %>

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
            <h1 style="color: black;">Participantes</h1>
    <form id="form1" runat="server">
        Ver
        <asp:SqlDataSource ID="participantes_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" SelectCommand="SELECT [nm_participante], [contacto_participante], [e_mail_participante] FROM [Participantes]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="participantes_dataSource">
            <Columns>
                <asp:BoundField DataField="nm_participante" HeaderText="nm_participante" SortExpression="nm_participante" />
                <asp:BoundField DataField="contacto_participante" HeaderText="contacto_participante" SortExpression="contacto_participante" />
                <asp:BoundField DataField="e_mail_participante" HeaderText="e_mail_participante" SortExpression="e_mail_participante" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Editar" Width="123px" />
        <asp:Button ID="Button2" runat="server" Text="Novo" Width="123px"  />
        <asp:Button ID="Button3" runat="server" Text="Voltar" Width="123px" />
    </form>
 <div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
