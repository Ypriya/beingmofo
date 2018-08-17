<!DOCTYPE html>

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
            
            
        

           
        End If
        'else
        
        
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
        Session("detailname") = TextBox1.Text
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


    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-7">
            <h1 class="section-title-inner"><span><i
                    class="glyphicon glyphicon-shopping-cart"></i> Shopping cart </span></h1>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-5 rightSidebar">
            <h4 class="caps"><a href="sub-category.aspx" style="color: #FFFFFF"><i class="fa fa-chevron-left"></i> Back to shopping </a></h4>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-12">
            <div class="row userInfo">
                <div class="col-xs-12 col-sm-12">
                    <div class="w100 clearfix">
                        <ul class="orderStep orderStepLook2">
                            <li  style="color: #CC0000"><a href="checkout-1.aspx"> <i class="fa fa-map-marker " style="color: #000000"></i> <span style="color: #000000"> address</span>
                            </a></li>
                            <li class="active" style="color: #000000"><a href="checkout-4.aspx"><i class="fa fa-money  " 
                                    style="color: #000000"> </i><span style="color: #000000">Payment</span> </a></li>
                            <li style="color: #000000"><a href="checkout-5.aspx"><i class="fa fa-check-square " 
                                    style="color: #000000"> </i><span style="color: #000000">Order</span></a>
                            </li>
                        </ul>
                        <!--/.orderStep end-->
                    </div>
                    <div class="w100 clearfix">
                        <div class="row userInfo">
                            <div class="col-lg-12">
                                <h2 class="block-title-2"> Payment method </h2>

                                <p>Please select the preferred shipping method to use on this order.</p>
                                <hr>
                            </div>
                            <div class="col-xs-12 col-sm-12">
                                <div class="paymentBox">
                                    <div class="panel-group paymentMethod" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading panel-heading-custom">
                                                <h4 class="panel-title"><a class="cashOnDelivery" data-toggle="collapse"
                                                                           data-parent="#accordion" href="#collapseOne">
                                                    <span class="numberCircuil" style="color: #CC0000">Option 1</span> 
                                                    <strong style="color: #CC0000"> Cash on
                                                    Delivery</strong> </a></h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    <p style="color: #000000">All transactions are secure and encrypted, and we neverstor To
                                                        learn more, please view our privacy policy.</p>
                                                    <br>
                                                    <label class="radio-inline" for="radios-4" style="color: #CC0000">
                                                        <input name="radios" id="radios-4" value="4" type="radio">
                                                        Cash On Delivery </label>

                                                    <div class="form-group">
                                                        <label for="CommentsOrder" style="color: #000000">Add Comments About Your Order</label>
                                                        <asp:TextBox ID="TextBox1" cssclass="form-control" runat="server" Height="6" Width="20" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="checkbox-inline" for="checkboxes-1" style="color: #000000">
                                                            <input name="checkboxes" id="checkboxes-1" value="1"
                                                                   type="checkbox">
                                                            I have read and agree to the 
                                                        <a
                                                                href="terms-conditions.html" style="color: #000000">Terms & Conditions</a>
                                                        </label>
                                                    </div>
                                                    <div class="pull-right"><a href="checkout-5.aspx"
                                                                               class="btn btn-primary btn-small "> Order
                                                        &nbsp; <i class="fa fa-arrow-circle-right"></i> </a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading panel-heading-custom">
                                                <h4 class="panel-title"><a data-toggle="collapse"
                                                                           data-parent="#accordion" href="#collapseTwo">
                                                    <span class="numberCircuil">Option 2</span><strong> PayPal</strong>
                                                </a></h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>All transactions are secure and encrypted, and we neverstor To
                                                        learn more, please view our privacy policy.</p>
                                                    <br>
                                                    <label class="radio-inline" for="radios-3" style="">
                                                        <input  CLASS="disabled" name="radios" id="radios-3" value="4" type="radio">
                                                        <img src="images/site/payment/paypal-small.png" height="18"
                                                             alt="paypal"> Checkout with Paypal </label>

                                                    <div class="form-group">
                                                        <label for="CommentsOrder2">Add Comments About Your
                                                            Order</label>
                                                        <textarea id="CommentsOrder2" class="form-control"
                                                                  name="CommentsOrder2" cols="26" rows="3"></textarea>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <label class="checkbox-inline" for="checkboxes-0">
                                                            <input name="checkboxes" id="checkboxes-0" value="1"
                                                                   type="checkbox">
                                                            I have read and agree to the <a
                                                                href="terms-conditions.html">Terms & Conditions</a>
                                                        </label>
                                                    </div>
                                                    <div class="pull-right"><a href="checkout-5.html"
                                                                               class="btn btn-primary btn-small "> Order
                                                        &nbsp; <i class="fa fa-arrow-circle-right"></i> </a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading panel-heading-custom">
                                                <h4 class="panel-title"><a  CLASS="disabled" class="masterCard" data-toggle="collapse"
                                                                           data-parent="#accordion"
                                                                           href="#collapseThree"> <span
                                                        class="numberCircuil">Option 3</span> <strong>
                                                    MasterCard</strong> </a></h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>All transactions are secure and encrypted, and we neverstor To
                                                        learn more, please view our privacy policy.</p>
                                                    <br>

                                                    <div class="panel open">
                                                        <div class="creditCard">
                                                            <div class="cartBottomInnerRight paymentCard">
                                                            </div>
                                                            <span>Supported</span> <span>Credit Cards</span>

                                                            <div class="paymentInput">
                                                                <label for="CardNumber">Credit Card Number *</label>
                                                                <br>
                                                                <input id="CardNumber" type="text" name="Number">
                                                            </div>
                                                            <!--paymentInput-->
                                                            <div class="paymentInput">
                                                                <label for="CardNumber2">Name on Credit Card *</label>
                                                                <br>
                                                                <input type="text" name="CardNumber2" id="CardNumber2">
                                                            </div>
                                                            <!--paymentInput-->
                                                            <div class="paymentInput">
                                                                <div class="form-group">
                                                                    <label>Expiration date *</label>
                                                                    <br>

                                                                    <div class="col-lg-4 col-md-4 col-sm-4 no-margin-left no-padding">
                                                                        <select required aria-required="true"
                                                                                name="expire">
                                                                            <option value="">Month</option>
                                                                            <option value="1">01 - January</option>
                                                                            <option value="2">02 - February</option>
                                                                            <option value="3">03 - March</option>
                                                                            <option value="4">04 - April</option>
                                                                            <option value="5">05 - May</option>
                                                                            <option value="6">06 - June</option>
                                                                            <option value="7">07 - July</option>
                                                                            <option value="8">08 - August</option>
                                                                            <option value="9">09 - September</option>
                                                                            <option value="10">10 - October</option>
                                                                            <option value="11">11 - November</option>
                                                                            <option value="12">12 - December</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                                                        <select required aria-required="true"
                                                                                name="year">
                                                                            <option value="">Year</option>
                                                                            <option value="2013">2013</option>
                                                                            <option value="2014">2014</option>
                                                                            <option value="2015">2015</option>
                                                                            <option value="2016">2016</option>
                                                                            <option value="2017">2017</option>
                                                                            <option value="2018">2018</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2023">2023</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--paymentInput-->

                                                            <div style="clear:both"></div>
                                                            <div class="paymentInput clearfix">
                                                                <label for="VerificationCode">Verification Code
                                                                    *</label>
                                                                <br>
                                                                <input type="text" id="VerificationCode"
                                                                       name="VerificationCode" style="width:90px;">
                                                                <br>
                                                            </div>
                                                            <!--paymentInput-->

                                                            <div>
                                                                <input type="checkbox" name="saveInfo" id="saveInfoid">
                                                                <label for="saveInfoid">&nbsp;Save my Card
                                                                    information</label>
                                                            </div>
                                                        </div>
                                                        <!--creditCard-->

                                                        <div class="pull-right">
                                                            <asp:Button ID="Button1" cssclass="btn btn-primary small" runat="server" Text="ORDER" /> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--/row-->

                            </div>
                        </div>
                    </div>
                    <!--/row end-->

                    <div class="cartFooter w100">
                        <div class="box-footer">
                            <div class="pull-left"><a class="btn btn-default" href="checkout-3.html"> <i
                                    class="fa fa-arrow-left"></i> &nbsp; Billing address </a></div>
                        </div>
                    </div>
                </div>

                <!--/ cartFooter -->

            </div>
        </div>
        <!--/row end-->

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
                                    <td class="price" id="total-tax" style="color: #FFFFFF"><%=((Session.Item("qtycount") / 2) * 49)%> </td>
                                </tr>
                                <tr style="color: #FFFFFF">
                                    <td> Total</td>
                                    <td class="price" id="total-price" style="color: #FFFFFF"><%=Session.Item("cart") + ((Session.Item("qtycount") / 2) * 49)
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
        </div>
        <!--/rightSidebar-->

    </div>
    <!--/row-->

    <div style="clear:both"></div>
