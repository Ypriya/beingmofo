<!DOCTYPE html>
<html lang="en">
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;"
        'Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver}; Server=MYSQL5006.Smarterasp.net;Database=db_9c0eef_pycrms;Uid=9c0eef_pycrms;Pwd=password123;"
        Dim inicart As Integer
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

                Dim sqlquery As String = "select UserLastName from users where UserFirstName= '" + name.ToLower + "' and UserID= cast('" + id + "' as unsigned); "
                Dim sqlquery1 As String = "select UserEmail from users where UserFirstName='" + name.ToLower + "' and UserID= cast('" + id + "' as unsigned); "
                Dim command1 As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery1, connectme)
            
                Dim command As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(sqlquery, connectme)
                Dim reader As Object = command.ExecuteScalar()
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
        

           
       

    Public Sub Button1det_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1det.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("index6.aspx")
        Label1det.Visible = False
        Button1det.Visible = False
        lisignindet.Visible = True
        licratedet.Visible = True
    End Sub
    Public Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;"
        Dim connectme As System.Data.Odbc.OdbcConnection = New System.Data.Odbc.OdbcConnection(connectionstring)
        Try
            'This is command class which will handle the query and connection object.
            '  TO DISPLAY NAME AND E-MAIL FROM DATABASE
           
            connectme.Open()
            Dim id As String = Session.Item("uid")
            Session("add1") = TextBox6.Text
            Session("add2") = TextBox3.Text
            Session("city") = TextBox5.Text
            Session("state") = state.SelectedValue.ToString
            Session("zip") = TextBox7.Text
            Session("country") = country.SelectedValue.ToString
            Session("phone") = TextBox9.Text
            Session("comments") = TextBox8.Text
            Session("addref") = TextBox10.Text
            Dim uq As String = "update users set UserAddress= '" + TextBox6.Text + "' ,UserAddress2 = '" + TextBox3.Text + "', UserCity='" + TextBox5.Text + "',UserZip='" + TextBox7.Text + "' ,UserState='" + state.SelectedValue.ToString + "',UserCountry='" + country.SelectedValue.ToString + "', UserPhone='" + TextBox9.Text + "',comments='" + TextBox8.Text + "' ,AddressReference='" + TextBox10.Text + "' where UserID=cast('" + id + "' as unsigned) ;"
            Dim command3 As System.Data.Odbc.OdbcCommand = New System.Data.Odbc.OdbcCommand(uq, connectme)
            Dim qi3 As Integer
            qi3 = command3.ExecuteNonQuery()
           
            ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert('Address Saved Successfully');", True)
            Response.Redirect("checkout-4.aspx")
            'MssgBox(qi3.ToString)
            
        Catch ex As Exception

            ClientScript.RegisterStartupScript(Me.GetType(), "myalert", "alert('" + ex.Message + "');", True)
            connectme.Close()
        End Try
       
        
        
    End Sub
    </script>
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
<form runat="server">

