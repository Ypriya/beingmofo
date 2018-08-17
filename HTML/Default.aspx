<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;"
        'Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver}; Server=MYSQL5006.Smarterasp.net;Database=db_9c0eef_pycrms;Uid=9c0eef_pycrms;Pwd=password123;"
        Dim orderid As Integer
        inicart = Session.Item("cart")
        CART.Text = "Cart Rs. " + inicart.ToString
        Dim sessionname As String
        sessionname = Session.Item("name")
        If sessionname IsNot Nothing Then
            lisignindet.Visible = False
            licratedet.Visible = False
            Label1det.Visible = True
            Button1det.Visible = True
            Label1det.Text = "WELCOME " + sessionname
            
            Dim connectme As System.Data.Odbc.OdbcConnection = New System.Data.Odbc.OdbcConnection(connectionstring)
            Try
                'This is command class which will handle the query and connection object.
                '  TO DISPLAY NAME AND E-MAIL FROM DATABASE
           
                connectme.Open()
                Dim name As String = Session.Item("name")
        
                Dim id As String = Session.Item("uid")
        
                'Dim ipcLAW As String = "SELECT IPC_law from fir_sec_of_lawS where type='" + ListBox1.SelectedValue.ToString + "'"

                Dim sqlquery As String = "select OrderID  from orders where OrderAmount=1724;"
                Dim command1 As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery1, connectme)
          
                Dim reader1 As Object = command1.ExecuteScalar()
            
                'Dim o As Object
                If reader IsNot Nothing Then
                    TextBox1.Text = name.ToLower
                    TextBox4.Text = reader.ToString.ToLower
                    Session("lname") = reader.ToString.ToLower
                    Session("email") = reader1.ToString
                Else
                    ClientScript.RegisterStartupScript(Me.GetType(), "myalert3", "alert('Please First Be a MOFO By Logging In  !!');", True)

                End If
                If reader1 IsNot Nothing Then
                    TextBox2.Text = reader1.ToString
               
           
                
                Else
                    'MsgBox("please enter valid credentials")
                    ClientScript.RegisterStartupScript(Me.GetType(), "myalert3", "alert('Please First Be a MOFO By Logging In !!');", True)
                End If
            
               
            
            Catch ex As Exception

                ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert('" + ex.Message + "');", True)
                connectme.Close()
            End Try
        End If
        
    End Sub
       
<html lang="en">
<body>
    <form id="form1" runat="server">
    <div>
    
        <table id="cart-summary" class="std table">
            <tr>
                <td>
                    Total products</td>
                <td class="price" style="color: #FFFFFF">
                    <%=Session.Item("cart")%></td>
            </tr>
            <tr style="">
                <td>
                    Shipping</td>
                <td class="price" style="color: #FFFFFF">
                    <span class="success">Rs. 49 </span>
                </td>
            </tr>
            <tr class="cart-total-price ">
                <td>
                    Total (tax excl.)</td>
                <td class="price" style="color: #FFFFFF">
                    <%=Session.Item("cart")%></td>
            </tr>
            <tr>
                <td>
                    Total tax</td>
                <td id="total-tax" class="price" style="color: #FFFFFF">
                    <%=Session.Item("tax")%> 
                </td>
            </tr>
            <tr style="color: #FFFFFF">
                <td>
                    Total</td>
                <td id="total-price" class="price" style="color: #FFFFFF">
                    <%=Session.Item("tobepayed")
                                                                              %></td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
