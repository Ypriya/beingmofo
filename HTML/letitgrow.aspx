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
    Public Sub addtocart_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("letitgrow") = True
        Dim QUANT As Integer = QTY.SelectedValue * 399
        
        Dim pricecart As Integer
        pricecart = QUANT + Session.Item("cart")
        Session.Item("cart") = pricecart
        CART.Text = "Cart Rs. " + pricecart.ToString
        Session("letitgrowqty") = QTY.SelectedValue.ToString
        Session("letitgrowsize") = SIZE.SelectedValue.ToString
        Session("letitgrowprice") = QUANT
 
        
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

    <!-- gall-item Gallery for gallery page -->
    <link href="assets/plugins/magnific/magnific-popup.css" rel="stylesheet">


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

<form id="Form2" runat="server" >
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
    
    <div >
    </div>
    <div>
    </div><div class="row">
        <div class="breadcrumbDiv col-lg-12" style="clip: rect(auto, auto, auto, auto); right: auto">
            <ul class="breadcrumb" style="right: auto">
                
            </ul>
        </div>
    </div>
    <div class="row transitionfx">

        <!-- left column -->

        <div class="col-lg-6 col-md-6 col-sm-6 productImageZoom">

            <div class='zoom' id='zoomContent'>
                <a class="gall-item" title="let it grow" href="images/product/subcategory/11.png"><img
                        class="zoomImage1 img-responsive" data-src="images/product/zoom/11.png"
                        src='images/product/subcategory/11.png' alt='Daisy on the Ohoopee'/></a>
            </div>


            

        </div>
        <!--/ left column end -->


        <!-- right column -->
        <div class="col-lg-6 col-md-6 col-sm-5">

            <h1 class="product-title"> Let It Grow</h1>

            <h3 class="product-code">Product Code : MFT011</h3>

            <div class="rating">
                <p><span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i
                        class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i
                        class="fa fa-star-o "></i></span> <span class="ratingInfo"> <span> / </span> <a
                        data-toggle="modal" data-target="#modal-review"> Write a review</a> </span></p>
            </div>
            <div class="product-price">
                <span class="price-sales"> Rs. 399</span>
                <span class="price-standard">Rs. 499</span>
            </div>

            <div class="details-description">
                <p> Beards are like boobs. The bigger they are, the longer you stare.<br />

Buy this tee and let it grow !<br />

A 180 GSM 100% premium cotton Being Mofo t-shirt, printed with your favorite design.<br />
 </p>
            </div>

            
            <!--/.color-details-->

            <div class="productFilter productFilterLook2">
                <div class="filterBox" style="color: #FF3300">
                    <asp:DropDownList ID="QTY" runat="server"
                    DataTextField="QUANTITY">
    
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
       
                    </asp:DropDownList>
                    
                </div>
                <div class="filterBox" style="color: #FF3300">
                     <asp:DropDownList ID="SIZE" runat="server"
                    DataTextField="SIZE">
    
       
        <asp:ListItem>L</asp:ListItem>
          <asp:ListItem>XL</asp:ListItem>
            <asp:ListItem>XXL</asp:ListItem>
       
                    </asp:DropDownList>
                </div>
            </div>
            <!-- productFilter -->

            <div class="cart-actions">
                <div >
                
                    <asp:Button ID="addtocart" runat="server" Text="ADD TO CART" class="addto" 
                        CssClass="btn-cart" ForeColor="#FF3300" onclick="addtocart_Click"  />
                        
                    <a class="link-wishlist wishlist" style="color: #FF3300">Add to Wishlist</a></div>

                <div style="clear:both"></div>

                <h3 class="incaps"><i class="fa fa fa-check-circle-o color-in"></i> In stock</h3>

                <h3 style="display:none" class="incaps"><i class="fa fa-minus-circle color-out"></i> Out of stock</h3>

                <h3 class="incaps"><i class="glyphicon glyphicon-lock"></i> Secure online ordering</h3>
            </div>
            <!--/.cart-actions-->

            <div class="clear"></div>

            
            <!--/.product-tab-->

            <div style="clear:both"></div>

            <div class="product-share clearfix">
                <p> SHARE </p>

                <div class="socialIcon">
                    <ul class="social">
                        <li><a href="https://www.facebook.com/Being-MoFo-145344112271573/timeline/"> <i class=" fa fa-facebook"> &nbsp; </i> </a></li>
                        <li><a href=" https://twitter.com/beingmofo"> <i class="fa fa-twitter"> &nbsp; </i> </a></li>
                        <li><a href="https://plus.google.com"> <i class="fa fa-google-plus"> &nbsp; </i> </a></li>
                        <li><a href=" https://instagram.com/beingmofo/"> <i class="fa-camera"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa fa-youtube"> &nbsp; </i> </a></li>
                        <li><a href="http://youtube.com"> <i class="fa-comment"> &nbsp; </i> </a></li><BR />
                    </ul>
            </div>
            <!--/.product-share-->

        </div>
            <!--/.product-share-->

        </div>
        <!--/ right column end -->

    </div>
    <!--/.row-->

    <div class="row recommended">

       <br /> 
       <div><br /><h1> &nbsp;</h1>
                <h1> &nbsp;</h1>
               
