package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Subscribe;

public interface SubscribeDAO {

	public boolean addSubscribe(Subscribe subcribe);
	public Subscribe getSubscribe(int subid);
	public List<Subscribe> retrieveSubscribe();
}
