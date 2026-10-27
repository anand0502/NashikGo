package com.spring.demo;

public class FortDTO {

	
	 private String id;
	    private String name;
	    private String imagePath;
	    private String description;
	    private String openTime;
	    private String entryFee;
	    private String location;
	    private String mapLink;

	    public FortDTO(String id, String name, String imagePath, String description, String openTime, String entryFee, String location, String mapLink) {
	        this.id = id;
	        this.name = name;
	        this.imagePath = imagePath;
	        this.description = description;
	        this.openTime = openTime;
	        this.entryFee = entryFee;
	        this.location = location;
	        this.mapLink = mapLink;
	    }

	    // Getters
	    public String getId() { return id; }
	    public String getName() { return name; }
	    public String getImagePath() { return imagePath; }
	    public String getDescription() { return description; }
	    public String getOpenTime() { return openTime; }
	    public String getEntryFee() { return entryFee; }
	    public String getLocation() { return location; }
	    public String getMapLink() { return mapLink; }
	
}
