package com.smdental.service;

import com.smdental.model.Treatment;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static com.google.common.truth.Truth.assert_;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/dispatcher-servlet.xml"})
public class TreatmentServiceImplTest {
	protected static Logger logger = Logger.getLogger(TreatmentServiceImplTest.class);

	@Autowired
	TreatmentService treatmentService;

	@Test
	public void canGetHeadTreatments()
	{
		List<Treatment> headServices = treatmentService.getHeadTreatments(3);

		assert_().withFailureMessage("Error during the landingpage head treatment request").that
				(headServices).isNotNull();
	}
}