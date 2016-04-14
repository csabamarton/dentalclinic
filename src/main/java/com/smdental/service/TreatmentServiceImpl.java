package com.smdental.service;

import com.google.common.collect.Lists;
import com.smdental.dao.TreatmentDao;
import com.smdental.model.Treatment;
import com.smdental.model.builder.TreatmentBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TreatmentServiceImpl implements TreatmentService
{

	@Autowired
	TreatmentDao treatmentDao;

	public List<Treatment> getHeadTreatments(int numberOfTreatments)
	{
		List<Treatment> headTreatments = mockHeadServices();

		return headTreatments;
	}

	@Override
	public List<Treatment> getTreatments()
	{
		return treatmentDao.getAllTreatments();
	}

	@Override
	public Treatment getTreatmentById(Long treatmentId)
	{
		return treatmentDao.findById(treatmentId);
	}


	private List<Treatment> mockHeadServices()
	{
		//@formatter:off
		List<Treatment> headTreatments = Lists.newArrayList();
		Treatment treatment1 = TreatmentBuilder.build(
				t -> t.setTreatmentId(1L),
				t -> t.setTreatmentName("Tooth polish"),
				t -> t.setDescription("Tooth polishing is the act of smoothing the tooth surface. The purpose of polishing is to make it difficult for plaque to accumulate on the tooth surface area."));

		headTreatments.add(treatment1);

		Treatment treatment2 = TreatmentBuilder.build(
				t -> t.setTreatmentId(2L),
				t -> t.setTreatmentName("First Control"),
				t -> t.setDescription("First Control is the act of smoothing the tooth surface. The purpose of polishing is to make it difficult for plaque to accumulate on the tooth surface area."));

		headTreatments.add(treatment2);

		Treatment treatment3 = TreatmentBuilder.build(
				t -> t.setTreatmentId(3L),
				t -> t.setTreatmentName("Root removal"),
				t -> t.setDescription("Root removal is the act of smoothing the tooth surface. The purpose of polishing is to make it difficult for plaque to accumulate on the tooth surface area."));
		//@formatter:on

		headTreatments.add(treatment3);

		return headTreatments;

	}
}
