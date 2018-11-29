
Partial Class mainPage
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Eventos.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Participantes.aspx")
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Revisor.aspx")
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("Artigo.aspx")
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("nos.aspx")
    End Sub
End Class
