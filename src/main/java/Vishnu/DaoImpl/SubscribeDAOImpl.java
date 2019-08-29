package Vishnu.DaoImpl;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Vishnu.Dao.SubscribeDAO;
import Vishnu.Model.Subscribe;

@Repository("subscribeDAO")
public class SubscribeDAOImpl implements SubscribeDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addSubscribe(Subscribe subcribe) {
	
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(subcribe);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	
	}

	public Subscribe getSubscribe(int subid) {
		
		Session session=sessionFactory.openSession();
		Subscribe subscribe=(Subscribe)session.get(Subscribe.class,subid);
		session.close();
		return subscribe;
	}

	public List<Subscribe> retrieveSubscribe() {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Subscribe");
		List<Subscribe> listSubscribe=query.list();
		session.close();
		return listSubscribe;
	}

}
