package Model;

public class Avis {

    private int IdAvis;
    private String auteur;
    private String avis;

    // Constructeur par défaut
    public Avis() {
        // Vous pouvez initialiser les variables ici si nécessaire
    }

    // Constructeur avec paramètres
    public Avis(int idAvis, String auteur, String avis) {
        this.IdAvis = idAvis;
        this.auteur = auteur;
        this.avis = avis;
    }

    // Getter pour IdAvis
    public int getIdAvis() {
        return IdAvis;
    }

    // Setter pour IdAvis
    public void setIdAvis(int idAvis) {
        this.IdAvis = idAvis;
    }

    // Getter pour auteur
    public String getAuteur() {
        return auteur;
    }

    // Setter pour auteur
    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    // Getter pour avis
    public String getAvis() {
        return avis;
    }

    // Setter pour avis
    public void setAvis(String avis) {
        this.avis = avis;
    }

}

