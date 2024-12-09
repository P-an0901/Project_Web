<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<header>
  <div class="header-top">
    <div class="container">
      <div class="d-flex justify-content-between">
        <ul class="list-inline mb-0" id="sesion-left">
          <li class="list-inline-item"><a href="#" class="text-white"><i class="fas fa-phone mr-2"></i>0123 456 789 (miễn phí)</a></li>
        </ul>
        <ul class="list-inline mb-0" id="session_right">
          <li class="list-inline-item"><a href="gioithieu.jsp" class="text-white">Giới thiệu</a></li>
          <li class="list-inline-item"><a href="#" class="text-white">Cửa hàng</a></li>
          <li class="list-inline-item"><a href="#" class="text-white">Chính sách</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="header-middle">
    <div class="container">
      <div class="d-flex align-items-center justify-content-between" id="headerMid">
        <div class="header-logo">
          <a href="">
            <img src="images/HELMET.png" alt="" class="header-logo-img">
          </a>
        </div>
        <div action="" class="form-inline">
          <form class="search-container d-flex flex-grow-1 position-relative">
            <input  type="text"  class="form-control mr-2 pr-5" id="searchInput" placeholder="Tìm kiếm sản phẩm..."
                    autocomplete="off">
            <button class="btn mr-3" type="button">
              <i class="fas fa-search"></i> Tìm
            </button>
            <ul id="searchResults" class="hidden"></ul>
          </form>

          <ul class="list-inline mb-0 d-flex">
            <li class="list-inline-item pointer" id="login-menu" onclick="openModal('login')">
              <i class="fas fa-user"></i>
              <span>Đăng nhập</span>
            </li>
            <li class="list-inline-item pointer" id="signup-menu" onclick="openModal('signup')">
              <i class="fas fa-user-plus"></i>
              <span>Đăng ký</span>
            </li>
            <li class="list-inline-item pointer" id="account-menu" style="display: none; position: relative;">
              <i class="fas fa-user-circle"></i>
              <span id="account-name">Tài khoản</span>

              <!-- Dropdown menu -->
              <ul class="dropdown-menu  pl-2" style="display: none;">
                <li><a href="taikhoan.jsp" id="logout">Thông tin tài khoản</a></li>
                <li><a href="admin.jsp" id="admin-page" style="display: none;">Trang Admin</a></li>
                <li><a href="#" id="logout-button">Đăng xuất</a></li>
                <li><a href="#" id="change-password">Đổi mật khẩu</a></li>
              </ul>
            </li>
            <li class="list-inline-item pointer cart-container" title="Giỏ hàng">
              <a href="giohang.jsp">
                <i class="fas fa-shopping-cart"></i>
                <span class="badge badge-pill badge-danger">0</span>
              </a>
              <div class="cart-dropdown">
                <ul id="cart-items">
                </ul>
                <div id="empty-message" class="empty-message">
                  <i class="fas fa-shopping-bag"></i>
                  Không có sản phẩm nào.
                </div>
                <div class="cart-sum">
                  <div class="cart-total">
                    <span>Tổng tiền:</span>
                    <span id="total-price">0</span>
                  </div>
                  <button class="checkout-btn"><a href="checkout."></a>
                    Xem chi tiết</button>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <nav class="header-bottom">
    <div class="container">
      <ul class="menu-list">
        <li class="menu-list-item">
          <a href="${pageContext.request.contextPath}/" class="menu-link ${activePage == 'home' ? 'active' : ''}">Trang chủ</a>
        </li>
        <li class="menu-list-item">
          <a href="danhmuc.jsp" class="menu-link has-submenu">
            Danh Mục Sản phẩm
            <i class="fa-solid fa-chevron-down icon-arrow"></i> <!-- Icon mũi tên -->
          </a>
          <ul class="submenu">
            <li><a href="danhmuc.jsp?category=all"><strong>Tất cả sản phẩm</strong></a></li>
            <li><a href="danhmuc.jsp?category=mu34">Mũ bảo hiểm 3/4 đầu</a></li>
            <li><a href="danhmuc.jsp?category=fullface">Mũ bảo hiểm fullface</a></li>
            <li><a href="danhmuc.jsp?category=half">Mũ bảo hiểm nửa đầu</a></li>
            <li><a href="danhmuc.jsp?category=child">Mũ bảo hiểm trẻ em</a></li>
            <li><a href="danhmuc.jsp?category=bicycle">Mũ bảo hiểm xe đạp</a></li>
          </ul>
        </li>
        <li class="menu-list-item"><a href="khuyenmai.jsp" class="menu-link">Khuyến mãi</a></li>
        <li class="menu-list-item">
          <a href="#" class="menu-link has-submenu">
            Thương Hiệu
            <i class="fa-solid fa-chevron-down icon-arrow"></i> <!-- Icon mũi tên -->
          </a>
          <ul class="submenu" id="brand-submenu">
            <li>
              <a href="Royal.jsp">
                <img src="images/Logo2020-02.png" alt="Roc" class="submenu-icon">
              </a>
            </li>
            <li>
              <a href="Royal.jsp">
                <img src="images/Logo2020-03.png" alt="Royal" class="submenu-icon">
              </a>
            </li>
            <li>
              <a href="html/JC.jsp">
                <img src="images/Logo2020-05.png" alt="JC" class="submenu-icon">
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/Logo2020-01-1.png" alt="Asia" class="submenu-icon">
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/andes-logo.jpg" alt="Andes" class="submenu-icon">
              </a>
            </li>
            <!-- <li>
                <a href="#">
                    <img src="" alt="NonSon" class="submenu-icon"><span>Nón sơn</span>
                </a>
            </li> -->
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</header>
