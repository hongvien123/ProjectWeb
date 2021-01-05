<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chi tiết sản phẩm</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style>
    .myBtn {
        width: 80px;
        height: 80px;
        display: none;
        position: fixed;
        bottom: 20px;
        right: 20px;
        z-index: 99;
        font-size: 18px;
        border: none;
        outline: none;
        background-image: url("img/btn_top.jpg");
        color: white;
        cursor: pointer;
        padding: 15px;
    }

    .myBtn:hover {
        background-color: #555;
    }
</style>

<body>
<button onclick="topFunction()" class="myBtn" id="myBtn" title="Lên đầu trang"></button>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">Mục chọn: <span>0 vnđ</span></div>
    </div>
    <div class="humberger__menu__widget">

        <div class="header__top__right__auth">
            <a href="./login/login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li><a href="./index.jsp">Trang chủ</a></li>
            <li><a href="./shop-grid.jsp">Cửa hàng</a></li>
            <!--<li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                    <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                    <li><a href="./checkout.jsp">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                </ul>
            </li>
        -->
            <li><a href="./blog.jsp">Blog</a></li>
            <li><a href="./contact.jsp">Liên hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> vynLaptop@gmail.com</li>
            <li></li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> vynLaptop@gmail.com</li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>

                        <div class="header__top__right__auth">
                            <a href="./login/login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="./index.jsp">Trang chủ</a></li>
                        <li ><a href="./shop-grid.jsp">Cửa hàng</a></li>
                        <!--<li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.jsp">Shop Details</a></li>
                                <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                                <li><a href="./checkout.jsp">Check Out</a></li>
                                <li><a href="./blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li> -->
                        <li><a href="./blog.jsp">Blog</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price">Mục chọn: <span>0 vnđ</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Tất cả dòng máy</span>
                    </div>
                    <ul>
                        <li><a href="asus.jsp">ASUS</a></li>
                        <li><a href="#">ACER</a></li>
                        <li><a href="#">HP</a></li>
                        <li><a href="#">DELL</a></li>
                        <li><a href="#">MACBOOK</a></li>
                        <li><a href="#">THINKPAD</a></li>
                        <li><a href="#">VIVO</a></li>
                        <li><a href="#">SAMSUNG</a></li>
                        <li><a href="#">LENOVO</a></li>
                        <li><a href="#">SONY</a></li>
                        <li><a href="#">TOSHIBA</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn muốn tìm gì?">
                            <button type="submit" style="border-radius: 5px; background-color: #38d39f;color: white; border: none;" ><b>Tìm kiếm</b></button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+0378900954</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>VYNLaptop</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.jsp">Trang chủ</a>
                        <span>Chi tiết sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->