<!-- Modal Login start -->

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
                            <li><a href="contact-us.aspx"> <span class="hidden-xs">HELP</span><i
                                    class="glyphicon glyphicon-info-sign hide visible-xs "></i> </a></li>
                            <li class="phone-number"><a href="callto:+9987888397"> <span> <i
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
                            <li><a id="A1" href="account-1.aspx" runat="server"><span class="hidden-xs"> My Account</span> <i
                                    class="glyphicon glyphicon-user hide visible-xs "></i></a></li>
                            <li runat="server" id="lisignindet"><a href="account-1.aspx"  > <span class="hidden-xs">Sign In</span>
                                <i class="glyphicon glyphicon-log-in hide visible-xs "></i> </a></li>
                            <li class="hidden-xs" runat="server" id="licratedet"><a href="account-1.aspx" > Create
                                Account </a></li>
                            <li>
                                <asp:Label ID="Label1det" runat="server" CssClass="bolder-style" 
                                    Visible="False" Height="193%" Width="159%" Font-Names="Century Gothic" 
                                    Font-Size="X-Small" ForeColor="#FFFFCC"></asp:Label>
                            </li>
                            <li>
                                <asp:Button ID="Button1det" runat="server" CssClass="btn-primary" Font-Bold="True" 
                                    Text="LOG OUT" Visible="False" />
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-cart"><i
                    class="fa fa-shopping-cart colorWhite"> </i> <span
                    class="cartRespons colorWhite"> Cart </span></button>
            <a class="navbar-brand " href="index6.aspx"> 
            <img src="images/logo/144x144%2002.png" > </a>

            <!-- this part for mobile -->
            <div class="search-box pull-right hidden-lg hidden-md hidden-sm">
                <div class="input-group">
                    <button class="btn btn-nobg getFullSearch" type="button"><i class="fa fa-search"> </i></button>
                </div>
                <!-- /input-group -->

            </div>
        </div>

        <!-- this part is duplicate from cartMenu  keep it for mobile -->
        
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
                    <div>
                    <asp:button ID="CART" runat="server" Text="Cart Rs. 00" CssClass="fa fa-shopping-cart colorBlack cartRespons colorBlack" PostBackUrl="cart.aspx" BorderColor="#CC0000" ForeColor="Black"></asp:button>
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
        <div class="breadcrumbDiv col-lg-12">
            <ul class="breadcrumb">
                <li><a href="index6.aspx">Home</a></li>
                <li><a href="cart.aspx">Cart</a></li>
                <li class="active"> Checkout</li>
            </ul>
        </div>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-7">
            <h1 class="section-title-inner"><span><i
                    class="glyphicon glyphicon-shopping-cart"></i> Shopping cart </span></h1>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-5 rightSidebar">
            <h4 class="caps"><a href="sub-category.aspx" style="color: #FFFFFF"><i class="fa fa-chevron-left"></i> Back to shopping </a></h4>
        </div>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-12">
            <div class="row userInfo">
                <div class="col-xs-12 col-sm-12">
                    <div class="w100 clearfix">
                        <ul class="orderStep orderStepLook2">
                            <li class="active"><a href="checkout-1.aspx"> <i class="fa fa-map-marker " 
                                    style="color: #000000"></i> <span style="color: #000000"> address</span>
                            </a></li>
                            <li><a href="checkout-4.aspx"><i class="fa fa-money  " style="color: #000000"> </i>
                                <span style="color: #000000">Payment</span> </a></li>
                            <li><a href="checkout-5.aspx"><i class="fa fa-check-square " style="color: #000000"> </i>
                                <span style="color: #000000">Order</span></a>
                            </li>
                        </ul>
                        <!--/.orderStep end-->
                    </div>


                    <div class="w100 clearfix">
                        <div class="row userInfo">
                            <div class="col-lg-12">
                                <h2 class="block-title-2"> To add a new address, please fill out the form below. </h2>
                            </div>

                           
                                <div class="col-xs-12 col-sm-6">
                                    <div >
                                        
                                               <label>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;&nbsp;<br />
                            <asp:TextBox ID="TextBox1" runat="server"  
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                    </div>
                                    <div class="form-group required">
                                        
                                               <label>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                    </div>
                                    
                                    <div class="form-group">
                                        
                                        <label>Email address</label>
                            
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                
                            <br />
                                    </div>
                                    
                                    <div class="form-group required">
                                        <label for="InputAddress">Address <sup>*</sup> </label>
                                       <asp:TextBox ID="TextBox6" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
        ControlToValidate="textbox6" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAddress2">Address (Line 2) </label>
                                       <asp:TextBox ID="TextBox3" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                
                                    </div>
                                    <div class="form-group required">
                                        <label for="InputCity">City <sup>*</sup> </label>
                                        <asp:TextBox ID="TextBox5" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
        ControlToValidate="textbox5" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group required">
                                        <label for="InputState">State <sup>*</sup> </label>

                                        <asp:DropDownList ID="state" runat="server"
                    DataTextField="state" ForeColor="Black">
    
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chhattisgarh</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu And Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Odisha</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Telangana</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
        
        
       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ControlToValidate="state" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>--
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="form-group required">
                                        <label for="InputZip">Zip / Postal Code <sup>*</sup> </label>
                                       <asp:TextBox ID="TextBox7" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
        ControlToValidate="textbox7" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group required">
                                        <label for="InputCountry">Country <sup>*</sup> </label>
                                         <asp:DropDownList ID="country" runat="server"
                    DataTextField="state" ForeColor="Black">
    
        <asp:ListItem>India</asp:ListItem>
        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label >Comments</label>
                                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group required">
                                        <label for="InputMobile">Mobile phone <sup>*</sup></label>
                                        <asp:TextBox ID="TextBox9" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ControlToValidate="textbox9" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>
                                    <div >
                                        <label for="addressAlias">Please assign an address title for future reference.
                                            <sup>*</sup></label>
                                        <asp:TextBox ID="TextBox10" runat="server" 
                                CssClass="form-control" Height="34px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
        ControlToValidate="textbox10" ErrorMessage="THIS IS REQUIRED"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            
                        </div>
                        <!--/row end-->

                    </div>
                    <div class="cartFooter w100">
                        <div class="box-footer">
                            <div class="pull-left"><a class="btn btn-default" href="sub-category.aspx"> <i
                                    class="fa fa-arrow-left"></i> &nbsp; Back to Shop </a></div>
                            <div class="pull-right">
                            <asp:Button ID="Button1" cssClass="btn btn-primary btn-small" runat="server" Text="Continue" />
                                 </div>
                        </div>
                    </div>
                    <!--/ cartFooter -->

                </div>
            </div>
            <!--/row end-->

        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 rightSidebar">
            <div class="w100 cartMiniTable">
                <table id="cart-summary" class="std table">
                                <tbody>
                                <tr>
                                    <td>Total products</td>
                                    <td class="price" style="color: #FFFFFF"><%=Session.Item("cart")%></td>
                                </tr>
                                <tr style="">
                                    <td>Shipping</td>
                                    <td class="price" style="color: #FFFFFF"><span class="success">Rs. 49 </span></td>
                                </tr>
                                <tr class="cart-total-price ">
                                    <td>Total (tax excl.)</td>
                                    <td class="price" style="color: #FFFFFF"><%=Session.Item("cart")%></td>
                                </tr>
                                <tr>
                                    <td>Total tax</td>
                                    <td class="price" id="total-tax" style="color: #FFFFFF"><%=Session.Item("tax")%> </td>
                                </tr>
                                <tr style="color: #FFFFFF">
                                    <td> Total</td>
                                    <td class="price" id="total-price" style="color: #FFFFFF"><%=Session.Item("tobepayed")
                                                                              %></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        
                                    </td>
                                </tr>
                                </tbody>
                                <tbody>
                                </tbody>
                            </table>
            </div>
            <!--  /cartMiniTable-->

        </div>
        <!--/rightSidebar-->

    </div>
    <!--/row-->

    <div style="clear:both"></div>
