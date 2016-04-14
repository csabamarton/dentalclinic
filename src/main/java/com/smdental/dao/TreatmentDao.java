package com.smdental.dao;

import com.smdental.model.Treatment;

import java.util.List;

public interface TreatmentDao {

	void insertTreatment(Treatment treatment);

	void deleteTreatment(Long treatmentId);

	Treatment findById(Long treatmentId);

	List<Treatment> getAllTreatments();
}
