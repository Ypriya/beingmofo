<!DOCTYPE html>

<script runat="server">

    Protected Sub createacc_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim connectionstring = New System.Data.Odbc.OdbcConnection("DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;")
        'Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver}; Server=MYSQL5006.Smarterasp.net;Database=db_9c0eef_pycrms;Uid=9c0eef_pycrms;Pwd=password123;"
        Try

            'This is command class which will handle the query and connection object.

            'Dim connectme As System.Data.Odbc.OdbcConnection = New System.Data.Odbc.OdbcConnection(connectionstring)
            connectionstring.Open()
            Dim post As String
            post = TextBox1.Text
            lisignin.Visible = False
            licrate.Visible = False
            Label1.Visible = True
            Label1.Text = "WELCOME TO beingMOFO " + "'" + post + "'"
            Dim sqlquery1 As String = "insert into users(UserEmail,UserPassword,UserFirstName,UserLastName) values(' " + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox1.Text.ToLower + "','" + TextBox4.Text.ToLower + "');"
            Dim odbccommand1 = New System.Data.Odbc.OdbcCommand(sqlquery1, connectionstring)
            Dim qi1 As Integer
            qi1 = odbccommand1.ExecuteNonQuery()
            'MsgBox(q1.ToString)
            Label1.Text = qi1.ToString + "user successfully created"
            
            Dim q1 As String = "select max(UserID) from users "
            Dim cmd1 As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(q1, connectionstring)
            Dim i1 As Long
            i1 = cmd1.ExecuteScalar()
            Session("uid") = i1
            Session("name") = TextBox1.Text
            Session("cart") = 0
            ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert('Welcome" + TextBox1.Text + "' '" + TextBox4.Text + "');", True)
            Response.Redirect("index6.aspx")

        Catch ex As Exception
            
            Label1.Text = ex.Message

            'MsgBox(ex.Message)
            connectionstring.Close()
        End Try

        'Dim sqlquery As String = "select u_id from log_details where u_id=cast('" + TextBox1.Text + "' as unsigned) and password='" + TextBox2.Text + "' and type='" + post + "'"
        ' Dim command As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery, connectme)
        'Dim reader As Object = command.ExecuteScalar()
        'Dim o As Object
        'If reader IsNot Nothing Then

        '    LOG.Visible = True
        '    LOG.Text = "WELCOME      " '+ Session.Item("uid").ToString
        '    Session("uid") = Convert.ToInt32(TextBox1.Text)
        '    Session("type") = TextBox3.Text ' DropDownList1.SelectedValue.ToString
        'End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;"
        'Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver}; Server=MYSQL5006.Smarterasp.net;Database=db_9c0eef_pycrms;Uid=9c0eef_pycrms;Pwd=password123;"


        Try
            'This is command class which will handle the query and connection object.

            Dim connectme As System.Data.Odbc.OdbcConnection = New System.Data.Odbc.OdbcConnection(connectionstring)
            connectme.Open()
            
            Dim sqlquery As String = "select USerID from users where UserEmail= '" + TextBox6.Text + "'  and UserPassword='" + TextBox7.Text + "' "
            Dim sqlquery1 As String = "select USerFirstName from users where UserEmail= '" + TextBox6.Text + "'  and UserPassword='" + TextBox7.Text + "' "
            Dim command1 As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery1, connectme)
            
            Dim command As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery, connectme)
            Dim reader As Object = command.ExecuteScalar()
            Dim reader1 As Object = command1.ExecuteScalar()
            
            'Dim o As Object
            If reader IsNot Nothing Then
                'TextBox6.Text = "borrowed love"
                ClientScript.RegisterStartupScript(Me.GetType(), "myalert2", "alert('Login Succeeded');window.location='index6.aspx';", True)
                Session("uid") = Convert.ToInt32(reader)
                If reader1 IsNot Nothing Then
                    Session("name") = reader1.ToString
                    Session("cart") = 0
                    'Response.Redirect("index6.aspx")
                Else
                    ClientScript.RegisterStartupScript(Me.GetType(), "myalert6", "alert('Something Error !! Try Again');window.location='error-page.html';", True)
                
                End If
           
                
            Else
                'MsgBox("please enter valid credentials")
                ClientScript.RegisterStartupScript(Me.GetType(), "myalert3", "alert('Please Enter valid credentials !!');", True)
            End If
            connectme.Close()
        Catch ex As Exception
            
            ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert('" + ex.Message + "');", True)

        End Try
        
        
    End Sub
