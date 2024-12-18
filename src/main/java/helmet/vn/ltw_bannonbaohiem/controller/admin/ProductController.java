package helmet.vn.ltw_bannonbaohiem.controller.admin;

import helmet.vn.ltw_bannonbaohiem.dao.model.*;
import helmet.vn.ltw_bannonbaohiem.service.*;
//import helmet.vn.ltw_bannonbaohiem.service.CategoryService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/product")
public class ProductController extends HttpServlet {
    private BrandService brandService = new BrandService();
    private CategoryService categoryService = new CategoryService();
    private ProductService productService = new ProductService();
    private ProductVariantService productVariantService = new ProductVariantService();
    private SizeService sizeService = new SizeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("activeTab", "product");

        List<Brand> brands = brandService.getAllBrands();
        List<Product> products = productService.getAllPro();
        List<Category> categories = categoryService.getAllCate();
        List<ProductVariant> proVariants = productVariantService.getAllVariant();
        List<Sizes> sizes = sizeService.getAllSize();

        req.setAttribute("sizes", sizes);
        req.setAttribute("proVariants", proVariants);
        req.setAttribute("categories", categories);
        req.setAttribute("brands", brands);
        req.setAttribute("products", products);
        System.out.println("ssss");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/admin.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
