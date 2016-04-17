package com.smdental.service;

import com.smdental.model.Treatment;

import java.util.List;

public interface TreatmentService {
	List<Treatment> getHeadTreatments(int numberOfTreatments);

	List<Treatment> getTreatments();

	Treatment getTreatmentById(Long treatmentId);

	void insertTreatment(Treatment treatment);
}
