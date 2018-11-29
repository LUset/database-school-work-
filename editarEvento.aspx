<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editarEvento.aspx.vb" Inherits="editarEvento" %>

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
        <h1 style="color: black;">Editar Eventos</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_evento" DataSourceID="editarEventos_dataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_evento" HeaderText="ID Evento" InsertVisible="False" ReadOnly="True" SortExpression="id_evento" />
                <asp:BoundField DataField="id_subEvento" HeaderText="ID SubEvento" SortExpression="id_subEvento" />
                <asp:BoundField DataField="id_conselho" HeaderText="ID Conselho" SortExpression="id_conselho" />
                <asp:BoundField DataField="nm_evento" HeaderText="Nome Evento" SortExpression="nm_evento" />
                <asp:BoundField DataField="tipo_evento" HeaderText="Tipo de Evento" SortExpression="tipo_evento" />
                <asp:BoundField DataField="local_evento" HeaderText="Local do Evento" SortExpression="local_evento" />
                <asp:BoundField DataField="data_Ini_evento" HeaderText="Data Inicio Evento" SortExpression="data_Ini_evento" />
                <asp:BoundField DataField="data_fim_evento" HeaderText="Data Fim Evento" SortExpression="data_fim_evento" />
                <asp:BoundField DataField="descricao" HeaderText="Descricão" SortExpression="descricao" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="editarEventos_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" DeleteCommand="DELETE FROM [Evento] WHERE [id_evento] = @id_evento" InsertCommand="INSERT INTO [Evento] ([id_subEvento], [id_conselho], [nm_evento], [tipo_evento], [local_evento], [data_Ini_evento], [data_fim_evento], [descricao]) VALUES (@id_subEvento, @id_conselho, @nm_evento, @tipo_evento, @local_evento, @data_Ini_evento, @data_fim_evento, @descricao)" SelectCommand="SELECT * FROM [Evento]" UpdateCommand="UPDATE [Evento] SET [id_subEvento] = @id_subEvento, [id_conselho] = @id_conselho, [nm_evento] = @nm_evento, [tipo_evento] = @tipo_evento, [local_evento] = @local_evento, [data_Ini_evento] = @data_Ini_evento, [data_fim_evento] = @data_fim_evento, [descricao] = @descricao WHERE [id_evento] = @id_evento">
            <DeleteParameters>
                <asp:Parameter Name="id_evento" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_subEvento" Type="Int32" />
                <asp:Parameter Name="id_conselho" Type="Int32" />
                <asp:Parameter Name="nm_evento" Type="String" />
                <asp:Parameter Name="tipo_evento" Type="String" />
                <asp:Parameter Name="local_evento" Type="String" />
                <asp:Parameter Name="data_Ini_evento" Type="DateTime" />
                <asp:Parameter Name="data_fim_evento" Type="DateTime" />
                <asp:Parameter Name="descricao" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_subEvento" Type="Int32" />
                <asp:Parameter Name="id_conselho" Type="Int32" />
                <asp:Parameter Name="nm_evento" Type="String" />
                <asp:Parameter Name="tipo_evento" Type="String" />
                <asp:Parameter Name="local_evento" Type="String" />
                <asp:Parameter Name="data_Ini_evento" Type="DateTime" />
                <asp:Parameter Name="data_fim_evento" Type="DateTime" />
                <asp:Parameter Name="descricao" Type="String" />
                <asp:Parameter Name="id_evento" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Voltar" />
        </p>
    </form>
 <div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