</script>

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/logo144.jpg"> 
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/logo114.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/logo72.jpg">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/logo144.jpg">
    <link rel="shortcut icon" href="assets/ico/logo144.jpg">
    <title>beingMOFO</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- Just for debugging purposes. -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- include pace script for automatic web page progress bar  -->


    <script>
        paceOptions = {
            elements: true
        };
    </script>

    <script src="assets/js/pace.min.js"></script>
</head>

<body style="background-image:url(images/bg/blackc1.jpg)"
         data-center="background-position: 100% 0px;"
         data-top-bottom="background-position: 100% -100px;">

<!-- /.Modal Login -->

<!-- Modal Signup start -->


<!-- Fixed navbar start -->

                    
<div class="navbar navbar-tshop navbar-fixed-top megamenu" role="navigation">
    <div class="navbar-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6">
                    <div class="pull-left ">
                        <ul class="userMenu ">
                            <li><a href="contact-us.html"> <span class="hidden-xs">HELP</span><i
                                    class="glyphicon glyphicon-info-sign hide visible-xs "></i> </a></li>
                            <li class="phone-number"><a href="callto:+88016000000"> <span> <i
                                    class="glyphicon glyphicon-phone-alt "></i></span> <span class="hidden-xs"
                                                                                             style="margin-left:5px"> 
                                9987888397 </span>
                            </a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 no-margin no-padding">
                    <div class="pull-right">
                        <ul class="userMenu">
                            <li><a href="account-1.html" runat="server"><span class="hidden-xs"> My Account</span> <i
                                    class="glyphicon glyphicon-user hide visible-xs "></i></a></li>
                            <li runat="server" id="lisignin"><a href="account-1.aspx"  > <span class="hidden-xs">Sign In</span>
                                <i class="glyphicon glyphicon-log-in hide visible-xs "></i> </a></li>
                            <li class="hidden-xs" runat="server" id="licrate"><a href="account-1.aspx" > Create
                                Account </a></li>
                            <li>
                                <asp:Label ID="Label1" runat="server" CssClass="bolder-style" 
                                    Visible="False" Height="193%" Width="159%" Font-Names="Century Gothic" 
                                    Font-Size="X-Small" ForeColor="#FFFFCC"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.navbar-top-->

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span
                    class="sr-only"> Toggle navigation </span> <span class="icon-bar"> </span> <span
                    class="icon-bar"> </span> <span class="icon-bar"> </span></button>
            <a class="navbar-brand " href="index6.aspx"> 
            <img src="images/logo/144x144.png" > </a>

            <!-- this part for mobile -->
            <div class="search-box pull-right hidden-lg hidden-md hidden-sm">
                <div class="input-group">
                    <button class="btn btn-nobg getFullSearch" type="button"><i class="fa fa-search"> </i></button>
                </div>                <!-- /input-group -->

            </div>
        </div>

        <!-- this part is duplicate from cartMenu  keep it for mobile -->
        <div class="navbar-cart  collapse">
            <div class="cartMenu  col-lg-4 col-xs-12 col-md-4 ">
                   

            </div>
            <!--/.cartMenu-->
        </div>
        <!--/.navbar-cart-->

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"> Home </a></li>
                <!-- change width of megamenu = use class > megamenu-fullwidth, megamenu-60width, megamenu-40width -->
                <li><a href="sub-category.aspx"> TEES</A></li>
                <li CLASS="disabled"><a href="#"> POSTERS</A></li>
                <li CLASS="disabled"><a href="#"> combo</A></li>
                <li class="dropdown megamenu-fullwidth"><a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    PAGES <b class="caret"> </b> </a>
                    <ul class="dropdown-menu">
                        <li class="megamenu-content">

                            <!-- megamenu-content -->

                            <h3 class="promo-1 no-margin hidden-xs"> 40+ HTML PAGES || AVAILABLE ONLY AT WRAP
                                BOOTSTRAP </h3>

                            <h3 class="promo-1sub hidden-xs"> Complete Parallax E-Commerce Boostrap Template, Responsive
                                on any Device, 10+ color Theme + Parallax Effect </h3>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> Home Pages </strong></p>
                                </li>
                                <li><a href="index.html"> Home Version 1 </a></li>
                                <li><a href="index2.html"> Home Version 2 </a></li>
                                <li><a href="index3.html"> Home Version 3 (BOXES) </a></li>
                                <li><a href="index4.html"> Home Version 4 (LOOK 2)</a></li>
                                <li><a href="index5.html"> Home Version 5 (LOOK 3)</a></li>
                                <li><a href="index6.html"> Home Version 6 (STORY)</a></li>
                                <li><a href="index-header2.html"> Header Version 2 </a></li>
                                <li><a href="index-header3.html"> Header Version 3 </a></li>
                                <li><a href="index-static-search.html">Header Version 4<br>
                                    ( Static Search Form)</a></li>
                            </ul>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> Featured Pages </strong></p>
                                </li>
                                <li><a href="category.html"> Category </a></li>
                                <li><a href="category2.html"> Category Style 2 [Parallax] </a></li>
                                <li><a href="sub-category.html"> Sub Category </a></li>
                                <li><a href="category-list.html"> Category List View </a></li>
                                <li><a href="category-product-hover.html"> Category [Product Hover] </a></li>
                                <li><a href="category-product-slide.html"> Category [Product Slide] </a></li>
                                <li><a href="product-details.html"> Product Details Version 1 </a></li>
                                <li><a href="product-details-style2.html"> Product Details Version 2 </a></li>
                                <li><a href="product-details-style3.html"> Product Details Version 3 (Custom Thumbnail
                                    Position)</a></li>
                                <li><a href="product-details-style4.html"> Product Details Version 4 (Zoom + Litebox
                                    )</a></li>
                            </ul>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> &nbsp; </strong></p>
                                </li>
                                <li><a href="cart.html"> Cart </a></li>
                                <li><a href="blog.html"> Blog </a></li>
                                <li><a href="blog-details.html"> Blog Details </a></li>
                                <li><a href="contact-us.html"> Contact us </a></li>
                                <li><a href="contact-us-2.html"> Contact us 2 (No Fixed Map) </a></li>
                                <li><a href="terms-conditions.html"> Terms &amp; Conditions </a></li>
                            </ul>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> Checkout </strong></p>
                                </li>
                                <li><a href="checkout-0.html"> Checkout Before </a></li>
                                <li><a href="checkout-1.html"> checkout step 1 </a></li>
                                <li><a href="checkout-2.html"> checkout step 2 </a></li>
                                <li><a href="checkout-3.html"> checkout step 3 </a></li>
                                <li><a href="checkout-4.html"> checkout step 4 </a></li>
                                <li><a href="checkout-5.html"> checkout step 5 </a></li>
                                <li><a href="thanks-for-order.html"> Thanks for order</a></li>
                            </ul>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> User Account </strong></p>
                                </li>
                                <li><a href="account-1.html"> Account Login </a></li>
                                <li><a href="account.html"> My Account </a></li>
                                <li><a href="my-address.html"> My Address </a></li>
                                <li><a href="user-information.html"> User information </a></li>
                                <li><a href="wishlist.html"> Wish List </a></li>
                                <li><a href="order-list.html"> Order list </a></li>
                                <li><a href="order-status.html"> Order Status </a></li>
                                <li><a href="forgot-password.html"> Forgot Password </a></li>
                            </ul>
                            <ul class="col-lg-2  col-sm-2 col-md-2 unstyled">
                                <li class="no-border">
                                    <p><strong> &nbsp; </strong></p>
                                </li>
                                <li><a href="single-product-modal.html"> Single Product Details Modal</a></li>
                                <li><a href="single-subscribe-modal.html"> Single Subscribe Modal</a></li>
                                <li><a href="error-page.html"> Error Page </a></li>
                                <li><a href="blank-page.html"> Blank Page </a></li>
                                <li><a href="form.html"> Basic Form Element </a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>

            <!--- this part will be hidden for mobile version -->
            <div class="nav navbar-nav navbar-right hidden-xs">
               

                <div class="search-box">
                    <div class="input-group">
                        <button class="btn btn-nobg getFullSearch" type="button"><i class="fa fa-search"> </i></button>
                    </div>
                    <!-- /input-group -->

                </div>
                <!--/.search-box -->
            </div>
            <!--/.navbar-nav hidden-xs-->
        </div>
        
        <!--/.nav-collapse -->

    </div>
    <!--/.container -->

    <div class="search-full text-right"><a class="pull-right search-close"> <i class=" fa fa-times-circle"> </i> </a>

        <div class="searchInputBox pull-right">
            <input type="search" data-searchurl="search?=" name="q" placeholder="start typing and hit enter to search"
                   class="search-input">
            <button class="btn-nobg search-btn" type="submit"><i class="fa fa-search"> </i></button>
        </div>
    </div>
    <!--/.search-full-->

