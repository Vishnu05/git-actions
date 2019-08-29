 package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Register;
import Vishnu.Model.goooo;

public interface RegisterDao {

	public boolean addRegister(Register register);
	public boolean updateRegister(Register register);
	public boolean deleteRegister(Register register);
	public List<Register> retrieveRegister();
	public Register getRegister(String username);
	public void addgo(goooo go);
	
}
