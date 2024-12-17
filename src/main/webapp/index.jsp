<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/header.css">
    <title>Cửa hàng Mũ Bảo Hiểm</title>
    <link rel="icon" href="images/HELMET.png">
    
</head>
<body>
<!-- Load header -->
<jsp:include page="html/header.jsp" />

<!-- Load modal -->
<jsp:include page="html/modal.jsp" />


    <div class="back-to-top active">
        <a href="#"><i class="fa-solid fa-arrow-up"></i></a>
    </div>
    <div class="pixfort_pix_slider pix_builder_bg" id="section_slider">
        <div class="container-fluid">
            <div class="sixteen columns">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src=" images/poster_2.png" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src=" images/poster.png" alt="">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
        <div class="slider">
            <div class="container">
                <div class="slider-wrapper">
                    <div class="slider-item">
                        <a href="./danhmuc?category=mu34">
                            <div class="image-container">
                                <img src=" images/Royal-M139-V.2.jpg" alt="Nón 3/4 đầu">
                            </div>
                            <h5>Nón 3/4 đầu</h5>
                        </a>
                    </div>
                    <div class="slider-item">
                        <a href="./danhmuc?category=fullface">
                            <div class="image-container">
                                <img src=" images/Fullface-Royal-M136-V.29-red.jpg" alt="Nón Fullface">
                            </div>
                            <h5>Nón Fullface</h5>
                        </a>
                    </div>
                    <div class="slider-item">
                        <a href="./danhmuc?category=half">
                            <div class="image-container">
                                <img src=" images/1.2-Asia MT-10-Muc-mo.jpg" alt="Nón Nửa Đầu">
                            </div>
                            <h5>Nón Nửa Đầu</h5>
                        </a>
                    </div>
                    <div class="slider-item">
                        <a href="./danhmuc?category=child">
                            <div class="image-container">
                                <img src=" images/OKFaM2congchua-12.jpg" alt="Nón Trẻ Em">
                            </div>
                            <h5>Nón trẻ em</h5>
                        </a>
                    </div>
                    <div class="slider-item">
                        <a href="./danhmuc?category=bicycle">
                            <div class="image-container">
                                <img src=" images/mu-xe-dap.jpg" alt="Nón Xe Đạp">
                            </div>
                            <h5>Nón xe đạp</h5>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
    <div class="product-list">
        <div class="container">
            <div class="pro-lst" id="proSale">
                <div class="lst-title p-4">
                    <h3>Khuyến Mãi %</h3>
                </div>
                <div class="product-row">
                    <div class="product-item" data-has-discount="true">
                        <img src=" images/Mũ bảo hiểm Fullface Royal M02 SCHU Xanh Dương.jpg" alt="Sản phẩm 6" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div>                        
                        <h3 class="product-name">Fullface Royal M02 SCHU Xanh Dương</h3>
                        <div class="product-price-container">
                            <p class="product-sale-price"><span>Giá:120.000 đ</span></p>
                            <p class="product-price"><span>Giá:130.000 đ</span></p>
                        </div>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>                    
                    <div class="product-item" data-has-discount="true">
                        <img src=" images/Royal-M139-V.10-Trang.jpg" alt="Sản phẩm 7" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.10 Trắng</h3>
                        <div class="product-price-container">
                            <p class="product-sale-price"><span>Giá:120.000 đ</span></p>
                            <p class="product-price"><span>Giá:130.000 đ</span></p>
                        </div>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item" data-has-discount="true">
                        <img src=" images/Royal-M139-V.5-Trang-den.jpg" alt="Sản phẩm 8" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.5 Trắng đen</h3>
                        <div class="product-price-container">
                            <p class="product-sale-price"><span>Giá:120.000 đ</span></p>
                            <p class="product-price"><span>Giá:130.000 đ</span></p>
                        </div>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item" data-has-discount="true">
                        <img src=" images/Royal-M139-V.6-Do-den.jpg" alt="Sản phẩm 9" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.6 Đỏ đen</h3>
                        <div class="product-price-container">
                            <p class="product-sale-price"><span>Giá:120.000 đ</span></p>
                            <p class="product-price"><span>Giá:130.000 đ</span></p>
                        </div>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item" data-has-discount="true">
                        <img src=" images/Royal-M139-V.10-Den.jpg" alt="Sản phẩm 10" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.10 Đen</h3>
                        <div class="product-price-container">
                            <p class="product-sale-price"><span>Giá:120.000 đ</span></p>
                            <p class="product-price"><span>Giá:130.000 đ</span></p>
                        </div>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="xem-them p-3 d-flex justify-content-end">
                    <a href="khuyenmai.html" class="btn-xem-them d-flex align-items-center justify-content-between">
                        <span>Xem thêm</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
            <div class="pro-lst" id="proNew">
                <div class="lst-title p-4">
                    <h3>Sản Phẩm Mới</h3>
                </div>
                <div class="product-row">
                    <div class="product-item">
                        <img src=" images/1-Royal M125K Xanh Mực Mờ.png" alt="Sản phẩm 1" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M125K Xanh Mực Mờ</h3>
                        <p class="product-price">Giá: 200.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <img src=" images/Royal-M139-Chuot-xuoc-bong.jpg" alt="Sản phẩm 2" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 Chuột xước bóng</h3>
                        <p class="product-price">Giá: 200.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <img src=" images/Royal-M139-Den-mo.jpg" alt="Sản phẩm 3" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 Đen mờ</h3>
                        <p class="product-price">Giá: 150.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <img src=" images/Royal-M139-Leopard.jpg" alt="Sản phẩm 4" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 Leopard</h3>
                        <p class="product-price">Giá: 250.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <img src=" images/Royal-M139-V.1.jpg" alt="Sản phẩm 5" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.1</h3>
                        <p class="product-price">Giá: 300.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="xem-them p-3 d-flex justify-content-end">
                    <a href="#" class="btn-xem-them d-flex align-items-center justify-content-between">
                        <span>Xem thêm</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
            <div class="pro-lst" id="pro-most-sell">
                <div class="lst-title p-4">
                    <h3>Mua Nhiều</h3>
                </div>
                <div class="product-row">
                    <div class="product-item">
                        <div class="product-hot-label">Mua nhiều</div> 
                        <a href="detail.html">
                            <img src=" images/Royal-M139-BoomBang.jpg" alt="Sản phẩm 1" class="product-image">
                        </a>
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <a href="detail.html">
                            <h3 class="product-name">Royal M139 BoomBang</h3>
                        </a>
                        <p class="product-price">Giá: 650.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <div class="product-hot-label">Mua nhiều</div> 
                        <img src=" images/Mũ bảo hiểm Fullface Royal M141K Đen Bóng.png" alt="Sản phẩm 2" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        
                        <h3 class="product-name">Fullface Royal M141K Đen Bóng</h3>
                        <p class="product-price">Giá: 200.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <div class="product-hot-label">Mua nhiều</div> 
                        <img src=" images/1-Royal M125K Vàng Bóng.png" alt="Sản phẩm 3" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M125K Vàng Bóng</h3>
                        <p class="product-price">Giá: 150.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <div class="product-hot-label">Mua nhiều</div> 
                        <img src=" images/1-Royal M139 V.7 Vàng bóng.jpg" alt="Sản phẩm 4" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 V.7 Vàng bóng</h3>
                        <p class="product-price">Giá: 250.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                    <div class="product-item">
                        <div class="product-hot-label">Mua nhiều</div> 
                        <img src=" images/1-Royal M139 Xám Xi Măng Bóng.png" alt="Sản phẩm 5" class="product-image">
                        <div class="select-size">
                            <button class="size-button selected" data-value="M">M</button>
                            <button class="size-button" data-value="L">L</button>
                            <button class="size-button" data-value="XL">XL</button>
                        </div> 
                        <h3 class="product-name">Royal M139 Xám Xi Măng Bóng</h3>
                        <p class="product-price">Giá: 300.000 đ</p>
                        <button class="buy-button" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="xem-them p-3 d-flex justify-content-end">
                    <a href="#" class="btn-xem-them d-flex align-items-center justify-content-between">
                        <span>Xem thêm</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
<!-- Load footer -->
<jsp:include page="html/footer.jsp" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/index.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/header.js"></script>
</body>
</html>