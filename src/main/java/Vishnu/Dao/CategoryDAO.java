 package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Category;

public interface CategoryDAO 
{
	public boolean addCategory(Category category);
	public List<Category> retrieveCategory();
	public boolean deleteCategory(Category category);
	public Category getCategory(int catId);
	public boolean updateCategory(Category category);
}


