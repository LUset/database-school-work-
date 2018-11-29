<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editarRevisor.aspx.vb" Inherits="editarRevisor" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_revisores" DataSourceID="revisore_DataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_revisores" HeaderText="id_revisores" InsertVisible="False" ReadOnly="True" SortExpression="id_revisores" />
                <asp:BoundField DataField="nm_revisores" HeaderText="nm_revisores" SortExpression="nm_revisores" />
                <asp:BoundField DataField="e_mail_revisores" HeaderText="e_mail_revisores" SortExpression="e_mail_revisores" />
                <asp:BoundField DataField="telefone_revisores" HeaderText="telefone_revisores" SortExpression="telefone_revisores" />
                <asp:BoundField DataField="data_cria_revisores" HeaderText="data_cria_revisores" SortExpression="data_cria_revisores" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="revisore_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" DeleteCommand="DELETE FROM [Revisores] WHERE [id_revisores] = @id_revisores" InsertCommand="INSERT INTO [Revisores] ([nm_revisores], [e_mail_revisores], [telefone_revisores], [data_cria_revisores]) VALUES (@nm_revisores, @e_mail_revisores, @telefone_revisores, @data_cria_revisores)" SelectCommand="SELECT * FROM [Revisores]" UpdateCommand="UPDATE [Revisores] SET [nm_revisores] = @nm_revisores, [e_mail_revisores] = @e_mail_revisores, [telefone_revisores] = @telefone_revisores, [data_cria_revisores] = @data_cria_revisores WHERE [id_revisores] = @id_revisores">
            <DeleteParameters>
                <asp:Parameter Name="id_revisores" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nm_revisores" Type="String" />
                <asp:Parameter Name="e_mail_revisores" Type="String" />
                <asp:Parameter Name="telefone_revisores" Type="Int32" />
                <asp:Parameter Name="data_cria_revisores" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nm_revisores" Type="String" />
                <asp:Parameter Name="e_mail_revisores" Type="String" />
                <asp:Parameter Name="telefone_revisores" Type="Int32" />
                <asp:Parameter Name="data_cria_revisores" Type="DateTime" />
                <asp:Parameter Name="id_revisores" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Voltar" />
    </form>
<div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
