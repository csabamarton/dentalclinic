package com.smdental.dao;

import com.smdental.model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDaoImpl extends AbstractDao<Long, User> implements UserDao {

    @Override
    public User findUserByName(String userName) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("userName", userName));
        return (User) crit.uniqueResult();
    }
}
