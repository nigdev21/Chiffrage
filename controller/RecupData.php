<?php
class RecupData
{
    //************  Devis  *************//
    public static function getAllDevis()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM devis')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getLastDevis()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT MAX(id) as last FROM devis')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getDevisById($devis)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'SELECT * FROM devis WHERE id = ' . $devis;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getDevisByNom($devis)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'SELECT * FROM devis WHERE nom = "' . $devis . '"';
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //************  Groupe  *************//
    public static function getAllGroupe()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM groupe')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getGroupeById($groupe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = 'SELECT * FROM groupe WHERE id = ' . $groupe;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function GetGroupeByFamille($famille)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM groupe INNER JOIN groupefamille ON groupe.id = groupefamille.idGroupe WHERE idFamille = " . $famille;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //************  Fournisseur  *************//
    public static function getAllFournisseurs()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM fournisseur')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getContactFournisseurById($fournisseur)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM contactfournisseur WHERE idFournisseur = " . $fournisseur;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getFournisseurByArticle($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM fournisseur WHERE id = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //************  Client  *************//
    public static function getAllClients()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM client')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getClientById($client)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM client WHERE id = " . $client;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getContactClientById($client)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM contactclient WHERE idClient = " . $client;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getClientByDevis($devis)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM client INNER JOIN devisclient ON client.id = devisclient.idClient WHERE idDevis = " . $devis;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Articles  ***********//
    public static function getAllArticles()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM article')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getArticleById($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM article WHERE id = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getArticlesByChoix($choix)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT id, idFournisseur, nom, description prix FROM article INNER JOIN articlechoix ON article.id = articlechoix.idArticle WHERE idChoix = " . $choix;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getCaracteristiqueByArticle($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM caracteristiquearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getNormeByArticle($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM normearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getAccessoireByArticle($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM accessoirearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getArticlesByFamille($famille)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM article INNER JOIN famillearticle ON article.id = famillearticle.idArticle WHERE idFamille = " . $famille;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Famille  ***********//
    public static function getAllFamilles()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM famille')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getFamilleById($famille)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM famille WHERE id = " . $famille;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getFamilleByArticle($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM famille INNER JOIN famillearticle ON famille.id = famillearticle.idFamille WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getFamilleByGroupe($groupe)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT id, nom FROM famille INNER JOIN groupefamille ON famille.id = groupefamille.idFamille WHERE idGroupe = " . $groupe;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Option  ***********//
    public static function getAllOptions()
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        return $bdd->query('SELECT * FROM options')->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getOptionById($option)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM options WHERE id = " . $option;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    public static function getOptionsByChoix($choix)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM options INNER JOIN choixoption ON options.id = choixoption.idOption WHERE idChoix = " . $choix;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Caracteristiques  ***********//
    public static function getCaracteristiqueById($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM caracteristiquearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Normes  ***********//
    public static function getNormeById($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM normearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
    //***********  Normes  ***********//
    public static function getAccessoireById($article)
    {
        $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
        $req = "SELECT * FROM accessoirearticle WHERE idArticle = " . $article;
        return $bdd->query($req)->fetchAll(PDO::FETCH_OBJ);
    }
}