</div>
<!-- /.Fixed navbar  -->

<div class="container main-container headerOffset">

    <div class="row">
        
    </div>

    <div class="row">

        <div class="col-lg-9 col-md-9 col-sm-7">
        <div></div>
        <div></div>
            <p class="section-title-inner">&nbsp;</p>
            <p class="section-title-inner">&nbsp;</p>
            <p class="section-title-inner">&nbsp;</p>
            <h1 class="section-title-inner"><span><i class="fa fa-lock"></i> Authentication</span></h1>
            <p class="section-title-inner">&nbsp;</p>

            <div class="row userInfo">

                <div class="col-xs-12 col-sm-6">
                    <h2 class="block-title-2"> Create an account </h2>
<form runat="server">
                        <div class="form-group">
                            <label>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;&nbsp;<br />
                            <asp:TextBox ID="TextBox1" runat="server"  
                                CssClass="form-control" Height="34px"></asp:TextBox>
                               <asp:RegularExpressionValidator Display = "Dynamic" SetFocusOnError="true" ControlToValidate = "TextBox1" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{3,}$" runat="server" ErrorMessage="Minimum 3 characters required.">
                                </asp:RegularExpressionValidator>
                            
                            <br />
                            <label>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                             <asp:RegularExpressionValidator Display = "Dynamic" SetFocusOnError="true" ControlToValidate = "TextBox4" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{3,}$" runat="server" ErrorMessage="Minimum 3 characters required.">
                                </asp:RegularExpressionValidator>
                            
                    </div>
                        <div class="form-group">
                            <label>Email address</label>
                            
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="TextBox2" ErrorMessage="Email is required"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>

 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
             ErrorMessage="Invalid Email" ControlToValidate="TextBox2"
             SetFocusOnError="True"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
