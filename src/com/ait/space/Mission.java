package com.ait.space;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement

public class Mission {
	 private int id;

	 private String name;

	 private String orbitor;

	 private String launch;

	private String landing;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getOrbitor() {
		return orbitor;
	}

	public void setOrbitor(String orbitor) {
		this.orbitor = orbitor;
	}
	
	public String getLaunch() {
		return launch;
	}

	public void setLaunch(String launch) {
		this.launch = launch;
	}
	
	public String getLanding() {
		return landing;
	}

	public void setLanding(String landing) {
		this.landing = landing;
	}
}
