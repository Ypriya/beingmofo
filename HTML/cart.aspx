<!DOCTYPE html>
<script runat="server">

    public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost; DATABASE=beingmofo; UID=yogesh; PASSWORD=py123;"
        'Dim connectionstring As String = "DRIVER={MySQL ODBC 5.1 Driver}; Server=MYSQL5006.Smarterasp.net;Database=db_9c0eef_pycrms;Uid=9c0eef_pycrms;Pwd=password123;"
        Dim inicart As Integer
        inicart = Session.Item("cart")
        CART.Text = "Cart Rs. " + inicart.ToString
        Dim sessionname As String
        sessionname = Session.Item("name")
        'Dim yqty As Integer
        If sessionname IsNot Nothing Then
            lisignindet.Visible = False
            licratedet.Visible = False
            Label1det.Visible = True
            Button1det.Visible = True
            Label1det.Text = "WELCOME " + sessionname
            Dim t1 As Boolean
            t1 = Session.Item("always")
            Dim t2 As Boolean
            t2 = Session.Item("manvsgod")
            Dim t3 As Boolean
            t3 = Session.Item("homeboy")
            Dim t4 As Boolean
            t4 = Session.Item("daredevil")
            Dim t5 As Boolean
            t5 = Session.Item("dearwomen")
            Dim t6 As Boolean
            t6 = Session.Item("entourage")
            Dim t7 As Boolean
            t7 = Session.Item("extrafries")
            Dim t8 As Boolean
            t8 = Session.Item("friesbeforeguyz")
            Dim t9 As Boolean
            t9 = Session.Item("goku")
            Dim t10 As Boolean
            t10 = Session.Item("toxic")
            Dim t11 As Boolean
            t11 = Session.Item("letitgrow")
            Dim t12 As Boolean
            t12 = Session.Item("idnc")
            Dim t13 As Boolean
            t13 = Session.Item("superwomen")
            Dim t14 As Boolean
            t14 = Session.Item("jc")
            Dim t15 As Boolean
            t15 = Session.Item("mofoclans")
            Dim t16 As Boolean
            t16 = Session.Item("ekvillian")
            Dim t17 As Boolean
            t17 = Session.Item("psleeper")
            Dim t18 As Boolean
            t18 = Session.Item("pulp")
            Dim t19 As Boolean
            t19 = Session.Item("stark")
            Dim t20 As Boolean
            t20 = Session.Item("urnot")
            Dim t21 As Boolean
            t21 = Session.Item("vc")
            
           dim size1 as string
           size1=session.item("alwayssize")
           If t1 = True then
                Always.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("alwaysqty"))
                
            End If
       
            If t2 = True Then
                manvsgod.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("manvsgodqty"))
               
            End If
            If t3 = True Then
                homeboy.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("homeboyqty"))
               
            End If
            If t4 = True Then
                daredevil.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("daredevilqty"))
               
            End If
            If t5 = True Then
                dearwomen.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + Convert.ToInt32(Session.Item("dearwomenqty"))
               
            End If
            If t6 = True Then
                entourage.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + Convert.ToInt32(Session.Item("entourageqty"))
               
            End If
            If t7 = True Then
                extrafries.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + Convert.ToInt32(Session.Item("extrafriesqty"))
            End If
            If t8 = True Then
                friesbeforeguyz.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + Convert.ToInt32(Session.Item("friesbeforeguyzqty"))
            End If
            If t9 = True Then
                goku.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + Convert.ToInt32(Session.Item("gokuqty"))
            End If
            If t10 = True Then
                toxic.Visible = True
                Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("toxicqty"))
            End If
            If t11 = True Then
                letitgrow.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("letitgrowqty"))
            End If
            If t12 = True Then
                idnc.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("idncqty"))
            End If
            If t13 = True Then
                superwomen.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("superwomenqty"))
            End If
            If t14 = True Then
                jc.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("jcqty"))
            End If
            If t15 = True Then
                mofoclans.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("mofoclansqty"))
            End If
            If t16 = True Then
                ekvillian.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("ekvillianqty"))
            End If
            If t17 = True Then
                psleeper.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("psleeperqty"))
            End If
            If t18 = True Then
                pulp.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("pulpqty"))
            End If
            If t19 = True Then
                stark.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("starkqty"))
            End If
            If t20 = True Then
                urnot.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("urnotqty"))
            End If
            If t21 = True Then
                vc.Visible = True
                Session("qtycount") = convert.toInt32(Session.Item("qtycount")) + convert.toInt32(Session.Item("vcqty"))
            End If
            If Session.Item("qtycount") <= 2 Then
                Session("tax") = 49
            ElseIf Session.Item("qtycount") <= 4 Then
                Session("tax") = 49 * 2
            ElseIf Session.Item("qtycount") <= 6 Then
                Session("tax") = 49 * 3
            ElseIf Session.Item("qtycount") <= 8 Then
                Session("tax") = 49 * 4
            End If
            Session("tobepayed") = Convert.ToInt32(Session.Item("cart")) + Convert.ToInt32(Session.Item("tax"))
                
        Else

            Response.Redirect("account-1.aspx")
       
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
    Public Sub imageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("alwaysprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("alwaysqty"))
        Session.Remove("always")
        Session.Remove("alwaysqty")
        Session.Remove("alwaysprice")
        Response.Redirect("cart.aspx")
        Always.Visible = False
    End Sub
    Public Sub imageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("manvsgodprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("manvsgodqty"))
        Session.Remove("manvsgod")
        Session.Remove("manvsgodqty")
        Session.Remove("manvsgodprice")
        Response.Redirect("cart.aspx")
        manvsgod.Visible = False
    End Sub
    Public Sub imageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("homeboyprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("homeboyqty"))
        Session.Remove("homeboy")
        Session.Remove("homeboyqty")
        Session.Remove("homeboyprice")
        Response.Redirect("cart.aspx")
        homeboy.Visible = False
    End Sub
    Public Sub imageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("daredevilprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("daredevilqty"))
        Session.Remove("daredevil")
        Session.Remove("daredevilqty")
        Session.Remove("daredevilprice")
        Response.Redirect("cart.aspx")
        daredevil.Visible = False
    End Sub
    Public Sub imageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("dearwomenprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("dearwomenqty"))
        Session.Remove("dearwomen")
        Session.Remove("dearwomenqty")
        Session.Remove("dearwomenprice")
        Response.Redirect("cart.aspx")
        dearwomen.Visible = False
    End Sub
    Public Sub imageButton6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("entourageprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("entourageqty"))
        Session.Remove("entourage")
        Session.Remove("entourageqty")
        Session.Remove("entourageprice")
        Response.Redirect("cart.aspx")
        entourage.Visible = False
    End Sub
    Public Sub imageButton7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("extrafriesprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("extrafriesqty"))
        Session.Remove("extrafries")
        Session.Remove("extrafriesqty")
        Session.Remove("extrafriesprice")
        Response.Redirect("cart.aspx")
        extrafries.Visible = False
    End Sub
    Public Sub imageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("friesbeforeguyzprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("friesbeforeguyzqty"))
        Session.Remove("friesbeforeguyz")
        Session.Remove("friesbeforeguyzqty")
        Session.Remove("friesbeforeguyzprice")
        Response.Redirect("cart.aspx")
        friesbeforeguyz.Visible = False
    End Sub
    Public Sub imageButton9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("gokuprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("gokuqty"))
        Session.Remove("goku")
        Session.Remove("gokuqty")
        Session.Remove("gokuprice")
        Response.Redirect("cart.aspx")
        goku.Visible = False
    End Sub
    Public Sub imageButton10_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton10.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("toxicprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("toxicqty"))
        Session.Remove("toxic")
        Session.Remove("toxicqty")
        Session.Remove("toxicprice")
        Response.Redirect("cart.aspx")
        toxic.Visible = False
    End Sub
    Public Sub imageButton11_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton11.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("letitgrowprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("letitgrowqty"))
        Session.Remove("letitgrow")
        Session.Remove("letitgrowqty")
        Session.Remove("letitgrowprice")
        Response.Redirect("cart.aspx")
        letitgrow.Visible = False
    End Sub
    Public Sub imageButton12_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton12.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("idncprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("idncqty"))
        Session.Remove("idnc")
        Session.Remove("idncqty")
        Session.Remove("idncprice")
        Response.Redirect("cart.aspx")
        idnc.Visible = False
    End Sub
    Public Sub imageButton13_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton13.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("superwomenprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("superwomenqty"))
        Session.Remove("superwomen")
        Session.Remove("superwomenqty")
        Session.Remove("superwomenprice")
        Response.Redirect("cart.aspx")
        superwomen.Visible = False
    End Sub
    Public Sub imageButton14_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton14.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("jcprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("jcqty"))
        Session.Remove("jc")
        Session.Remove("jcqty")
        Session.Remove("jcprice")
        Response.Redirect("cart.aspx")
        jc.Visible = False
    End Sub
    Public Sub imageButton15_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton15.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("mofoclansprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("mofoclansqty"))
        Session.Remove("mofoclans")
        Session.Remove("mofoclansqty")
        Session.Remove("mofoclansprice")
        Response.Redirect("cart.aspx")
        mofoclans.Visible = False
    End Sub
    Public Sub imageButton16_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton16.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("ekvillianprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("ekvillianqty"))
        Session.Remove("ekvillian")
        Session.Remove("ekvillianqty")
        Session.Remove("ekvillianprice")
        Response.Redirect("cart.aspx")
        ekvillian.Visible = False
    End Sub
    Public Sub imageButton17_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton17.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("psleeperprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("psleeperqty"))
        Session.Remove("psleeper")
        Session.Remove("psleeperqty")
        Session.Remove("psleeperprice")
        Response.Redirect("cart.aspx")
        Always.Visible = False
    End Sub
    Public Sub imageButton18_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton18.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("pulpprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("pulpqty"))
        Session.Remove("pulp")
        Session.Remove("pulpqty")
        Session.Remove("pulpprice")
        Response.Redirect("cart.aspx")
        pulp.Visible = False
    End Sub
    Public Sub imageButton19_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton19.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("starkprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("starkqty"))
        Session.Remove("stark")
        Session.Remove("starkqty")
        Session.Remove("starkprice")
        Response.Redirect("cart.aspx")
        stark.Visible = False
    End Sub
    Public Sub imageButton20_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton20.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("urnotprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("urnotqty"))
        Session.Remove("urnot")
        Session.Remove("urnotqty")
        Session.Remove("urnotprice")
        Response.Redirect("cart.aspx")
        urnot.Visible = False
    End Sub
    Public Sub imageButton21_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton21.Click
        Session("cart") = Convert.ToInt32(Session.Item("cart")) - Convert.ToInt32(Session.Item("vcprice"))
        Session("qtycount") = Convert.ToInt32(Session.Item("qtycount")) - Convert.ToInt32(Session.Item("vcqty"))
        Session.Remove("vc")
        Session.Remove("vcqty")
        Session.Remove("vcprice")
        Response.Redirect("cart.aspx")
        vc.Visible = False
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
                            <li class="phone-number"> <span> <i
                                    class="glyphicon glyphicon-phone-alt "></i><a href="callto:+9987888397"> <span class="hidden-xs"
                                                                                             style="margin-left:5px"> 
                                9987888397 </span>
                            </a></span> </li>
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
                                <asp:Button ID="Button1det" runat="server"  CssClass="btn-primary" Font-Bold="True" 
                                    Text="LOG OUT" Visible="False"  />
                                    
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
                
                <!--/.cartMenu-->

                <div class="search-box">
                
                       
    <i class="glyphicon glyphicon-shopping-cart"></i><asp:button ID="CART" runat="server" Text="Cart Rs. 00" CssClass=" fa fa-shopping-cart colorBlack cartRespons colorBlack" PostBackUrl="cart.aspx" BorderColor="#CC0000" ForeColor="Black"></asp:button>

                   
                   
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
                <li><a href="sub-category.aspx">Category</a></li>
                <li class="active">Cart</li>
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
        <div class="col-lg-9 col-md-9 col-sm-7">
            <div class="row userInfo">
                <div class="col-xs-12 col-sm-12">
                    <div class="cartContent w100">
                        
                        <asp:Table ID="Table1" runat="server" CssClass="cartTable table-responsive" 
                            style="width:100%" Height="12px" Width="12px">
                          
                          
                          <asp:TableRow ID="header" runat="server" cssclass="CartProduct cartTableHeader" bgcolor="#CCCCCC" style="color: #000000">
            <asp:TableCell ID="TableCell1" runat="server" style="width:15%">
                Product </asp:TableCell>
            
             <asp:TableCell ID="TableCell6" runat="server" HorizontalAlign="Center" style="width:40%">
                Details</asp:TableCell>
            <asp:TableCell ID="TableCell11" runat="server" HorizontalAlign="Center" style="width:10%" cssclass="delete">
           
             </asp:TableCell>
               <asp:TableCell ID="TableCell13" runat="server" HorizontalAlign="Center" style="width:10%" >
           size
             </asp:TableCell>
              <asp:TableCell ID="TableCell2" runat="server" HorizontalAlign="Center" style="width:10%" >
            QTY
             </asp:TableCell>
              <asp:TableCell ID="TableCell3" runat="server" HorizontalAlign="Center" style="width:10%" >
           Discount
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell4" runat="server" HorizontalAlign="Center" style="width:10%" >
           Total
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Always" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell5" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="always.aspx"><img src="images/product/subcategory/1.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell7" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="always.aspx" style="color: #FFFFFF">ALWAYS </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell8" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton1"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell14" runat="server" cssclass="price" style="color: #669900">
           <%=session.item("alwayssize") %>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell9" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("alwaysqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell10" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell12" runat="server" cssclass="price" style="color: #669900">
           <%=session.item("alwaysprice") %>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="manvsgod" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell15" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="manvsgod.aspx"><img src="images/product/subcategory/2.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell16" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="manvsgod.aspx" style="color: #FFFFFF">MAN VS. GOD </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell17" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton2"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell18" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("manvsgodsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell19" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("manvsgodqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell20" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell21" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("manvsgodprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="homeboy" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell22" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="homeboy.aspx"><img src="images/product/subcategory/3.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell23" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="homeboy.aspx" style="color: #FFFFFF">HOMEBOY </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell24" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton3"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell25" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("homeboysize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell26" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("homeboyqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell27" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell28" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("homeboyprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="daredevil" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell29" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="daredevil.aspx"><img src="images/product/subcategory/4.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell30" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="daredevil.aspx" style="color: #FFFFFF">DAREDEVIL </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">449</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell31" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton4"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell32" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("daredevilsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell33" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("daredevilqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell34" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell35" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("daredevilprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="dearwomen" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell36" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="dearwomen.aspx"><img src="images/product/subcategory/5.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell37" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="dearwomen.aspx" style="color: #FFFFFF">dearwomen </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell38" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton5"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell39" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("dearwomensize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell40" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("dearwomenqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell41" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell42" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("dearwomenprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="entourage" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell43" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="entourage.aspx"><img src="images/product/subcategory/6.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell44" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="entourage.aspx" style="color: #FFFFFF">entourage </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell45" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton6"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell46" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("entouragesize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell47" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("entourageqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell48" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell49" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("entourageprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="extrafries" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell50" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="extrafries.aspx"><img src="images/product/subcategory/7.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell51" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="extrafries.aspx" style="color: #FFFFFF">extrafries</a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">449</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell52" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton7"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell53" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("extrafriessize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell54" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("extrafriesqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell55" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell56" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("extrafriesprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="friesbeforeguyz" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell57" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="friesb4guyz.aspx"><img src="images/product/subcategory/8.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell58" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="friesb4guyz.aspx" style="color: #FFFFFF">friesbeforeguyz </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">449</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell59" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton8"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell60" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("friesbeforeguyzsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell61" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("friesbeforeguyzqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell62" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell63" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("friesbeforeguyzprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="goku" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell64" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="goku.aspx"><img src="images/product/subcategory/9.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell65" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="goku.aspx" style="color: #FFFFFF">TRAINING TO BEAT GOKU </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell66" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton9"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell67" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("gokusize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell68" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("gokuqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell69" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell70" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("gokuprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="toxic" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell71" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="toxic.aspx"><img src="images/product/subcategory/10.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell72" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="toxic.aspx" style="color: #FFFFFF">TOXIC</a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell73" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton10"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell74" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("toxicsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell75" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("toxicqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell76" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell77" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("toxicprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="letitgrow" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell78" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="letitgrow.aspx"><img src="images/product/subcategory/11.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell79" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="letitgrow.aspx" style="color: #FFFFFF">Let It Grow </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell80" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton11"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell81" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("letitgrowsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell82" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("letitgrowqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell83" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell84" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("letitgrowprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="idnc" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell85" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="idnc.aspx"><img src="images/product/subcategory/12.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell86" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="idnc.aspx" style="color: #FFFFFF">I DONUT CARE </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell87" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton12"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell88" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("idncsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell89" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("idncqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell90" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell91" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("idncprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="superwomen" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell92" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="superwomen.aspx"><img src="images/product/subcategory/13.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell93" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="superwomen.aspx" style="color: #FFFFFF">SUPERWOMEN </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell94" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton13"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell95" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("superwomensize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell96" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("superwomenqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell97" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell98" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("superwomenprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="jc" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell99" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="johnycash.aspx"><img src="images/product/subcategory/14.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell100" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="johnycash.aspx" style="color: #FFFFFF">Ain't No Grave - JC </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">449</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell101" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton14"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell102" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("jcsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell103" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("jcqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell104" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell105" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("jcprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="mofoclans" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell106" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="mofoclans.aspx"><img src="images/product/subcategory/15.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell107" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="mofoclans.aspx" style="color: #FFFFFF">CoC - Mofo Clan </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell108" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton15"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell109" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("mofoclanssize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell110" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("mofoclansqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell111" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell112" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("mofoclansprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="ekvillian" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell113" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="ekvillian.aspx"><img src="images/product/subcategory/16.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell114" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="ekvillian.aspx" style="color: #FFFFFF">EK VILLIAN  </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell115" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton16"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell116" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("ekvilliansize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell117" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("ekvillianqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell118" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell119" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("ekvillianprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="psleeper" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell120" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="psleeper.aspx"><img src="images/product/subcategory/17.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell121" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="always.aspx" style="color: #FFFFFF">PROFESSIONAL SLEEPER</a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell122" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton17"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell123" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("psleepersize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell124" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("psleeperqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell125" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell126" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("psleeperprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="pulp" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell127" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="pulpfiction.aspx"><img src="images/product/subcategory/18.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell128" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="pulpfiction.aspx" style="color: #FFFFFF">Pulp Fiction ~ BadAss MOFOs</a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">449</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell129" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton18"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell130" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("pulpsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell131" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("pulpqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell132" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell133" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("pulpprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="stark" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell134" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="stark.aspx"><img src="images/product/subcategory/19.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell135" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="stark.aspx" style="color: #FFFFFF">It's hard to be a STARK</a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell136" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton19"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell137" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("starksize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell138" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("starkqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell139" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell140" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("starkprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="urnot" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell141" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="urnot.aspx"><img src="images/product/subcategory/20.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell142" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="urnot.aspx" style="color: #FFFFFF">YOU NEVER KNOW </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">399</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell143" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton20"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell144" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("urnotsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell145" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("urnotqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell146" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell147" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("urnotprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="vc" runat="server" cssclass="CartProduct" Visible="False">
            <asp:TableCell ID="TableCell148" runat="server" style="width:15%" CssClass="CartProductThumb">
                <div><a href="valarcannabis.aspx"><img src="images/product/subcategory/21.png" alt="img"></a>
                                    </div> </asp:TableCell>
            
             <asp:TableCell ID="TableCell149" runat="server" HorizontalAlign="Center" style="width:40%">
               <div  class="CartDescription">
                                        <h4><a href="valarcannabis.aspx" style="color: #FFFFFF">Valar Cannabis </a></h4>
                                        <span class="size"></span>

                                        <div class="price"><span style="color: #669900">429</span></div>
                                    </div></asp:TableCell>
               
            <asp:TableCell ID="TableCell150" runat="server" HorizontalAlign="Center"  cssclass="delete">
                <asp:ImageButton ID="ImageButton21"  runat="server" ImageUrl="images/trash.png" Height="35 px" Width="35 px" />
             </asp:TableCell>
             <asp:TableCell ID="TableCell151" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("vcsize")%>
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell152" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("vcqty")%>
             </asp:TableCell>
              <asp:TableCell ID="TableCell153" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell154" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("vcprice")%>
             </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="total" runat="server" cssclass="CartProduct" Visible="TRUE">
            <asp:TableCell ID="TableCell155" runat="server" style="width:15%" CssClass="CartProductThumb">
                 </asp:TableCell>
            
             <asp:TableCell ID="TableCell156" runat="server" HorizontalAlign="Center" style="width:40%" ForeColor="White">
             TOTAL
               </asp:TableCell>
               
            <asp:TableCell ID="TableCell157" runat="server" HorizontalAlign="Center"  cssclass="delete">
             </asp:TableCell>
             <asp:TableCell ID="TableCell158" runat="server" cssclass="price" style="color: #669900">
             </asp:TableCell>
            
              <asp:TableCell ID="TableCell159" runat="server" HorizontalAlign="Center" style="width:10%" >
             <%=Session.Item("qtycount")%> 
             </asp:TableCell>
              <asp:TableCell ID="TableCell160" runat="server"  >
          0
             </asp:TableCell>
            
             <asp:TableCell ID="TableCell161" runat="server" cssclass="price" style="color: #669900">
           <%=Session.Item("cart")%>
             </asp:TableCell>
            </asp:TableRow>
            
                        </asp:Table>
                    </div>
                    <!--cartContent-->

                    <div class="cartFooter w100">
                        <div class="box-footer">
                            <div class="pull-left"><a href="sub-category.aspx" class="btn btn-default" 
                                    style="color: #000000">
                                <i
                                    class="fa fa-arrow-left" style="color: #000000"></i> &nbsp; Continue shopping </a></div>
                            <div class="pull-right">
                            
                            </div>
                        </div>
                    </div>
                    <!--/ cartFooter -->

                </div>
            </div>
            <!--/row end-->

        </div>
        <div class="col-lg-3 col-md-3 col-sm-5 rightSidebar">
            <div class="contentBox">
                <div class="w100 costDetails">
                    <div class="table-block" id="order-detail-content"><a class="btn btn-primary btn-lg btn-block "
                                                                          title="checkout" href="checkout-1.aspx"
                                                                          style="margin-bottom:20px"> Proceed to
                        checkout &nbsp; <i class="fa fa-arrow-right"></i> </a>

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
                    </div>
                </div>
            </div>
            <!-- End popular -->

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
            <p class="pull-left">
                &copy; beingMOFO 2015. All right reserved.
            </p>

            


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


