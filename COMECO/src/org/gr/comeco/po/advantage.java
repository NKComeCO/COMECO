package org.gr.comeco.po;

public class Advantage {
	private int id;
	private String name;
	public Advantage() {
		super();
	}
	
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

	@Override
	public String toString() {
		return "advantage [id=" + id + ", name=" + name + "]";
	}
	
}