<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as1.png" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="img/product/asus/ASUS_15_X509JP-EJ013T/as1.png"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as1.png" alt="">
                        <img data-imgbigurl="img/product/asus/ASUS_15_X509JP-EJ013T/as2.png"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as2.png" alt="">
                        <img data-imgbigurl="img/product/asus/ASUS_15_X509JP-EJ013T/as3.png"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as3.png" alt="">
                        <img data-imgbigurl="img/product/asus/ASUS_15_X509JP-EJ013T/as4.png"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as4.png" alt="">
                        <img data-imgbigurl="img/product/asus/ASUS_15_X509JP-EJ013T/as5.png"
                             src="img/product/asus/ASUS_15_X509JP-EJ013T/as5.png" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>Laptop ASUS 15 X509JP-EJ013T (15.6" FHD/i5-1035G1/4GB/512GB SSD/GeForce MX330/Win10/1.7kg)</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 nhận xét)</span>
                    </div>
                    <div class="product__details__price"> 15.590.000đ</div>
                    <p>Laptop ASUS 15 X509JP-EJ013T với ngôn ngữ thiết kế NanoEdge trên cả 4 cạnh đem lại một màn hình gần như không viền, giúp tăng diện tích màn hình hiển thị lớn hơn trên khung máy. Bạn sẽ được trải nghiệm hình ảnh cực kỳ sống động đến choáng ngợp cho cả công việc và giải trí, xóa tan mọi giới hạn về năng lực, khơi nguồn cảm hứng cho bạn phá vỡ những ranh giới mới.</p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="shoping-cart.jsp" class="primary-btn">THÊM VÀO GIỎ HÀNG</a>
                    <a href="#" class="heart-icon" title="Thêm vào trang yêu thích"><span class="icon_heart_alt"></span></a>
                    <ul>
                        <br> <br>
                        <li><b>Trạng thái</b> <span>Còn hàng</span></li>
                        <li><b>Thời gian vận chuyển</b> <span>Khoảng một tuần sau khi đặt hàng</span></li>
                        <li><b>Chia sẽ lên</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">Thông số kỹ thuật</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">Mô tả sản phẩm</a>
                        </li>
                        <!--
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                aria-selected="false">Customer reviews </a>
                        </li>
                    -->
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <table class="table">
                                    <tr >
                                        <td><b>Thương hiệu</b></td>
                                        <td >ASUS</td>
                                    </tr>
                                    <tr >
                                        <td ><b>Bảo hành</b></td>
                                        <td >24 tháng</td>
                                    </tr>
                                    <tr >
                                        <th colspan="2" style="background-color:#38d39f; color: white;">Thông tin chung</th>
                                    </tr>
                                    <tr>
                                        <td><b>Màu sắc</b></td>
                                        <td>Bạc</td>
                                    </tr>
                                    <tr>
                                        <td><b>Series laptop</b></td>
                                        <td>VivoBook</td>
                                    </tr>
                                    <tr>
                                        <td><b>Part-number</b></td>
                                        <td>
                                            EJ013T</td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" style="background-color:#38d39f; color: white;">Cấu hình chi tiết</th>
                                    </tr>
                                    <tr>
                                        <td><b>Thế hệ CPU </b></td>
                                        <td>Core i5 , Intel Core thế hệ thứ 8</td>
                                    </tr>
                                    <tr>
                                        <td><b>CPU</b></td>
                                        <td>Intel Core i5-1035G1 ( 1.0 GHz - 3.6 GHz / 6MB / 4 nhân, 8 luồng )</td>
                                    </tr>
                                    <tr>
                                        <td><b>Chip đồ họa</b></td>
                                        <td>Intel UHD Graphics 620</td>
                                    </tr>
                                    <tr>
                                        <td><b>RAM</b></td>
                                        <td> 1 x 4GB Onboard DDR4 2400MHz ( 1 Khe cắm / Hỗ trợ tối đa 12GB )</td>
                                    </tr>
                                    <tr>
                                        <td><b>Màn hình</b></td>
                                        <td>15.6" ( 1920 x 1080 ) Full HD không cảm ứng , Màn hình chống lóa , HD webcam</td>
                                    </tr>
                                    <tr>
                                        <td><b>Lưu trữ</b></td>
                                        <td>
                                            1TB HDD 5400RPM</td>
                                    </tr>
                                    <tr>
                                        <td><b>Số cổng lưu trữ tối đa</b></td>
                                        <td>1 x 2.5" SATA , 1 x M.2 NVMe</td>
                                    </tr>

                                    <tr>
                                        <td><b>Kiểu khe M.2 hổ trợ</b></td>
                                        <td> M.2 NVMe</td>
                                    </tr>
                                    <tr>
                                        <td><b>Cổng xuất hình</b></td>
                                        <td>1 x HDMI</td>
                                    </tr>
                                    <tr>
                                        <td><b>Cổng kết nối</b></td>
                                        <td>
                                            1 x USB Type C , 1 x USB 3.1 , 2 x USB 2.0 , 1 x micro SD card slot</td>
                                    </tr>
                                    <tr>
                                        <td><b>Kết nối không dây</b></td>
                                        <td>
                                            WiFi 802.11ac , Bluetooth 4.1 </td>
                                    </tr>
                                    <tr>
                                        <td><b>Bàn phím</b></td>
                                        <td>
                                            thường , có phím số , không đèn</td>
                                    </tr>
                                    <tr>
                                        <td><b>Hệ điều hành</b></td>
                                        <td>Windows 10 Home 64-bit</td>
                                    </tr>
                                    <tr>
                                        <td><b>Kích thước</b></td>
                                        <td>
                                            36.02 x 23.49 x 2.29 cm</td>
                                    </tr>
                                    <tr>
                                        <td><b>Pin</b></td>
                                        <td>2 cell 32 Wh, Pin liền</td>
                                    </tr>
                                    <tr>
                                        <td><b>Khối lượng</b></td>
                                        <td>1.9 kg</td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" style="background-color:#38d39f; color: white;">Thông tin khác</th>
                                    </tr>
                                    <tr>
                                        <td><b>Bảo mật</b></td>
                                        <td>Vân tay</td>
                                    </tr>
                                    <tr>
                                        <td><b>Đèn LED trên máy</b></td>
                                        <td>Không đèn</td>
                                    </tr>
                                </table>
                            </div>


                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Màn hình không giới hạn</h6>
                                <p>Laptop ASUS 15 X509FA-EJ101T với ngôn ngữ thiết kế NanoEdge trên cả 4 cạnh đem lại một màn hình gần như không viền, giúp tăng diện tích màn hình hiển thị lớn hơn trên khung máy. Bạn sẽ được trải nghiệm hình ảnh cực kỳ sống động đến choáng ngợp cho cả công việc và giải trí, xóa tan mọi giới hạn về năng lực, khơi nguồn cảm hứng cho bạn phá vỡ những ranh giới mới.</p>
                                <img src="img/product/asus/ASUS_15_X509JP-EJ013T/Info/info1.png">
                            </div>
                            <div class="product__details__tab__desc">
                                <h6>Kích thước nhỏ gọn hơn</h6>
                                <p>Kích thước được thu gọn xuống mức tối thiểu nhờ màn hình NanoEdge không viền trên bốn cạnh, Laptop ASUS 15 X509FA-EJ101T sở hữu một thân hình nhỏ gọn và thanh mảnh hơn đáng kể so với thế hệ tiền nhiệm trước đó. Do đó không gian bàn làm việc của bạn sẽ trở nên gọn gàng nhờ chiếc máy tính chiếm ít diện tích này, và bạn cũng có thể thoải mái mang xách theo người khi xê dịch.</p>
                                <img src="img/product/asus/ASUS_15_X509JP-EJ013T/Info/info2.png">
                            </div>
                            <div class="product__details__tab__desc">
                                <h6>Hiệu năng xử lý tuyệt vời</h6>
                                <p>Laptop ASUS 15 X509FA-EJ101T với bộ vi xử lý Intel Core mới nhất và card đồ họa rời NVIDIA GeForce (tùy phiên bản bạn chọn), bạn sẽ luôn sẵn sàng giải quyết mọi công việc hằng ngày nhanh chóng nhờ khả năng làm việc đa nhiệm, chỉnh sửa đa phương tiện và chơi game phổ thông. Và với kết nối không dây Wi-Fi 802.11ac hai băng tần, bạn sẽ được được trải nghiệm trực tuyến internet siêu nhanh với tốc độ lên đến 867Mbps mà không bị giật lag.</p>
                                <img src="img/product/asus/ASUS_15_X509JP-EJ013T/Info/info3.png">
                            </div>
                            <div class="product__details__tab__desc">
                                <h6>Pin sử dụng cả ngày</h6>
                                <p>Laptop ASUS 15 X509FA-EJ101T giúp bạn di chuyển và làm việc thoải mái cả ngày nhờ pin lithium-polymer chất lượng cao có khả năng sử dụng liên tục trong thời gian dài. Công nghệ ASUS Battery Health Charging tích hợp độc quyền từ ASUS giúp pin tránh tình trạng bị sạc quá mức, giảm khả năng hư hại do phồng pin và nhờ đó kéo dài tuổi thọ pin, đảm bảo pin luôn ở trong tình trạng tốt nhất để đáp ứng nhu cầu của bạn.</p>
                                <img src="img/product/asus/ASUS_15_X509JP-EJ013T/Info/info4.png">
                            </div>
                            <div class="product__details__tab__desc">
                                <h6>Bảo vệ nâng cao</h6>
                                <p>Laptop ASUS 15 X509FA-EJ101T được trang bị công nghệ bảo vệ ổ cứng EAR™ để bảo vệ dữ liệu của bạn trước những tác động vật lý, giúp giảm nguy cơ hỏng ổ HDD, để bạn có thể yên tâm làm việc kể cả khi phải đang di chuyển. Trong khi toàn bộ phần cạnh, nắp lưng và bàn phím được gia cố chắc chắn giúp bảo vệ các khớp bản lề cũng như bảo vệ những linh kiện phía trong một cách an toàn.</p>
                                <img src="img/product/asus/ASUS_15_X509JP-EJ013T/Info/info5.png">
                            </div>
                        </div>
                        <!--
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                
                            </div>
                        </div>
                    -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Những sản phẩm tương tự</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/asus/ASUS_PRO_P1440UA-FQ0183/as1.png">
                        <ul class="product__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Laptop ASUS PRO P1440UA-FQ0183 </a></h6>
                        <h5>11.990.000đ</h5> <br>
                        <div>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/asus/ASUS_ROG_Strix_SCAR_II_GL504GM-ES312T/as1.png">
                        <ul class="product__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Laptop ASUS ROG Strix SCAR II GL504GM-ES312T</a></h6>
                        <h5>39.990.000đ</h5> <br>
                        <div>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/asus/ASUS_ROG_Zephyrus_S_GX531GM-ES004T/as1.png">
                        <ul class="product__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Laptop ASUS ROG Zephyrus S GX531GM-ES004T</a></h6>
                        <h5>49.990.000đ</h5><br>
                        <div>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/asus/ASUS_VivoBook_S14_S430UA-EB003T/as1.png">
                        <ul class="product__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Laptop ASUS VivoBook 14 A412FA-EK153T</a></h6>
                        <h5>13.390.000đ</h5><br>
                        <div>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#38d39f; border: 1px solid #38d39f;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ: 113/1/8 Hoàng Diệu 2, phường Linh Trung, quận Thủ Đức</li>
                        <li>Số điện thoại: +0378900954</li>
                        <li>Email: vynLaptop@gmail.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Liên kết hữu ích</h6>
                    <ul>
                        <li><a href="./gioithieuVYN.jsp">Giới thiệu VYNLaptop</a></li>
                        <li><a href="./baohanh.jsp">Bảo hành</a></li>
                        <li><a href="./baomatthongtin.jsp">Bảo mật thông tin</a></li>
                        <li><a href="./phuongthucthanhtoan.jsp">Phương thức thanh toán</a></li>
                    </ul>
                    <ul>
                        <li><a href="./login/Register.jsp">Đăng ký tài khoản</a></li>
                        <li><a href="./shop-grid.jsp">Cửa hàng</a></li>

                        <li><a href="./blog.jsp">Blog</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Ủng hộ chúng tôi</h6>
                    <p>Nhận thông tin cập nhật qua email về cửa hàng mới nhất của chúng tôi và các ưu đãi đặc biệt.</p>
                    <form action="#">
                        <input type="text" placeholder="Nhập email">
                        <button type="submit" class="site-btn">Gửi </button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>


</body>

</html>