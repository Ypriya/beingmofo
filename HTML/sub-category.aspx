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
            lisignintees.Visible = False
            licratetees.Visible = False
            Label1tees.Visible = True
            Button1tees.Visible = True
            Label1tees.Text = "WELCOME " + sessionname
            
            
        

           
        End If
        'else
        
        
    End Sub

    Protected Sub Button1tees_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Session.Abandon()
        lisignintees.Visible = True
        licratetees.Visible = True
        
        
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selectedValue As String = rblist1.SelectedValue
        If selectedValue.Equals("1") Then
            Response.Redirect("399.aspx")
        ElseIf selectedValue.Equals("2") Then
            Response.Redirect("429.aspx")
        ElseIf selectedValue.Equals("3") Then
            Response.Redirect("449.aspx")
        End If
        'Response.Write(selectedValue)
       
        
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
                <form runat="server" >
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 no-margin no-padding">
                    <div class="pull-right">
                        <ul class="userMenu">
                            <li><a id="A1" href="account-1.html" runat="server"><span class="hidden-xs"> My Account</span> <i
                                    class="glyphicon glyphicon-user hide visible-xs "></i></a></li>
                            <li runat="server" id="lisignintees"><a href="account-1.aspx"  > <span class="hidden-xs">Sign In</span>
                                <i class="glyphicon glyphicon-log-in hide visible-xs "></i> </a></li>
                            <li class="hidden-xs" runat="server" id="licratetees"><a href="account-1.aspx" > Create
                                Account </a></li>
                            <li>
                                <asp:Label ID="Label1tees" runat="server" CssClass="bolder-style" 
                                    Visible="False" Height="193%" Width="159%" Font-Names="Century Gothic" 
                                    Font-Size="X-Small" ForeColor="#FFFFCC"></asp:Label>
                            </li>
                            <li>
                                <asp:Button ID="Button1tees" runat="server" CssClass="btn-primary" Font-Bold="True" 
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

    <!-- Main component call to action -->

    <div class="row">
        
    </div>
    <!-- /.row  -->

    <div class="row">

        <!--left column-->

        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="panel-group" id="accordionNo">
                <!--Category-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            
                        </h4>
                    </div>
                    <div id="collapseCategory" class="panel-collapse collapse in">
                        <div class="panel-body" style="color: #FFFFFF">
                            <ul class="nav nav-pills nav-stacked tree" style="color: #C0C0C0">
                                <li class="active dropdown-tree open-tree"><a class="dropdown-tree-a"> <span
                                        class="badge pull-right">21</span> beingMOFO COLLECTION </a>
                                    <ul class="category-level-2 dropdown-menu-tree">
                                        <li class="dropdown-tree open-tree"><a class="dropdown-tree-a" href="#">
                                            Tshirt  </a>              
                                              <ul class="category-level-2 dropdown-menu-tree">
                                                <li><a href="always.aspx">ALWAYS</a></li>
                                                <li><a href="manvsgod.aspx">MAN VS. GOD</a></li>
                                                <li><a href="homeboy.aspx">MY HOMEBOY</a></li>
                                                <li><a href="daredevil.aspx">DD ~ The man without fear</a></li>
                                                <li><a href="dearwomen.aspx">DEAR WOMEN</a></li>
                                                <li><a href="entourage.aspx">I'm with my ENTOURAGE !</a></li>
                                                <li><a href="extrafries.aspx">Exercise ? Extra Fries ?</a></li>
                                                <li><a href="friesb4guyz.aspx">FRIES BEFORE GUYS</a></li>
                                                <li><a href="goku.aspx">TRAINING TO BEAT GOKU</a></li>
                                                <li><a href="toxic.aspx">TOXIC</a></li>
                                                <li><a href="letitgrow.aspx">LET IT GROW</a></li>
                                                <li><a href="idnc.aspx">I DONUT CARE</a></li>
                                                <li><a href="superwomen.aspx">The SUperwoman !</a></li>
                                                <li><a href="johnycash.aspx">Ain't No Grave - JC</a></li>
                                                <li><a href="mofoclans.aspx">CoC - Mofo Clan</a></li>                                            
                                                <li><a href="ekvillian.aspx">Ek Villian</a></li>
                                                <li><a href="psleeper.aspx">PROFESSIONAL SLEEPER</a></li>
                                                <li><a href="pulpfiction.aspx">Pulp Fiction ~ BadAss MOFOs</a></li>
                                                <li><a href="stark.aspx">It's hard to be a STARK</a></li>
                                                <li><a href="urnot.aspx">You Never Know !</a></li>
                                                <li><a href="valarcannabis.aspx"> VALAR CANNABIS</a></li>
                                            </ul>
                                        </li>
                                       </li>
                                       </ul> 
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <!--/Category menu end-->

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><a class="collapseWill" data-toggle="collapse" 
                                href="#collapsePrice" style="color: #800000">
                            Price <span class="pull-left"> <i class="fa fa-caret-right"></i></span> </a> <span
                                class="pull-right clearFilter  label-danger"> Clear </span></h4>
                    </div>
                    <div id="collapsePrice" class="panel-collapse collapse in">
                        <div class="panel-body priceFilterBody">
                            <!-- -->
                            <!--label style="color: #000000"-->
                            
                               <asp:RadioButtonList ID="rblist1" runat="server">

    <asp:ListItem Text ="399" Value="1" />
    <asp:ListItem Text ="429" Value="2" />
    <asp:ListItem Text ="449" Value="3" />
    

    </asp:RadioButtonList>
                            
                            <asp:Button ID="Button1" runat="server" Text="Check" CssClass="btn btn-default" 
                                onclick="Button1_Click" />
                            
                        </div>
                    </div>
                </div>
                <!--/price panel end-->

                
                <!--/brand panel end-->

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><a data-toggle="collapse" href="#collapseColor" 
                                class="collapseWill" style="color: #800000">
                            Color <span class="pull-left"> <i class="fa fa-caret-right"></i></span> </a></h4>
                    </div>
                    <div id="collapseColor" class="panel-collapse collapse in">
                        <div class="panel-body smoothscroll maxheight300 color-filter">
                            <div class="block-element">
                                <label style="color: #000000">
                                    <input type="checkbox" name="tour" value="0"/>
                                    <small style="background-color:#333333"></small>
                                    Black <span></span> </label>
                            </div>
                            
                            <div class="block-element">
                                <label style="color: #000000">
                                    <input type="checkbox" name="tour" value="2"/>
                                    <small style="background-color:#c00707"></small>
                                    Red  </label>
                            </div>
                            
                            <div class="block-element">
                                <label style="color: #000000">
                                    <input type="checkbox" name="tour" value="3"/>
                                    <small style="background-color:#adadad"></small>
                                    Grey  </label>
                            </div>
                                <div class="block-element">
                                <label  style="color: #000000">
                                    <input type="checkbox" name="tour" value="3"/>
                                    <small style="background-color:#f3f1e7"></small>
                                     White </label>
                            </div>
                            <div class="block-element">
                                <label> &nbsp; </label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/color panel end-->
                
                <!--/discount  panel end-->
            </div>
        </div>


        <!--right column-->
        <div class="col-lg-9 col-md-9 col-sm-12">

            <div class="w100 clearfix category-top">
                <h2> TSHIRT </h2>

                     </div>
            <!--/.category-top-->

            <div class="w100 productFilter clearfix">
                <p class="pull-left"> Showing <strong>21</strong> products </p>

                <div class="pull-right ">
                    <div class="change-order pull-right">
                        
                    </div>
                    <div class="change-view pull-right">
                        <a href="#" title="Grid" class="grid-view"> <i class="fa fa-th-large"  style="color: #FFFFFF"></i> </a>
                        <a href="#" title="List" class="list-view"><i class="fa fa-th-list" style="color: #FFFFFF"></i></a></div>
                </div>
            </div>
            <!--/.productFilter-->

            <div class="row  categoryProduct xsResponse clearfix">
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="always.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/1.jpg"></a></div>
                        <div class="description">
                            <h4><a href="always.aspx" 
                                    style="font-weight: bold; font-size: x-large; color: #FFFFFF">ALWAYS</a></h4>

                            <div class="grid-description">
                                <p>ALWAYS. </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                After all this time ?<br />
