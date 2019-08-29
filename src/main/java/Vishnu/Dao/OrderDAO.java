package Vishnu.Dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import Vishnu.Model.OrderDetails;

@Repository("OrderDAO")
public interface OrderDAO {
	public void insertOrder(OrderDetails order);

	public List<OrderDetails> retrieveOrders(String username);

}