</asp:RegularExpressionValidator>
                            <br />
&nbsp;<label>Password</label><br />
<script type="text/javascript">
        function ClientValidate(source, clientside_arguments) {
            //Test whether the length of the value is more than 6 characters
        if (clientside_arguments.Value.length >= 6) {
            clientside_arguments.IsValid = true;
        }
        else { clientside_arguments.IsValid = false };
    }
</script>

                            <asp:TextBox ID="TextBox5" runat="server" 
                                CssClass="form-control" Height="34px" TextMode="Password"></asp:TextBox>
                                <asp:CustomValidator ID="CustomValidator1" ClientValidationFunction="ClientValidate" ControlToValidate="Textbox5" runat="server" ErrorMessage="The password must be more than 6 characters." Display="Dynamic"></asp:CustomValidator>
                            </div>
                        <div class="form-group">
                            <label>Re-type Password</label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" 
                                CssClass="form-control" Height="34px" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
    ErrorMessage="Passwords do not match."    ControlToCompare="textbox5"
    ControlToValidate="Textbox3">
</asp:CompareValidator>
                            <br />
&nbsp;<asp:Button ID="createacc" runat="server" Text="Create an account" 
                            CssClass="btn-primary" onclick="createacc_Click" />
                        
                    </div>
                        <div class="error">
                        </div>

                                              
                </div>
                <div class="col-xs-12 col-sm-6">
                    <h2 class="block-title-2"><span>Already registered?          <div class="form-group">
                            <label>Email address</label>
                            <br />
&nbsp;<asp:TextBox ID="TextBox6" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                Password
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox7" runat="server" 
                                CssClass="form-control" Height="34px" TextMode="Password"></asp:TextBox>
                                <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="41px" 
                                onclick="Button1_Click" Text="READY FOR BEINGMOFO ?" Width="183px" CausesValidation="False"/>
                        
                            <br />
                        
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server"><span>Forgot Password</span></asp:LinkButton>
                        </div>
                        &nbsp;</div>
            </div>
            <!--/row end-->

        </div>

    </div>
    <!--/row-->

    <div style="clear:both"></div>
