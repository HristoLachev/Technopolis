
import static org.junit.Assert.assertNotNull;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.frontController.model.Account;
import com.frontController.model.AccountDAO;
import com.frontController.model.Address;
import com.frontController.model.AddressDAO;
import com.frontController.model.DBConnection;
import com.frontController.model.EmailTakenExeption;
import com.frontController.model.InvalidEmailOrPasswordExeption;
import com.frontController.model.Product;
import com.frontController.model.ProductDAO;

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

	@Test
	public void registerAddress() throws SQLException {
		assertNotNull(AddressDAO
				.registerAddress(new Address("ж.к.Бъг 1,блок 9", "София", "1001", "Hristo", "Lachev", "088123789"), 1));

	}

	// @Test
	// public void typeProductSearch() throws SQLException {
	// ArrayList<Product> tested = ProductDAO.getProductsByType("Телевизор");
	// for (Product product : tested) {
	// product.printDescriptions();
	// }
	// }

	@Test
	public void modelProductSearch() throws SQLException {
		ArrayList<Product> tested = ProductDAO.getProductsByModel("Sang");
		for (Product product : tested) {
			product.printDescriptions();
		}
	}

	@Test
	public void test() {
		Integer x = 5;
		Integer y = 3;
		ArrayList<Product> list = new ArrayList<Product>();
		list.add(new Product(x));
		list.add(new Product(y));
		list.add(new Product(x));
		list.add(new Product(y));
		list.add(new Product(x));
		list.add(new Product(y));
		list.add(new Product(x));
		list.add(new Product(y));
		list.add(new Product(x));
		list.add(new Product(y));
		

		ProductDAO.removeDublicates(list);
		Iterator iterator=list.iterator();
		
		while(iterator.hasNext()){
			System.out.println(iterator.next());
		}
		

	
	}

}