</div>
<!-- /.main-container-->
<div class="gap"></div>


<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3> Support </h3>
                    <ul>
                        <li class="supportLi">
                            <p> WE ARE READY TO HELP YOU !! </p>
                            <h4><a class="inline" href="callto:+9987888397"> <strong> <i class="fa fa-phone"> </i> 9987888397</strong> </a></h4>
                            <h4><a class="inline" href="mailto:help@tshopweb.com"> <i class="fa fa-envelope-o"> </i>
                                help@tshopweb.com </a></h4>
                        </li>
                    </ul>
                </div>
                

                <div style="clear:both" class="hide visible-xs"></div>

                
                

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
                        <li><a href="https://www.facebook.com/Being-MoFo-145344112271573/timeline/"> <i class=" fa fa-facebook"> &nbsp; </i> </a></li>
                        <li><a href=" https://twitter.com/beingmofo"> <i class="fa fa-twitter"> &nbsp; </i> </a></li>
                        <li><a href="https://plus.google.com"> <i class="fa fa-google-plus"> &nbsp; </i> </a></li>
                        <li><a href=" https://instagram.com/beingmofo/"> <i class="fa-camera"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa fa-youtube"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa-comment"> &nbsp; </i> </a></li>
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

<!-- include custom script for site  -->
<script src="assets/js/script.js"></script>
</form>
</body>
</html>