</div>
                        
               </form>
                    
<!-- /wrapper -->

<div class="gap"></div>


<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3> Support </h3>
                    <ul>
                        <li class="supportLi">
                            <p> We are Ready To Help You </p>
                            <h4><a class="inline" href="callto:+9029444992"> <strong> <i class="fa fa-phone"> </i> 
                               90 29 444 992</strong> </a></h4>
                            <h4><a class="inline" href="priyavaity5@gmail.com"> <i class="fa fa-envelope-o"> </i>
                                priyavaity5@gmail.com </a></h4>
                        </li>
                    </ul>
                </div>
                
                <div style="clear:both" class="hide visible-xs"></div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Information </h3>
                    <ul>
                        
                        <li><a href="about-us.html"> About us </a></li>
                        <li><a href="contact-us.html"> Contact us </a></li>
                        <li><a href="terms-conditions.html"> Terms &amp; Conditions </a></li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> My Account </h3>
                    <ul class="social">
                        <li><a href="https://www.facebook.com/Being-MoFo-145344112271573/timeline/"> <i class=" fa fa-facebook"> &nbsp; </i> </a></li>
                        <li><a href=" https://twitter.com/beingmofo"> <i class="fa fa-twitter"> &nbsp; </i> </a></li>
                        <li><a href="https://plus.google.com"> <i class="fa fa-google-plus"> &nbsp; </i> </a></li>
                        <li><a href=" https://instagram.com/beingmofo/"> <i class="fa-camera"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa fa-youtube"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa-comment"> &nbsp; </i> </a></li>
                    </ul>
                </div>
                <div style="clear:both" class="hide visible-xs"></div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> Stay in touch </h3>
                    <ul>
                        <li>
                            <div class="input-append newsLatterBox text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> Subscribe <i
                                        class="fa fa-long-arrow-right"> </i></button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li><a href="http://facebook.com"> <i class=" fa fa-facebook"> &nbsp; </i> </a></li>
                        <li><a href="http://twitter.com"> <i class="fa fa-twitter"> &nbsp; </i> </a></li>
                        <li><a href="https://plus.google.com"> <i class="fa fa-google-plus"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa fa-pinterest"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa fa-youtube"> &nbsp; </i> </a></li>
                    </ul>
                </div>
            </div>
            <!--/.row-->
        </div>
        <!--/.container-->
    </div>
    <!--/.footer-->

    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> &copy; beingMOFO 2015. All right reserved. </p>

            
        </div>
    </div>
    <!--/.footer-bottom-->
</footer>

<!-- Le javascript
================================================== -->

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
</script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- include  parallax plugin -->
<script type="text/javascript" src="assets/js/jquery.parallax-1.1.js"></script>

<!-- optionally include helper plugins -->
<script type="text/javascript" src="assets/js/helper-plugins/jquery.mousewheel.min.js"></script>

<!-- include mCustomScrollbar plugin //Custom Scrollbar  -->

<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.js"></script>

<!-- include checkRadio plugin //Custom check & Radio  -->
<script type="text/javascript" src="assets/js/ion-checkRadio/ion.checkRadio.min.js"></script>

<!-- include grid.js // for equal Div height  -->
<script src="assets/js/grids.js"></script>

<!-- include carousel slider plugin  -->
<script src="assets/js/owl.carousel.min.js"></script>

<!-- jQuery minimalect // custom select   -->
<script src="assets/js/jquery.minimalect.min.js"></script>

<!-- include touchspin.js // touch friendly input spinner component   -->
<script src="assets/js/bootstrap.touchspin.js"></script>

<!-- include validate.js // jquery plugin   -->
<script src="assets/js/jquery.validate.js"></script>

<script>
    $().ready(function () {
        // validate the comment form when it is submitted
        $("#regForm").validate();
        // validate signup form on keyup and submit
        $(".regForm").validate({
            errorLabelContainer: $(".regForm div.error")
        });
    });
</script>


<!-- include custom script for site  -->
<script src="assets/js/script.js"></script>
</body>
</html>

