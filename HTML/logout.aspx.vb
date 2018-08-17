
Partial Class HTML_logout
    Inherits System.Web.UI.Page
    
       
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Abandon()
        Session.Remove("name")
        FormsAuthentication.SignOut()
        Response.Redirect("index6.aspx?mode=logout")

    End Sub
End Class