"Always", said Snape.<br />

A potterhead should ALWAYS buy this tee. <br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite artwork<br /></p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL / </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="manvsgod.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/2.jpg"></a>

                            
                        </div>
                        <div class="description">
                            <h4><a href="manvsgod.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">MAN VS. GOD </a></h4>

                            <div class="grid-description">
                                <p> MAN VS. GOD </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> Superman : Your worst enemy is a clown.<br />
Batman : YOur's is a rock.<br />
Superman : -_-<br />

*battle begins*<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="homeboy.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/3.jpg"></a>

                              </div>
                        <div class="description">
                            <h4><a href="homeboy.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">MY HOMEBOY </a></h4>

                            <div class="grid-description">
                                <p>MY HOMEBOY </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                "A fight is not won bye one puch or kick.<br />
Either learn to endure or hire a bodyguard" ~ Bruce Lee<br />

Bruce will take care of everything. You need not worry about anything once you buy this tee !<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite fighter.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span> </div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="daredevil.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/4.jpg"></a></div>
                        <div class="description">
                            <h4><a href="daredevil.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">DD ~ The man without fear</a></h4>

                            <div class="grid-description">
                                <p>DD ~ The man without fear.
 </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                I'm not seeking penance for what I've done father.<br />
I'm asking for forgiveness for what I'm about to do. ~ Matt Murdock<br />

