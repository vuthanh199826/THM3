import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {
    private Connection connection = ConnectionJDBC.getConnection();
    private final String INSERT_PRODUCT = "insert into product (name,price,quantity,color,product.describe,category) values (?,?,?,?,?,?)";
    private final String ALLPRODUCT = "select * from product";
    private final String DELETE = "delete from product where id = ?";
    private final String GET_PRODUCT = " select * from product where id = ?";
    private final String UPDATE = "update product set product.name = ?, price = ?, quantity = ?, color = ?, product.describe = ?, category = ? where id = ?";
private final String SEARCH = "select * from product where name like ?";
    public ProductDAO() {
    }

    @Override
    public void insert(Product product) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
        preparedStatement.setString(1, product.getName());
        preparedStatement.setInt(2, product.getPrice());
        preparedStatement.setInt(3, product.getQuantity());
        preparedStatement.setString(4, product.getColor());
        preparedStatement.setString(5, product.getDescribe());
        preparedStatement.setInt(6, product.getCategory());
        preparedStatement.executeUpdate();
    }

    @Override
    public List<Product> display() throws SQLException {
        List<Product> products = new ArrayList<>();
        PreparedStatement preparedStatement = connection.prepareStatement(ALLPRODUCT);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String describe = resultSet.getString("describe");
            int category = resultSet.getInt("category");
            products.add(new Product(id, name, price, quantity, color, describe, category));
        }
        return products;
    }

    @Override
    public void delete(int id) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();
    }

    @Override
    public Product selectProduct(int id) throws SQLException {
        Product product = null;
        PreparedStatement preparedStatement = connection.prepareStatement(GET_PRODUCT);
        preparedStatement.setInt(1,id);
        ResultSet resultSet =  preparedStatement.executeQuery();
        while (resultSet.next()){
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String describe = resultSet.getString("describe");
            int category = resultSet.getInt("category");
            product = new Product(id,name,price,quantity,color,describe,category);
        }
        return product;
    }

    @Override
    public void update(Product product) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
        preparedStatement.setString(1,product.getName());
        preparedStatement.setInt(2,product.getPrice());
        preparedStatement.setInt(3,product.getQuantity());
        preparedStatement.setString(4,product.getColor());
        preparedStatement.setString(5,product.getDescribe());
        preparedStatement.setInt(6,product.getCategory());
        preparedStatement.setInt(7,product.getId());
        preparedStatement.executeUpdate();
    }

    @Override
    public List<Product> search(String name) throws SQLException {
        List<Product> products = new ArrayList<>();
        PreparedStatement preparedStatement =connection.prepareStatement(SEARCH);
        preparedStatement.setString(1,"%"+name+"%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String namex = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String describe = resultSet.getString("describe");
            int category = resultSet.getInt("category");
            products.add(new Product(id, namex, price, quantity, color, describe, category));
        }
        return products;
    }
}
