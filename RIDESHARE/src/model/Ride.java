package model;



public class Ride 
{
	
	private int id;
	private String date;
	private String origin;
	private String destination;
	private double fare;
	private String time;
	private int user;
	private String message;
	
	
	




	public Ride(int id,String date, String origin, String destination, double fare, String time,int user,String message) {
		super();
		this.date = date;
		this.origin = origin;
		this.destination = destination;
		this.fare = fare;
		this.time = time;
		this.id = id;
		this.message = message;
		this.user = user;
	}



	


	public String getOrigin() {
		return origin;
	}



	public void setOrigin(String origin) {
		this.origin = origin;
	}



	public String getDestination() {
		return destination;
	}



	public void setDestination(String destination) {
		this.destination = destination;
	}



	public double getFare() {
		return fare;
	}



	public void setFare(double fare) {
		this.fare = fare;
	}




	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public int getUser() {
		return user;
	}



	public void setUser(int user) {
		this.user = user;
	}



	public String getMessage() {
		return message;
	}



	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
	
	

}
