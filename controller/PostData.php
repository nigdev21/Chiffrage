<?php
class PostData
{
    public static function AddFournisseur($nom_societe, $adresse, $cp, $ville, $groupe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO fournisseur (nom_societe, adresse, cp, ville, groupe) VALUES(:nom, :adresse, :cp, :ville, :groupe)');
        $req->execute(array(
            'nom' => $nom_societe,
            'adresse' => $adresse,
            'cp' => $cp,
            'ville' => $ville,
            'groupe' => $groupe
        ));
    }
    public static function DelFournisseur($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM contactfournisseur WHERE idFournisseur = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM fournisseur WHERE id = ' .$id;
        $bdd->query($req);
    }
    public static function AddContactFournisseur($idFournisseur, $nom, $prenom, $genre, $tel_fixe, $tel_portable, $email, $fonction)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO contactfournisseur (idFournisseur, nom, prenom, genre, tel_fixe, tel_portable, email, fonction) VALUES(:idFournisseur, :nom, :prenom, :genre, :tel_fixe, :tel_portable, :email, :fonction)');
        $req->execute(array(
            'idFournisseur' => $idFournisseur,
            'nom' => $nom,
            'prenom' => $prenom,
            'genre' => $genre,
            'tel_fixe' => $tel_fixe,
            'tel_portable' => $tel_portable,
            'email' => $email,
            'fonction' => $fonction
        ));
    }
    public static function DelContactFournisseur($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM contactfournisseur WHERE idFournisseur = ' .$id;
        $bdd->query($req);
    }
    public static function AddClient($nom_societe, $adresse, $cp, $ville, $groupe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO client (nom_societe, adresse, cp, ville, groupe) VALUES(:nom, :adresse, :cp, :ville, :groupe)');
        $req->execute(array(
            'nom' => $nom_societe,
            'adresse' => $adresse,
            'cp' => $cp,
            'ville' => $ville,
            'groupe' => $groupe
        ));
    }
    public static function DelClient($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM contactclient WHERE id = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM client WHERE id = ' .$id;
        $bdd->query($req);
    }
    public static function AddContactClient($idClient, $nom, $prenom, $genre, $tel_fixe, $tel_portable, $email, $fonction)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO contactclient (idClient, nom, prenom, genre, tel_fixe, tel_portable, email, fonction) VALUES(:idClient, :nom, :prenom, :genre, :tel_fixe, :tel_portable, :email, :fonction)');
        $req->execute(array(
            'idClient' => $idClient,
            'nom' => $nom,
            'prenom' => $prenom,
            'genre' => $genre,
            'tel_fixe' => $tel_fixe,
            'tel_portable' => $tel_portable,
            'email' => $email,
            'fonction' => $fonction
        ));
    }
    public static function DelContactClient($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM contactclient WHERE idClient = ' .$id;
        $bdd->query($req);
    }
    public static function AddFamille($nom)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO famille (nom) VALUES(:nom)');
        $req->execute(array(
            'nom' => $nom
        ));
    }
    public static function DelFamille($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM famillearticle WHERE idFamille = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM famille WHERE id = ' .$id;
        $bdd->query($req);
    }
    public static function AddDevis($nom)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO devis (nom) VALUES(:nom)');
        $req->execute(array(
            'nom' => $nom
        ));
    }
    public static function DelDevis($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM devisclient WHERE idDevis = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM devis WHERE id = ' .$id;
        $bdd->query($req);
    }
    public static function AddArticle($idFournisseur, $nom, $description, $img, $prix)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO article (idFournisseur, nom, description, img, prix) VALUES(:idFournisseur, :nom, :description, :img, :prix)');
        $req->execute(array(
            'idFournisseur' => $idFournisseur,
            'nom' => $nom,
            'description' => $description,
            'img' => $img,
            'prix' => $prix
        ));
    }
    public static function UpdPrixArticle($id, $prix)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET id=:id, prix=:prix WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'prix' => $prix
        ));
    }
    public static function UpdImgArticle($id, $img)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET id=:id, img=:img WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'img' => $img
        ));
    }
    public static function UpdNomArticle($id, $nom)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET id=:id, nom=:nom WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'nom' => $nom
        ));
    }
    public static function UpdDescriptionArticle($id, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET id=:id, description=:description WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'description' => $description
        ));
    }
    public static function UpdNomSClient($id, $nom_societe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE client SET id=:id, nom_societe=:nom_societe WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'nom_societe' => $nom_societe
        ));
    }
    public static function UpdAdresseClient($id, $adresse)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE client SET id=:id, adresse=:adresse WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'adresse' => $adresse
        ));
    }
    public static function UpdCpClient($id, $cp)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE client SET id=:id, cp=:cp WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'cp' => $cp
        ));
    }
    public static function UpdVilleClient($id, $ville)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE client SET id=:id, ville=:ville WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'ville' => $ville
        ));
    }
    public static function UpdGroupeClient($id, $groupe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE client SET id=:id, groupe=:groupe WHERE id = ' . $id);
        $req->execute(array(
            'id' => $id,
            'groupe' => $groupe
        ));
    }
    public static function UpdPrenomClientContact($idClient, $prenom)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, prenom=:prenom WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'prenom' => $prenom
        ));
    }
    public static function UpdGenreClientContact($idClient, $genre)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, genre=:genre WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'genre' => $genre
        ));
    }
    public static function UpdTelFixeClientContact($idClient, $tel_fixe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, tel_fixe=:tel_fixe WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'tel_fixe' => $tel_fixe
        ));
    }
    public static function UpdTelPortableClientContact($idClient, $tel_portable)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, tel_portable=:tel_portable WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'tel_portable' => $tel_portable
        ));
    }
    public static function UpdEmailClientContact($idClient, $email)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, email=:email WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'email' => $email
        ));
    }
    public static function UpdFonctionClientContact($idClient, $fonction)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, fonction=:fonction WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'fonction' => $fonction
        ));
    }
    public static function UpdNomClientContact($idClient, $nom)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE contactclient SET idClient=:idClient, nom=:nom WHERE idClient = ' . $idClient);
        $req->execute(array(
            'idClient' => $idClient,
            'nom' => $nom
        ));
    }
    public static function DelArticle($id)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM famillearticle WHERE idArticle = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM caracteristiquearticle WHERE idArticle = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM normearticle WHERE idArticle = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM accessoirearticle WHERE idArticle = ' .$id;
        $bdd->query($req);
        $req = 'DELETE FROM article WHERE id = ' .$id;
        $bdd->query($req);
    }
    public static function AddFamilleArticle($idFamille, $idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO famillearticle (idFamille, idArticle) VALUES(:idFamille, :idArticle)');
        $req->execute(array(
            'idFamille' => $idFamille,
            'idArticle' => $idArticle
        ));
    }
    public static function DelFamilleArticle($idFamille, $idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM famillearticle WHERE idFamille = ' .$idFamille. ' AND idArticle = ' .$idArticle;
        $bdd->query($req);
    }
    public static function AddDevisClient($idClient, $idDevis)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO devisclient (idDevis, idClient) VALUES(:idDevis, :idClient)');
        $req->execute(array(
            'idDevis' => $idDevis,
            'idClient' => $idClient
        ));
    }
    public static function DelDevisClient($idClient, $idDevis)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM devisclient WHERE idDevis = ' .$idDevis. ' AND idClient = ' .$idClient;
        $bdd->query($req);
    }
    public static function AddGroupeFamille($idGroupe, $idFamille)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO groupefamille (idGroupe, idFamille) VALUES(:idGroupe, :idFamille)');
        $req->execute(array(
            'idGroupe' => $idGroupe,
            'idFamille' => $idFamille
        ));
    }
    public static function DelGroupeFamille($idGroupe, $idFamille)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM groupefamille WHERE idGroupe = ' .$idGroupe. ' AND idFamille = ' .$idFamille;
        $bdd->query($req);
    }
    public static function AddCaracteristiqueArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO caracteristiquearticle (idArticle, nom, description) VALUES(:idArticle, :nom, :description)');
        $req->execute(array(
            'idArticle' => $idArticle,
            'nom' => $nom,
            'description' => $description
        ));
    }
    public static function DelCaracteristiqueArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM caracteristiquearticle WHERE idArticle = ' .$idArticle. ' AND nom = "' .$nom. '" AND description = "' .$description. '"';
        $bdd->query($req);
    }
    public static function DelAllCaracteristiqueArticle($idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM caracteristiquearticle WHERE idArticle = ' .$idArticle;
        $bdd->query($req);
    }
    public static function AddNormeArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO normearticle (idArticle, nom, description) VALUES(:idArticle, :nom, :description)');
        $req->execute(array(
            'idArticle' => $idArticle,
            'nom' => $nom,
            'description' => $description
        ));
    }
    public static function DelNormeArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM normearticle WHERE idArticle = ' .$idArticle. ' AND nom = "' .$nom. '" AND description = "' .$description. '"';
        $bdd->query($req);
    }
    public static function DelAllNormeArticle($idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM normearticle WHERE idArticle = ' .$idArticle;
        $bdd->query($req);
    }
    public static function AddAccessoireArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('INSERT INTO accessoirearticle (idArticle, nom, description) VALUES(:idArticle, :nom, :description)');
        $req->execute(array(
            'idArticle' => $idArticle,
            'nom' => $nom,
            'description' => $description
        ));
    }
    public static function DelAccessoireArticle($idArticle, $nom, $description)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM accessoirearticle WHERE idArticle = ' .$idArticle. ' AND nom = "' .$nom. '" AND description = "' .$description. '"';
        $bdd->query($req);
    }
    public static function DelAllAccesssoireArticle($idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'DELETE FROM accessoirearticle WHERE idArticle = ' .$idArticle;
        $bdd->query($req);
    }
    public static function AddDescriptifArticle($idArticle, $descriptif)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET descriptif=:descriptif WHERE id = ' . $idArticle);
        $req->execute(array(
            'descriptif' => $descriptif
        ));
    }
    public static function DelDescriptifArticle($idArticle)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = $bdd->prepare('UPDATE article SET descriptif=:descriptif WHERE id = ' . $idArticle);
        $req->execute(array(
            'descriptif' => ""
        ));
    }
}