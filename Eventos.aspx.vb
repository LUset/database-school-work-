
Partial Class Eventos
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("editarEvento.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("mainPage.aspx")
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("criarEvento.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("editarConselho.aspx")
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("criarConselho.aspx")
    End Sub
End Class
