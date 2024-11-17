const itemsPerPage = 12;
const helmetTypeSelect = document.getElementById('helmet-type');
const productItems = document.querySelectorAll('.product-item');

// Lưu trữ số trang hiện tại
let currentPage = 1;

// Lắng nghe sự kiện thay đổi lựa chọn trong dropdown
helmetTypeSelect.addEventListener('change', function() {
    const selectedType = this.value;
    const titleElement = document.getElementById('product-list-title');

    // Thay đổi tiêu đề dựa trên lựa chọn lọc
    if (selectedType === 'all') {
        titleElement.textContent = "Tất cả sản phẩm";
    } else if (selectedType === 'mu34') {
        titleElement.textContent = "Mũ bảo hiểm 3/4";
    } else if (selectedType === 'bicycle') {
        titleElement.textContent = "Mũ bảo hiểm xe đạp";
    } else if (selectedType === 'half') {
        titleElement.textContent = "Mũ bảo hiểm nửa đầu";
    } else if (selectedType === 'fullface') {
        titleElement.textContent = "Mũ bảo hiểm fullface";
    } else if (selectedType === 'child') {
        titleElement.textContent = "Mũ bảo hiểm trẻ em";
    }

    currentPage = 1;
    filterProductsByType(selectedType);
});

window.onload = function() {
    filterProductsByType('all');
};

// Hàm lọc sản phẩm theo loại nón
function filterProductsByType(type) {
    const filteredItems = [];
    const products = document.querySelectorAll('.product-item');  // Lấy tất cả các sản phẩm

    // Lọc sản phẩm theo loại
    products.forEach(item => {
        const itemType = item.getAttribute('data-type');  // Lấy loại sản phẩm từ data-type
        // Kiểm tra loại sản phẩm và lọc theo loại hoặc tất cả
        if (type === 'all' || itemType === type) {
            filteredItems.push(item);
        }
    });

    products.forEach(item => {
        item.style.display = 'none';
    });
    filteredItems.forEach(item => {
        item.style.display = 'block';
    });
    // Cập nhật phân trang sau khi lọc
    paginateProducts(filteredItems);
}

// Hàm để phân trang sản phẩm
function paginateProducts(filteredItems) {
    const totalPages = Math.ceil(filteredItems.length / itemsPerPage);

    // Làm mới phân trang
    const paginationContainer = document.getElementById('page-numbers');
    paginationContainer.innerHTML = ''; // Xóa phân trang cũ

    // Tạo các liên kết phân trang
    for (let i = 1; i <= totalPages; i++) {
        const link = document.createElement('a');
        link.href = '#';
        link.innerText = i;
        link.addEventListener('click', function(event) {
            event.preventDefault();
            setActivePage(i, filteredItems);
        });

        // Nếu là trang hiện tại, thêm class 'active'
        if (i === currentPage) {
            link.classList.add('active');
        }

        paginationContainer.appendChild(link);
    }

    // Hiển thị sản phẩm của trang hiện tại
    setActivePage(currentPage, filteredItems);
}

// Hàm để hiển thị sản phẩm theo trang
function setActivePage(pageNumber, filteredItems) {
    const filteredItemsArray = Array.from(filteredItems);

    const start = (pageNumber - 1) * itemsPerPage;
    const end = start + itemsPerPage;

    // Ẩn tất cả các sản phẩm
    filteredItemsArray.forEach(item => item.style.display = 'none');

    // Hiển thị sản phẩm trong phạm vi trang hiện tại
    filteredItemsArray.slice(start, end).forEach(item => item.style.display = 'block');

    currentPage = pageNumber;

    scrollToProductList();

    updateActivePagination();
}

// Hàm cập nhật trạng thái active cho phân trang
function updateActivePagination() {
    const links = document.querySelectorAll('#page-numbers a'); // Đảm bảo chọn đúng phần tử phân trang
    links.forEach(link => {
        link.classList.remove('active'); // Xóa lớp active của tất cả các trang
    });

    // Thêm lớp active cho trang hiện tại
    const activeLink = document.querySelector(`#page-numbers a:nth-child(${currentPage})`);
    if (activeLink) {
        activeLink.classList.add('active');
    }
}

// Hàm cuộn trang tới danh sách sản phẩm
function scrollToProductList() {
    document.querySelector('.product-list').scrollIntoView({
        behavior: 'smooth',
        block: 'start'
    });
}
