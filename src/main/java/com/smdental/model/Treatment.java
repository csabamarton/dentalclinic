package com.smdental.model;

import javax.persistence.*;

@Entity
@Table(name = "treatment")
public class Treatment {

	@Id
	@Column(name = "treatmentid")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long treatmentId;

	@Column(name = "treatmentname")
	private String treatmentName;

	@Column(name = "description")
	private String description;

	@Column(name = "price")
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
