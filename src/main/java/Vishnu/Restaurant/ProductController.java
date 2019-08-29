package Vishnu.Restaurant;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Vishnu.Dao.CategoryDAO;
import Vishnu.Dao.ProductDAO;
import Vishnu.Dao.SupplierDAO;
import Vishnu.Model.Category;
import Vishnu.Model.Product;
import Vishnu.Model.Supplier;

@Controller
public class ProductController {
    @Autowired
    ProductDAO productDAO;

    @Autowired
    CategoryDAO categoryDAO;

    @Autowired
    SupplierDAO supplierDAO;

    @RequestMapping(value = "product", method = RequestMethod.GET)
    public String showProduct(Model m) {
        Product product = new Product();
        m.addAttribute(product);

        m.addAttribute("categoryList", this.getCategories());
        m.addAttribute("supplierList", this.getSuppliers());

        return "product";
    }

    public LinkedHashMap<Integer, String> getCategories() {
        List<Category> listCategories = categoryDAO.retrieveCategory();
        LinkedHashMap<Integer, String> categoriesList = new LinkedHashMap<Integer, String>();

        for (Category category : listCategories) {
            categoriesList.put(category.getCatId(), category.getCatName());
        }

        return categoriesList;
    }


    public LinkedHashMap<Integer, String> getSuppliers() {
        List<Supplier> listsupplier = supplierDAO.retrieveSupplier();
        LinkedHashMap<Integer, String> suppliersList = new LinkedHashMap<Integer, String>();

        for (Supplier supplier : listsupplier) {
            suppliersList.put(supplier.getSupplierId(), supplier.getSupplierName());
        }

        return suppliersList;
    }


    @RequestMapping(value = "InsertProduct", method = RequestMethod.POST)
    public String insertProduct(@ModelAttribute("product") Product product, @RequestParam("pimage") MultipartFile fileDetail, Model m, BindingResult result) {

        productDAO.addProduct(product);

        System.out.println("image processing");
        String path = "C:\\Users\\Vishnu Thamizharasan\\workspace\\Restaurant\\src\\main\\webapp\\images";

        String fileinfo = path + product.getProductId() + ".jpg";
        System.out.println("uploading");
        File f = new File(fileinfo);
        if (!fileDetail.isEmpty()) {
            try {
                byte buff[] = fileDetail.getBytes();
                FileOutputStream fos = new FileOutputStream(f);
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(buff);
                bs.close();
            } catch (Exception e) {
                System.out.println("Exception Arised ");
            }
        } else {
            m.addAttribute("error", "Problem in File Uploading");
        }

        Product product1 = new Product();
        m.addAttribute(product1);

        return "redirect:/product";
    }


    @RequestMapping(value = "showproduct")
    public String showProducts(Model m) {
        List<Product> listProducts = productDAO.retrieveProduct();
        m.addAttribute("productList", listProducts);

        return "showproduct";
    }

    @RequestMapping(value = "productdisplay")
    public String showproductdispaly(Model m) {
        List<Product> listProducts = productDAO.retrieveProduct();
        m.addAttribute("productList", listProducts);

        return "productdisplay";
    }


    @RequestMapping(value = "productDesc")
    public String showProductDesc(@RequestParam("id") int productId, Model m) {
        //int id=Integer.parseInt(productId);
        Product product = productDAO.getProduct(productId);

        m.addAttribute("product", product);
        return "productdesc";
    }

    @RequestMapping(value = "deleteproduct/{productId}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("productId") int productId, Model m) {
        System.out.println("hello");
        Product product = productDAO.getProduct(productId);
        System.out.println(product);

        productDAO.deleteProduct(product);
        List<Product> listProduct = productDAO.retrieveProduct();
        m.addAttribute("productList", listProduct);

        Product product1 = new Product();
        m.addAttribute(product1);

        return "redirect:/showproduct";
    }

    @RequestMapping(value = "updateproduct/{productId}", method = RequestMethod.GET)
    public String updateProduct(@PathVariable("productId") int productId, Model m) {
        System.out.println("---");
        Product product = productDAO.getProduct(productId);
        m.addAttribute(product);

        List<Product> listProduct = productDAO.retrieveProduct();
        m.addAttribute("productList", listProduct);
        return "updateproduct";
    }

    @RequestMapping(value = "updateproduct", method = RequestMethod.POST)
    public String updateMyProduct(@ModelAttribute("product") Product product, Model m) {
        productDAO.updateProduct(product);

        Product product1 = new Product();
        m.addAttribute(product1);

        List<Product> listProduct = productDAO.retrieveProduct();
        m.addAttribute("productList", listProduct);

        return "redirect:/showproduct";
    }


}
