package com.smdental.model.builder;

import com.smdental.model.Treatment;

import java.util.function.Consumer;
import java.util.stream.Stream;

public class TreatmentBuilder {
	@FunctionalInterface
	public interface TreatmentSetter extends Consumer<Treatment>{}


	public static Treatment build(TreatmentSetter... treatmentSetters) {
		final Treatment treatment = new Treatment();

		Stream.of(treatmentSetters).forEach(
				s -> s.accept(treatment)
		);

		return treatment;
	}
}
