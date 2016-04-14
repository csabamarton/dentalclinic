package com.smdental.dao;

import com.smdental.model.Treatment;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class TreatmentDaoImpl extends AbstractDao<Long, Treatment> implements TreatmentDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insertTreatment(Treatment treatment)
	{
		persist(treatment);
	}

	@Override
	public Treatment findById(Long treatmentId)
	{
		return getByKey(treatmentId);
	}

	@Override
	public List<Treatment> getAllTreatments()
	{
		Criteria criteria = createEntityCriteria();
		return (List<Treatment>) criteria.list();
	}

	@Override
	public void deleteTreatment(Long treatmentId)
	{
		Query query = getSession().createSQLQuery("delete from Employee where treatment.treatmentid = :id");
		query.setLong("id", treatmentId);
		query.executeUpdate();
		Session session = sessionFactory.getCurrentSession();
		session.delete(findById(treatmentId));
	}

}
