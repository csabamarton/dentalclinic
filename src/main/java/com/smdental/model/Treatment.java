package com.smdental.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Treatment {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long treatmentId;

	private String treatmentName;

	private String description;

	private Double price;

	public Long getTreatmentId()
	{
		return treatmentId;
	}

	public void setTreatmentId(Long treatmentId)
	{
		this.treatmentId = treatmentId;
	}

	public String getTreatmentName()
	{
		return treatmentName;
	}

	public void setTreatmentName(String treatmentName)
	{
		this.treatmentName = treatmentName;
	}

	public String getDescription()
	{
		return description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

	public Double getPrice()
	{
		return price;
	}

	public void setPrice(Double price)
	{
		this.price = price;
	}
}
