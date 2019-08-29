package Vishnu.DaoImpl;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vishnu.Dao.RegisterDao;
import Vishnu.Model.Register;
import Vishnu.Model.goooo;

@Repository("registerDao")
public class RegisterDaoimpl implements RegisterDao {
    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public boolean addRegister(Register register) {

        try {
            Session session = sessionFactory.getCurrentSession();
            session.save(register);
            return true;
        } catch (Exception e) {

            return false;
        }
    }

    public boolean updateRegister(Register register) {

        try {
            Session session = sessionFactory.getCurrentSession();
            session.update(register);
            return true;
        } catch (Exception e) {
            return false;
        }

    }

    public boolean deleteRegister(Register register) {

        try {
            Session session = sessionFactory.getCurrentSession();
            session.delete(register);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public List<Register> retrieveRegister() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from Register");
        List<Register> listRegister = query.list();
        session.close();
        return listRegister;


    }

    public Register getRegister(String username) {

        Session session = sessionFactory.openSession();
        Register register = (Register) session.get(Register.class, username);
        session.close();
        return register;
    }

    @Transactional
    public void addgo(goooo go) {
        Session session = sessionFactory.getCurrentSession();
        session.save(go);

    }


}

