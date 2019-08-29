 package Vishnu.DaoImpl;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
//import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Dao.CartDAO;
import Vishnu.Model.Cart;
@Repository
public class CartDAOImpl implements CartDAO {
	@Autowired
	SessionFactory sessionFac;
	
	public void insertCart(Cart cart) {
		Session session=sessionFac.openSession();	
		session.beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
		session.close();
		
	}

	
	public Cart getCart(int citemid) {
		Session session=sessionFac.openSession();	
		Transaction tx=session.beginTransaction();
		Cart p = (Cart) session.load(Cart.class, new Integer(citemid));
		System.out.println("===================> p =" +p);
		tx.commit();
		session.close();
		return p;
	}


	
	public List<Cart> retrive(String username){

		Session session1=sessionFac.openSession();
		@SuppressWarnings("rawtypes")
		org.hibernate.Query query=session1.createQuery("from Cart where username=:username and status='N'");
		query.setParameter("username",username);
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		return list;
	}


	public void removeCart(Cart cart) {
		Session session=sessionFac.openSession();	
		session.beginTransaction();
		session.delete(cart);
		session.getTransaction().commit();
		session.close();
	}

	public void updateCart(Cart cart) {
		Session session=sessionFac.openSession();	
		session.beginTransaction();
		session.update(cart);
		session.getTransaction().commit();
		session.close();
	}
	
	public Cart getnCartID(String username)
	{
		String hql = "cartid FROM Cart c  where c.username = :Name";
		Session session=sessionFac.openSession();	
		org.hibernate.Query query = session.createQuery(hql);
		query.setParameter("Name",username);
		session.beginTransaction();
		Cart p = (Cart) query.uniqueResult();
		System.out.println("===================> p =" +p);
		session.getTransaction().commit();
		session.close();
		return p;
		
	}
	
	public void setQuantity(String username,String name,int qty,int caid)
	{
		String hql = "UPDATE Cart Set quantity = :quantity " + "WHERE username =:Name AND citemid =:id AND productName= :productName";
		Session session=sessionFac.openSession();
		org.hibernate.Query query = session.createQuery(hql);
		query.setParameter("quantity",qty);
		query.setParameter("Name",username);
		query.setParameter("id",caid);
		query.setParameter("productName",name);
		session.beginTransaction();
		query.executeUpdate();
		System.out.println("QUANTITY SET");
		session.getTransaction().commit();
		session.close();
		
	}
	
	public void deletecitems(String username)
	{
		String hql = "DELETE FROM Cart c WHERE c.username =:Name";
		Session session=sessionFac.openSession();
		org.hibernate.Query query = session.createQuery(hql);
		query.setParameter("Name", username);
		session.beginTransaction();
		query.executeUpdate();
		System.out.println("Deleted");
		session.getTransaction().commit();
		session.close();
		
	}


	public CartDAOImpl(SessionFactory sessionFactory) {
		super();
		sessionFac=sessionFactory;
	}

}