Show your love for the lone superhero who thinks he can make a difference without iron suit or magical hammer.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite superhero.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>449</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>
                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="dearwomen.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/5.jpg"></a></div>
                        <div class="description">
                            <h4><a href="dearwomen.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">DEAR WOMEN</a></h4>

                            <div class="grid-description">
                                <p>DEAR WOMEN </p>
                            </div>
                            <div class="list-description" >
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> A bitter woman says, "All men are the same!"</br>
A wise woman decides to stop choosing the same type of men.<br />

Brothers out there, get this tee and join the campaign !</br>

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="entourage.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/6.jpg"></a></div>
                        <div class="description">
                            <h4><a href="entourage.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">I'm with my ENTOURAGE !</a></h4>

                            <div class="grid-description">
                                <p>I'm with my ENTOURAGE ! </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Life changes, Friends don't !<br />

Buy this tee and show who you've got in your entourage.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="extrafries.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/7.jpg"></a></div>
                        <div class="description">
                            <h4><a href="extrafries.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">Exercise ? Extra Fries ? </a></h4>

                            <div class="grid-description">
                                <p>Exercise ? Extra Fries ?  </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> Bad days are best forgotten over french fries !

Get this tee and show your immense love for fries... Excercise can wait !

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design. </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>449</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="friesb4guyz.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/8.jpg" ></a></div>
                        <div class="description">
                            <h4><a href="friesb4guyz.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">FRIES BEFORE GUYS</a></h4>

                            <div class="grid-description">
                                <p>FRIES BEFORE GUYS </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Fries don't ask silly questions. Fries understand.<br />

Buy this tee and get some fries and let the guys wait while you have it.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite motto.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL</span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>449</span> <span class="old-price">$75</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="goku.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/9.jpg"></a></div>
                        <div class="description">
                            <h4><a href="goku.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">TRAINING TO BEAT GOKU</a></h4>

                            <div class="grid-description">
                                <p>TRAINING TO BEAT GOKU </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Sore ?<br />
Tired ?<br />
Out of breath ?<br />
Sweaty ?<br />
Good... It's working !<br />

Buy this tee, hit the gym and start training !<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite goal.<br /></p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span> </div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="toxic.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/10.jpg"></a></div>
                        <div class="description">
                            <h4><a href="toxic.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">TOXIC </a></h4>

                            <div class="grid-description">
                                <p>TOXIC </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Atheism is not a disbelief in gods or denial of gods; it is a lack of belief in gods.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="letitgrow.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/11.jpg"></a>


                        </div>
                        <div class="description">
                            <h4><a href="letitgrow.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">LET IT GROW</a></h4>

                            <div class="grid-description">
                                <p>LET IT GROW </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;">
                                 Beards are like boobs. The bigger they are, the longer you stare.<br />

Buy this tee and let it grow !<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br />
 </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> L / XL / XXL </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="idnc.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/12.jpg"></a>

                            </div>
                        <div class="description">
                            <h4><a href="idnc.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">I DONUT CARE</a></h4>

                            <div class="grid-description">
                                <p>I DONUT CARE</p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Eating a donut is the easiest way to tell the world thay you DONUT give a F**k.<br />

Fun Fact : The center of the donut is 100% fat free.<br />


A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite dialogue.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    
                </div>
                </div>
                <!--/.item-->
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="superwomen.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/13.jpg"></a>
                             </div>
                        <div class="description">
                            <h4><a href="superwomen.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">
                            The SUperwoman ! </a></h4>

                            <div class="grid-description">
                                <p>The SUperwoman ! </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Don't underestimate the seductive power of a decent vocabulary. <br />

Ladies out there, Get this tee and start reading some really nice shit !<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="johnycash.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/14.jpg"></a></div>
                                                               
                        <div class="description">
                            <h4><a href="johnycash.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">Ain't No Grave - JC</a></h4>

                            <div class="grid-description">
                                <p>Ain't No Grave - JC </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Sometimes I'm two people. <br />
Johnny is the nice one. <br />
Cash causes all the trouble.<br />
They fight. ~ Johnny Cash <br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite singer.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>449</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                           
                            </div>
                            <a href="mofoclans.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/15.jpg"></a></div>
                        <div class="description">
                            <h4><a href="mofoclans.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">CoC - Mofo Clan</a></h4>

                            <div class="grid-description">
                                <p>CoC - Mofo Clan</p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                History will be written by men who ride hogs !<br />

