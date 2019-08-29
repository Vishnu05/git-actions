 package Vishnu.DaoImpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Dao.OrderDAO;
import Vishnu.Model.OrderDetails;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	SessionFactory sessionFac;
	
	public void insertOrder(OrderDetails order)
	{
		Session session=sessionFac.openSession();	
		session.beginTransaction();
		session.persist(order);
		session.getTransaction().commit();
		session.close();
		
	}
	public List<OrderDetails> retrieveOrders(String username)
	{
		Query q=sessionFac.getCurrentSession().createQuery("from OrderDetails where username");
		q.setParameter("uname", username);
		List<OrderDetails> list=q.list();
		return list;
	}
	
	public OrderDetails getOrderDetails()
		{
			Session session=sessionFac.openSession();
			Query q=session.createQuery("from OrderDetails order by orderid");
			List<OrderDetails> list=q.list();
			if(list.size()>0)
			{
				return list.get(0);
			}
			else {
				return list.get(1);
			}
			}
		
		public OrderDAOImpl(SessionFactory sessionFactory)
		{
			super();
			sessionFac=sessionFactory;
			
		}	

}
