<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editarArtigo.aspx.vb" Inherits="editarArtigo" %>

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
    
            <h1 style="font-size:6.5vw;">EventGest</h1>
            <h1 style="color: black;">Artigos</h1>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_artigos" DataSourceID="editArtigos">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_artigos" HeaderText="ID Artigos" InsertVisible="False" ReadOnly="True" SortExpression="id_artigos" />
                <asp:BoundField DataField="nm_artigo" HeaderText="Nome Artigo" SortExpression="nm_artigo" />
                <asp:BoundField DataField="tipo_artigo" HeaderText="Tipo Artigo" SortExpression="tipo_artigo" />
                <asp:BoundField DataField="data_cria_artigo" HeaderText="Data Criação Artigo" SortExpression="data_cria_artigo" />
                <asp:BoundField DataField="id_evento" HeaderText="ID Evento" SortExpression="id_evento" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="editArtigos" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" DeleteCommand="DELETE FROM [Artigos] WHERE [id_artigos] = @id_artigos" InsertCommand="INSERT INTO [Artigos] ([nm_artigo], [tipo_artigo], [data_cria_artigo], [id_evento]) VALUES (@nm_artigo, @tipo_artigo, @data_cria_artigo, @id_evento)" SelectCommand="SELECT * FROM [Artigos]" UpdateCommand="UPDATE [Artigos] SET [nm_artigo] = @nm_artigo, [tipo_artigo] = @tipo_artigo, [data_cria_artigo] = @data_cria_artigo, [id_evento] = @id_evento WHERE [id_artigos] = @id_artigos">
            <DeleteParameters>
                <asp:Parameter Name="id_artigos" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nm_artigo" Type="String" />
                <asp:Parameter Name="tipo_artigo" Type="String" />
                <asp:Parameter Name="data_cria_artigo" Type="DateTime" />
                <asp:Parameter Name="id_evento" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nm_artigo" Type="String" />
                <asp:Parameter Name="tipo_artigo" Type="String" />
                <asp:Parameter Name="data_cria_artigo" Type="DateTime" />
                <asp:Parameter Name="id_evento" Type="Int32" />
                <asp:Parameter Name="id_artigos" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
<div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div> 
        <asp:Button ID="Button1" runat="server" Text="Voltar" Width="123px"  />
    </form>
</body>
</html>
