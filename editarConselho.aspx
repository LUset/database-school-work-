<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editarConselho.aspx.vb" Inherits="editarConselho" %>

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
        <h1 style="color: black;">Editar Conselho</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_conselho" DataSourceID="conseho_dataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_conselho" HeaderText="id_conselho" InsertVisible="False" ReadOnly="True" SortExpression="id_conselho" />
                <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                <asp:BoundField DataField="data_cria_conselho" HeaderText="data_cria_conselho" SortExpression="data_cria_conselho" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="conseho_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" DeleteCommand="DELETE FROM [Conselho_Cientifico] WHERE [id_conselho] = @id_conselho" InsertCommand="INSERT INTO [Conselho_Cientifico] ([descricao], [data_cria_conselho]) VALUES (@descricao, @data_cria_conselho)" SelectCommand="SELECT * FROM [Conselho_Cientifico]" UpdateCommand="UPDATE [Conselho_Cientifico] SET [descricao] = @descricao, [data_cria_conselho] = @data_cria_conselho WHERE [id_conselho] = @id_conselho">
            <DeleteParameters>
                <asp:Parameter Name="id_conselho" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descricao" Type="String" />
                <asp:Parameter Name="data_cria_conselho" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descricao" Type="String" />
                <asp:Parameter Name="data_cria_conselho" Type="DateTime" />
                <asp:Parameter Name="id_conselho" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Voltar" />
    </form>
<div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
