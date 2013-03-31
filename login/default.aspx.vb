
Partial Class login_default
    Inherits System.Web.UI.Page
    'Have cursor automatically appear in the username box so the user doesn't have to click into the box
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Login1.Focus()

    End Sub
End Class
