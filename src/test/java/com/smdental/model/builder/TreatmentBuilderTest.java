package com.smdental.model.builder;

import com.smdental.model.Treatment;

import org.junit.Test;

import static com.google.common.truth.Truth.assert_;

public class TreatmentBuilderTest {
	@Test
	public void canConstructATreatmentWithLambdaBuilder()
	{
		long treatmentId = 101101101L;
		String treatmentName = "Toothpolish";

		Treatment treatment = TreatmentBuilder.build(
				t -> t.setTreatmentId(treatmentId),
				t -> t.setTreatmentName(treatmentName));

		assert_().withFailureMessage("Cannot build Treatment with lambda").that(treatment)
				.isNotNull();

		assert_().withFailureMessage("Cannot build Treatment with lambda").that(treatment
				.getTreatmentName()).isEqualTo(treatmentName);
	}

}