</div>
<!-- /.main-container -->
<div class="gap"></div>


<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3> Support </h3>
                    <ul>
                        <li class="supportLi">
                            <p> Lorem ipsum dolor sit amet, consectetur </p>
                            <h4><a class="inline" href="callto:+88016000000"> <strong> <i class="fa fa-phone"> </i> 88
                                0160 000 000</strong> </a></h4>
                            <h4><a class="inline" href="mailto:help@tshopweb.com"> <i class="fa fa-envelope-o"> </i>
                                help@tshopweb.com </a></h4>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Shop </h3>
                    <ul>
                        <li><a href="index.html"> Home </a></li>
                        <li><a href="category.html"> Category </a></li>
                        <li><a href="category2.html"> Category Style 2 [Parallax] </a></li>
                        <li><a href="sub-category.html"> Sub Category </a></li>
                    </ul>
                </div>

                <div style="clear:both" class="hide visible-xs"></div>

                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Information </h3>
                    <ul>
                        <li><a href="product-details.html"> Product Details </a></li>
                        <li><a href="product-details-style2.html"> Product Details Version 2 </a></li>
                        <li><a href="cart.html"> Cart </a></li>
                        <li><a href="about-us.html"> About us </a></li>
                        <li><a href="about-us-2.html"> About us 2 </a></li>
                        <li><a href="contact-us.html"> Contact us </a></li>
                        <li><a href="contact-us-2.html"> Contact us 2 </a></li>
                        <li><a href="terms-conditions.html"> Terms &amp; Conditions </a></li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> My Account </h3>
                    <ul>
                        <li><a href="account-1.html"> Account Login </a></li>
                        <li><a href="account.html"> My Account </a></li>
                        <li><a href="my-address.html"> My Address </a></li>
                        <li><a href="wishlist.html"> Wish List </a></li>
                        <li><a href="order-list.html"> Order list </a></li>
                        <li><a href="order-status.html"> Order Status </a></li>
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
            <p class="pull-left"> &copy; TSHOP 2014. All right reserved. </p>

            <div class="pull-right paymentMethodImg"><img height="30" class="pull-right"
                                                          src="images/site/payment/master_card.png" alt="img"> <img
                    height="30" class="pull-right" src="images/site/payment/visa_card.png" alt="img"><img height="30"
                                                                                                          class="pull-right"
                                                                                                          src="images/site/payment/paypal.png"
                                                                                                          alt="img">
                <img height="30" class="pull-right" src="images/site/payment/american_express_card.png" alt="img"> <img
                        height="30" class="pull-right" src="images/site/payment/discover_network_card.png" alt="img">
                <img height="30" class="pull-right" src="images/site/payment/google_wallet.png" alt="img">

            </div>
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
