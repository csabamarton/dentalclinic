package com.smdental.model;

public class Treatment {

	Long treatmentId;
	String treatmentName;
	String description;
	Double price;

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
