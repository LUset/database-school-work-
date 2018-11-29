<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Revisor.aspx.vb" Inherits="Revisor" %>

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
        Ver<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="revisor_dataSource">
            <Columns>
                <asp:BoundField DataField="nm_revisores" HeaderText="nm_revisores" SortExpression="nm_revisores" />
                <asp:BoundField DataField="telefone_revisores" HeaderText="telefone_revisores" SortExpression="telefone_revisores" />
                <asp:BoundField DataField="e_mail_revisores" HeaderText="e_mail_revisores" SortExpression="e_mail_revisores" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="revisor_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" SelectCommand="SELECT [nm_revisores], [telefone_revisores], [e_mail_revisores] FROM [Revisores]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Novo" />
        <asp:Button ID="Button2" runat="server" Text="Editar" />
        <asp:Button ID="Button3" runat="server" Text="Voltar" />
    </form>
<div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div> 
</body>
</html>
