package model;

public class User {
    private int id;
    private String username;
    private String email;
    private String passwordHash;
    private String fullName;
    private String address;
    private String phoneNumber;
    private byte[] profileImage;

    // Constructor


    public User() {
    }

    public User(String username, String email, String passwordHash, String fullName, String address, String phoneNumber, byte[] profileImage) {
        this.username = username;
        this.email = email;
        this.passwordHash = passwordHash;
        this.fullName = fullName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.profileImage = profileImage;
    }

    public User(int id, String username, String email, String passwordHash, String fullName, String address,
                String phoneNumber, byte[] profileImage) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.passwordHash = passwordHash;
        this.fullName = fullName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.profileImage = profileImage;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public byte[] getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(byte[] profileImage) {
        this.profileImage = profileImage;
    }


}

