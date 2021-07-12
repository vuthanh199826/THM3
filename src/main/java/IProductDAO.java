import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    void insert(Product product) throws SQLException;
    List<Product> display() throws SQLException;
    void delete(int id) throws SQLException;
    Product selectProduct(int id) throws SQLException;
    void update(Product product) throws SQLException;
    List<Product> search(String name) throws SQLException;
}
