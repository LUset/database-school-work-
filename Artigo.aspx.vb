
Partial Class Artigo
    Inherits System.Web.UI.Page

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("mainPage.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("editarArtigo.aspx")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("criarArtigo.aspx")
    End Sub

End Class