Buy this exclusive tee, join the mofo clan and clash on.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br />
 </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="ekvillian.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/16.jpg"></a></div>
                        <div class="description">
                            <h4><a href="ekvillian.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">Ek Villian</a></h4>

                            <div class="grid-description">
                                <p>Ek Villian </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                "My intellect is everything...Defeat is absurd." ~ Mojo Jojo <br />

Get this tee and prove that your childhood was awesome. #90sKid <br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite villian.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="psleeper.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/17.jpg"></a></div>
                        <div class="description">
                            <h4><a href="psleeper.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">PROFESSINAL SLEEPER</a></h4>

                            <div class="grid-description">
                                <p>PROFESSINAL SLEEPER </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                My Only relief in this life is sleeping...because when I'm sleeping, I'm not sad, angry or lonely. I'm nothing !<br />

Show your love for sleeping.<br />
BUY-WEAR-SLEEP-REPEAT<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your designation.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="pulpfiction.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/18.jpg"></a></div>
                        <div class="description">
                            <h4><a href="pulpfiction.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">Pulp Fiction ~ BadAss MOFOs</a></h4>

                            <div class="grid-description">
                                <p>Pulp Fiction ~ BadAss MOFOs </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                "And you will know my name is the Lord when I lay my vengeance upon thee." ~ Jules Winnfield<br />


Did our tee break your attention ?<br />
yes ... ?<br />
Then you must surely get one !<br />


A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br />
 </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>449</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="stark.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/19.jpg"></a></div>
                        <div class="description">
                            <h4><a href="stark.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">It's hard to be a STARK</a></h4>

                            <div class="grid-description">
                                <p>It's hard to be a STARK </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                A STARK can be brave when he's not home !<br />

10880 Malibu Point, 90265 ???<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF">S / M / L / XL / XXL  </span></div>
                        <div class="price"><span style="font-weight: bold; font-size: large; color: #FFFFFF">429</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="urnot.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/20.jpg"></a></div>
                        <div class="description">
                            <h4><a href="urnot.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">You Never Know !</a></h4>

                            <div class="grid-description">
                                <p>You Never Know ! </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                Nothing makes you beautiful than the belief that you are beautiful.<br />
But...<br />
Next time  you think of beautiful things, don't count yourself.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>399</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        <div class="image">
                            <div class="quickview">
                                <a title="Quick View" class="btn btn-xs  btn-quickview"
                                   data-target="#product-details-modal" data-toggle="modal"> Quick View </a>
                            </div>
                            <a href="valarcannabis.aspx"><img class="img-responsive" alt="img"
                                                                src="images/product/21.jpg"></a></div>
                        <div class="description">
                            <h4><a href="valarcannabis.aspx" style="font-weight: bold; font-size: x-large; color: #FFFFFF">VALAR CANNABIS</a></h4>

                            <div class="grid-description" >
                                <p>Valar Cannabis - All men must bake. </p>
                            </div>
                            <div class="list-description" style="color: #FF0000">
                                <p style="color: #C0C0C0;  font-weight: bold; font-size: medium; font-family: verdana;"> 
                                When you smoke the herb, it reveals you to yourself !<br />

BUy this tee and the herb and get stoned again.<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br /> </p>
                            </div>
                            <span class="size" style="font-weight: bold; font-size: large; color: #FFFFFF"> M / L / XL / XXL  </span></div>
                        <div class="price" style="font-weight: bold; font-size: large; color: #FFFFFF"><span>429</span></div>
                        <div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i
                                class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a></div>
                    </div>
                </div>
                <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6">
                    <div class="product">
                        <a data-placement="left" data-original-title="Add to Wishlist" data-toggle="tooltip"
                           class="add-fav tooltipHere">
                            <i class="glyphicon glyphicon-heart"></i>
                        </a>

                        
                        
                        
                    </div>
                </div>
                
                
                <!--/.item-->
            </div>
            <!--/.categoryProduct || product content end-->

            
        </div>
        <!--/.categoryFooter-->
    </div>
    <!--/right column end-->
</div>
<!-- /.row  -->
</div>
<!-- /main container -->
</form>
<div class="gap"></div>

<!-- Product Details Modal  -->

<!-- End Modal -->

<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3> Support </h3>
                    <ul>
                        <li class="supportLi">
                            <p> We are Ready To Help You </p>
                            <h4><a class="inline" href="callto:+9029442992"> <strong> <i class="fa fa-phone"> </i> 
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
</body>
</html>
