package model;

public class Reservation 
{
	
	private int rideid;
	private int customerid;
	
	public Reservation(int rideid, int customerid) {
		super();
		this.rideid = rideid;
		this.customerid = customerid;
	}

	public int getRideid() {
		return rideid;
	}

	public void setRideid(int rideid) {
		this.rideid = rideid;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	
	
	
	
	
}
