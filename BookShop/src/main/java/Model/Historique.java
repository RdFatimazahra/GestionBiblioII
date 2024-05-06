package Model;

import java.sql.Date;

public class Historique {
    private String titre;
    private Date date_emrunte;

    public Historique(String titre, Date date_emrunte) {
        this.titre = titre;
        this.date_emrunte = date_emrunte;
    }

    public Historique() {

    }

    public String getTitre(String titre) {
        return this.titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Date getDate_emrunte(Date dateEmrunte) {
        return date_emrunte;
    }

    public void setDate_emrunte(Date date_emrunte) {
        this.date_emrunte = date_emrunte;
    }
}
