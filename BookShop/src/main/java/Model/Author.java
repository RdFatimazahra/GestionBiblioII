package model;

public class Author {
    private int id;
    private String name;
    private String bio;
    private byte[] profileImage;

    public Author() {
        // Default constructor
    }

    public Author(String name, String bio, byte[] profileImage) {
        this.name = name;
        this.bio = bio;
        this.profileImage = profileImage;
    }

    public Author(int id, String name, String bio, byte[] profileImage) {
        this.id = id;
        this.name = name;
        this.bio = bio;
        this.profileImage = profileImage;
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

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public byte[] getProfileImage() {
        return profileImage;
    }

    public  void setProfileImage(byte[] profileImage) {
        this.profileImage = profileImage;
    }


}