</div>

        <div id="SimilarProductSlider">
            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/10.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">TOXIC</a></h4>

                        <div class="price"><span>Rs.399</span></div>
                    </div>
                </div>
            </div>
            <!--/.item-->

            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/11.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">LET IT GROW</a></h4>

                        <div class="price"><span>RS. 399</span></div>
                    </div>
                </div>
            </div>
            <!--/.item-->

            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/12.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">I DONUT CARE</a></h4>

                        <div class="price"><span>Rs.399</span></div>
                    </div>
                </div>
            </div>
            
            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/2.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">DAREDEVIL</a></h4>

                        <div class="price"><span>Rs.449</span></div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/9.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">TRAINING TO BEAT GOKU</a></h4>

                        <div class="price"><span>Rs.429</span></div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="product"><a class="product-image"> <img src="images/product/subcategory/20.png" alt="img"> </a>

                    <div class="description">
                        <h4><a href="san-remo-spaghetti">YOU NEVER KNOW</a></h4>

                        <div class="price"><span>Rs.399</span></div>
                    </div>
                </div>
            </div>
            <!--/.item-->

            
            <!--/.item-->

            
            <!--/.item-->

            
            <!--/.item-->

            
            <!--/.item-->

            
            <!--/.item-->
        </div>
        <!--/.recommended-->

    


    <div style="clear:both"></div>


</div>


    <div style="clear:both"></div>


</div>
<!-- /main-container -->


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
</form>
    <div class="footer-bottom">

        <div class="container">
            <p class="pull-left">
                &copy;  beingMOFO 2015. All right reserved.
            </p>

            


        </div>

    </div>
    <!--/.footer-bottom-->
</footer>


<!-- Modal review start -->
<div class="modal  fade" id="modal-review" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
                <h3 class="modal-title-site text-center">PRODUCT REVIEW </h3>
            </div>
            <div class="modal-body">

                <h3 class="reviewtitle uppercase">You're reviewing: LET IT GROW</h3>

                <form>
                    <div class="form-group">
                        <label>
                            How do you rate this product? </label> <br>

                        <div class="rating-here">
                            <input type="hidden" class="rating-tooltip-manual" data-filled="fa fa-star fa-2x"
                                   data-empty="fa fa-star-o fa-2x" data-fractions="3"/>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rtext">Name</label>
                        <input type="text" class="form-control" id="rtext" placeholder="Your name" required>
                    </div>

                    <div class="form-group ">
                        <label>Review</label>
                        <textarea class="form-control" rows="3" placeholder="Your Review" required></textarea>

                    </div>


                    <button type="submit" class="btn btn-dark">Submit Review</button>
                </form>


            </div>

        </div>
        <!-- /.modal-content -->

    </div>
    <!-- /.modal-dialog -->

</div>
<!-- /.Modal review -->


<!-- Le javascript
================================================== -->

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
</script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- include jqueryCycle plugin -->
<script src="assets/js/jquery.cycle2.min.js"></script>
<!-- include easing plugin -->
<script src="assets/js/jquery.easing.1.3.js"></script>

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

<script src='assets/js/jquery.zoom.js'></script>
<script>
    $(document).ready(function () {
        //$('.swipebox').zoom();

        $('#zoomContent').zoom();
        $(".zoomThumb a").click(function () {
            var largeImage = $(this).find("img").attr('data-large');
            $(".zoomImage1").attr('src', largeImage);
            $(".zoomImg").attr('src', largeImage);
            $(".gall-item").attr('href', largeImage);

        });


        $('.gall-item').magnificPopup({
            type: 'image',
            gallery: {
                enabled: true
            }
        });

        $("#zoomContent").click(function () {
            //alert();
            $('.gall-item').trigger('click');
        });

        // CHANGE IMAGE MODAL THUMB

        $(".product-thumbList a").click(function () {
            var largeImage = $(this).find("img").attr('data-large');
            $(".mainImg").attr('src', largeImage);

        });

    });
</script>

<script src="assets/plugins/magnific/jquery.magnific-popup.min.js"></script>

<!-- jQuery minimalect // custom select   -->
<script src="assets/js/jquery.minimalect.min.js"></script>

<!-- include touchspin.js // touch friendly input spinner component   -->
<script src="assets/js/bootstrap.touchspin.js"></script>

<!-- include custom script for site  -->
<script src="assets/js/script.js"></script>


<script src="assets/plugins/rating/bootstrap-rating.min.js"></script>
<script>
    $(function () {

        $('.rating-tooltip-manual').rating({
            extendSymbol: function () {
                var title;
                $(this).tooltip({
                    container: 'body',
                    placement: 'bottom',
                    trigger: 'manual',
                    title: function () {
                        return title;
                    }
                });
                $(this).on('rating.rateenter', function (e, rate) {
                    title = rate;
                    $(this).tooltip('show');
                })
                        .on('rating.rateleave', function () {
                            $(this).tooltip('hide');
                        });
            }
        });

    });
</script>


</body>
</html>
