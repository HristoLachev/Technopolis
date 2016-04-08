
import static org.junit.Assert.assertNotNull;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import frontController.model.Account;
import frontController.model.AccountDAO;
import frontController.model.Address;
import frontController.model.AddressDAO;
import frontController.model.DBConnection;
import frontController.model.EmailTakenExeption;
import frontController.model.InvalidEmailOrPasswordExeption;
import frontController.model.Order;
import frontController.model.OrderDAO;
import frontController.model.Product;
import frontController.model.ProductDAO;

public class DataBaseTest {
	@Test
	public void getCon() {
		assertNotNull(DBConnection.getConnection());
	}

	@Test(expected = InvalidEmailOrPasswordExeption.class)
	public void getAccount() throws SQLException, InvalidEmailOrPasswordExeption {
		assertNotNull(AccountDAO.getAcc("InvalidEmail", "InvalidPassword"));
	}

	@Test
	public void getAccountCorrect() throws SQLException, InvalidEmailOrPasswordExeption {
		assertNotNull(AccountDAO.getAcc("123", "123"));
	}

	// @Test(expected = EmailTakenExeption.class)
	// public void registerAccountEmailTakenExeption()
	// throws SQLException, InvalidEmailOrPasswordExeption, EmailTakenExeption {
	// assertNotNull(AccountDAO.registerAcc(new Account("icoic@abv.bg", "icoic",
	// "0889123456", "Hristo", "Lachev")));
	// }

	// @Test
	// public void registerAddress() throws SQLException {
	// assertNotNull(AddressDAO
	// .registerAddress(new Address("ж.к.Бъг 1,блок 9", "София", "1001",
	// "Hristo", "Lachev", "088123789"), 1));
	//
	// }

	@Test
	public void typeProductSearch() throws SQLException {
		ArrayList<Product> tested = ProductDAO.getProductsByType("Телевизор");
		for (Product product : tested) {
			System.out.println(product);
			product.printDescriptions();
		}
	}

	// @Test
	// public void modelProductSearch() throws SQLException {
	// ArrayList<Product> tested = ProductDAO.getProductsByModel("Sang");
	// for (Product product : tested) {
	// product.printDescriptions();
	// }
	// }

	// @Test
	// public void search() throws SQLException {
	// ArrayList<Product> list = ProductDAO.getProducts("", "", null, null);
	// for (Product p : list) {
	// System.out.println(p);
	// }

	// }

	// @Test
	// public void testOrderDao() throws SQLException {
	// ArrayList<Order> orders = OrderDAO
	// .getOrdersForAccount(new Account(1, "icoic@abv.bg", "icoic",
	// "0889123456", "Hristo", "Lachev", null));
	//
	// for (Order order : orders) {
	// System.out.println(order);
	// for (Product product : order.getBasket()) {
	// System.out.println(product);
	// product.printDescriptions();
	// }
	// }
	// }

	@Test
	public void testPassChange() throws SQLException {
		AccountDAO.passwordChange(new Account(4, "asd", "fasd", null, null, null, null, null), "piJITKA");

	}

	// @Test
	// public void testexecuteOrder() throws SQLException,
	// InvalidEmailOrPasswordExeption {
	// Account acc = AccountDAO.getAcc("123", "123");
	// Product p = new Product(1);
	// p.setQuantity(1);
	// Product z = new Product(2);
	// z.setQuantity(2);
	// acc.addToBasket(p);
	// acc.addToBasket(z);

	// OrderDAO.executeOrder(acc, AddressDAO.getAddress(2));

	// }

}
