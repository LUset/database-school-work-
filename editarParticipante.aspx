<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editarParticipante.aspx.vb" Inherits="editarParticipante" %>

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
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_participante" DataSourceID="particip_dataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_participante" HeaderText="id_participante" InsertVisible="False" ReadOnly="True" SortExpression="id_participante" />
                <asp:BoundField DataField="nm_participante" HeaderText="nm_participante" SortExpression="nm_participante" />
                <asp:BoundField DataField="e_mail_participante" HeaderText="e_mail_participante" SortExpression="e_mail_participante" />
                <asp:BoundField DataField="contacto_participante" HeaderText="contacto_participante" SortExpression="contacto_participante" />
                <asp:BoundField DataField="data_inscricao" HeaderText="data_inscricao" SortExpression="data_inscricao" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="particip_dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:trabalhoBaseDadosConnectionString %>" DeleteCommand="DELETE FROM [Participantes] WHERE [id_participante] = @id_participante" InsertCommand="INSERT INTO [Participantes] ([nm_participante], [e_mail_participante], [contacto_participante], [data_inscricao]) VALUES (@nm_participante, @e_mail_participante, @contacto_participante, @data_inscricao)" SelectCommand="SELECT * FROM [Participantes]" UpdateCommand="UPDATE [Participantes] SET [nm_participante] = @nm_participante, [e_mail_participante] = @e_mail_participante, [contacto_participante] = @contacto_participante, [data_inscricao] = @data_inscricao WHERE [id_participante] = @id_participante">
            <DeleteParameters>
                <asp:Parameter Name="id_participante" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nm_participante" Type="String" />
                <asp:Parameter Name="e_mail_participante" Type="String" />
                <asp:Parameter Name="contacto_participante" Type="Int32" />
                <asp:Parameter Name="data_inscricao" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nm_participante" Type="String" />
                <asp:Parameter Name="e_mail_participante" Type="String" />
                <asp:Parameter Name="contacto_participante" Type="Int32" />
                <asp:Parameter Name="data_inscricao" Type="DateTime" />
                <asp:Parameter Name="id_participante" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Voltar" />
    </form>
 <div class="footer">
  <p style="text-align:center;padding:10px;margin-top:7px;">© GestEvent </p>
</div>
</body>
</html>
