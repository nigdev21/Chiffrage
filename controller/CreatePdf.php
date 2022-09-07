<?php
include_once('RecupData.php');
session_start();

//##### FAMILLE #####//

$arrayFamille = $_SESSION['famille'];

//##### ARTICLE #####//

$arrayArticle = $_SESSION['article'];
$arrayArticleSomme = $_SESSION['articleSomme'];

$nomE = "";

for ($i = 0; $i < count($_SESSION['article']); $i++)
{
    if($_SESSION['article'][$i][0]->nom == "REP") 
    {
        $nomE = "R.E.P";
    }
    if($_SESSION['article'][$i][0]->nom == "Peinta") 
    {
        $nomE = "Peinta";
    }
}
    
//##### PDF #####//

// echo '<pre>';
// print_r($arrayArticle);
// echo '</pre>';

require('../pdf/fpdf.php');

class PDF extends FPDF
{
// En-tête
function Header()
{
    for ($i = 0; $i < count($_SESSION['article']); $i++)
    {
        if($_SESSION['article'][$i][0]->nom == "REP") 
        {
            if ( $this->PageNo() !== 1 ) {
                $this->SetFont('Arial','B',8.5);
                $this->Cell(3,5,'Proposition Commerciale et Technique','',0,'',0);
                $this->Ln();
                $this->SetFont('Arial','',8.5);
                $this->Cell(5,5,$_SESSION['numDevis'] . '-' . $_SESSION['clients'][0]->nom_societe . ' en date du ' . date("d/m/y"),'',0,'',0);
                $this->Image('../img/logo2.png',170,6,30);
                $this->SetDrawColor(44,255,229);
                $this->Line(10, 25, 210-10, 25);
            }
            else 
            {
                $this->Image('../img/logo.png',10,6,45);
                $this->Image('../img/logo2.png',170,6,30);
                $this->SetDrawColor(44,255,229);
                $this->Line(10, 25, 210-10, 25);
            }
        }
        if($_SESSION['article'][$i][0]->nom == "Peinta") 
        {
            if ( $this->PageNo() !== 1 ) {
                $this->SetFont('Arial','B',8.5);
                $this->Cell(3,5,'Proposition Commerciale et Technique','',0,'',0);
                $this->Ln();
                $this->SetFont('Arial','',8.5);
                $this->Cell(5,5,$_SESSION['numDevis'] . '-' . $_SESSION['clients'][0]->nom_societe . ' en date du ' . date("d/m/y"),'',0,'',0);
                $this->Image('../img/logo3.jpg',140,10,60);
                $this->SetDrawColor(44,255,229);
                $this->Line(10, 25, 210-10, 25);
            }
            else 
            {
                $this->Image('../img/logo.png',10,6,45);
                $this->Image('../img/logo3.jpg',140,10,60);
                $this->SetDrawColor(44,255,229);
                $this->Line(10, 25, 210-10, 25);
            }
        }
    }
    $this->SetFont('Arial','B',13);
    $this->Ln(20);
}

// Pied de page
function Footer()
{
    $this->SetY(-15);

    $this->SetFont('Arial','I',7);

    for ($i = 0; $i < count($_SESSION['article']); $i++)
    {
        if($_SESSION['article'][$i][0]->nom == "REP") 
        {
            $this->Cell(50,3,'R.E.P','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'3, Impasse du Champ Chardon','',0,'',0);
            $this->Cell(60,3,'Tél. : +33 (0)3 80 74 40 10','',0,'',0);
            $this->Cell(60,3,'SAS au capital de 75 000 € ','',0,'',0);
            $this->Cell(60,3,'Page '.$this->PageNo().'/{nb}','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'21800 CHEVIGNY-SAINT-SAUVEUR','',0,'',0);
            $this->Cell(60,3,'https://rep-galile.fr/','',0,'',0);
            $this->Cell(60,3,'Code APE : 4321A','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'FRANCE','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
            $this->Cell(60,3,'RCS : 849 721 642 A DIJON','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
            $this->Cell(60,3,'N° TVA FR 88 849 721 642','',0,'',0);
            $this->SetDrawColor(44,255,229);
            $this->Line(10, 277, 210-10, 277);
        }
        if($_SESSION['article'][$i][0]->nom == "Peinta") 
        {
            $this->Cell(50,3,'Peinta','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'ZI de Vichy-Rhue','',0,'',0);
            $this->Cell(60,3,'','',0,'',0);
            $this->Cell(60,3,'SAS au capital de 150 000 € ','',0,'',0);
            $this->Cell(60,3,'Page '.$this->PageNo().'/{nb}','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'Creuzier-le-Vieux – CS 80123','',0,'',0);
            $this->Cell(60,3,'Tél. : +33 (0)4 70 98 15 58','',0,'',0);
            $this->Cell(60,3,'RCS Cusset - Code APE 3320C','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'FRANCE – 03 305 CUSSET Cedex','',0,'',0);
            $this->Cell(60,3,'Fax : +33 (0)4 70 97 24 10','',0,'',0);
            $this->Cell(60,3,'Siret 803 172 733 000 13','',0,'',0);
        
            $this->Ln();
        
            $this->Cell(50,3,'','',0,'',0);
            $this->Cell(60,3,'www.peinta.com','',0,'',0);
            $this->Cell(60,3,'N° TVA FR90803172733','',0,'',0);
            $this->SetDrawColor(44,255,229);
            $this->Line(10, 277, 210-10, 277);
        }
    }
}
}

$pdf = new PDF();
$pdf->AliasNbPages();

// Page 1
$pdf->AddPage();
$pdf->SetFont('Arial','',11);
$pdf->Cell(40,5,'Direction Commerciale','',0,'',0);
$pdf->Cell(80,5,'','',0,'',0);
$pdf->Cell(80,5,$_SESSION['clients'][0]->nom_societe,'',0,'',0);
$pdf->Ln();

$pdf->Cell(40,5,'','',0,'',0);
$pdf->Cell(80,5,'','',0,'',0);
$pdf->Cell(80,5,$_SESSION['client'][0]->genre . ' ' . $_SESSION['client'][0]->nom . ' ' . $_SESSION['client'][0]->prenom,'',0,'',0);

if(!empty($_SESSION['clients'][0]->adresse)){
    $pdf->Ln();

    $pdf->Cell(40,5,'','',0,'',0);
    $pdf->Cell(80,5,'','',0,'',0);
    $pdf->Cell(80,5,$_SESSION['clients'][0]->adresse,'',0,'',0);
}

if(!empty($_SESSION['clients'][0]->cp)){
    $pdf->Ln();

    $pdf->Cell(40,5,'','',0,'',0);
    $pdf->Cell(80,5,'','',0,'',0);
    $pdf->Cell(80,5,$_SESSION['clients'][0]->cp. ' ' .$_SESSION['clients'][0]->ville,'',0,'',0);
}

if(!empty($_SESSION['client'][0]->tel_portable)){
    $pdf->Ln();

    $pdf->Cell(40,5,'','',0,'',0);
    $pdf->Cell(80,5,'','',0,'',0);
    $pdf->Cell(80,5,'Portable : ' . $_SESSION['client'][0]->tel_portable,'',0,'',0);
}

if(!empty($_SESSION['client'][0]->tel_fixe)){
    $pdf->Ln();

    $pdf->Cell(40,5,'','',0,'',0);
    $pdf->Cell(80,5,'','',0,'',0);
    $pdf->Cell(80,5,'Fixe : ' . $_SESSION['client'][0]->tel_fixe,'',0,'',0);
}

if(!empty($_SESSION['client'][0]->email)){
    $pdf->Ln();

    $pdf->Cell(40,5,'','',0,'',0);
    $pdf->Cell(80,5,'','',0,'',0);
    $pdf->Cell(80,5,'Email : '.$_SESSION['client'][0]->email,'',0,'',0);
}

$pdf->Ln();
for ($i = 0; $i < count($_SESSION['article']); $i++)
{
    if($_SESSION['article'][$i][0]->nom == "REP") 
    {
        $pdf->Cell(0,15,'Votre Correspondant Commercial');
        $pdf->Ln();
        $pdf->Cell(0,5,'M.   : Dimitri Baly');
        $pdf->Ln();
        $pdf->Cell(0,5,'Tel.   : +33 (0)6 76 84 32 37');
        $pdf->Ln();
        $pdf->Cell(0,5,'Mail : dimitry.baly@rep-galile.fr');
        $pdf->Ln();
        $pdf->Cell(0,15,'Votre Correspondant Technique');
        $pdf->Ln();
        $pdf->Cell(0,5,'M.   : Fabrice BRACONNIER');
        $pdf->Ln();
        $pdf->Cell(0,5,'Tel.   : +33 (0)7 86 76 47 64');
        $pdf->Ln();
        $pdf->Cell(0,5,'Mail : fabrice.braconnier@rep-galile.fr');
        $pdf->Ln();
        $pdf->Cell(0,15,'Objet : Offre technique et commerciale');
        $pdf->Ln();
        $pdf->Cell(0,5,'Date : ' . date("d/m/y"));
        $pdf->Ln();
        $pdf->Cell(0,5,'Vos références : ');
        $pdf->Ln();
        $pdf->Cell(0,5,'Nos références à rappeler : ' . $_SESSION['numDevis']);
        $pdf->Ln();
        $pdf->Cell(0,10,'A l\'attention de ' . $_SESSION['client'][0]->genre . ' ' . $_SESSION['client'][0]->nom . ' ' . $_SESSION['client'][0]->prenom . ',');
        $pdf->Ln();
        $pdf->Cell(0,15,'Nous vous remercions d’avoir bien voulu nous adresser le dossier concernant la consultation suivante :');
        $pdf->Ln();
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,$_SESSION['nomProjet'],0,0,'C');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);
        $pdf->MultiCell(0,5,'Nous vous prions de trouver ci-joint le descriptif de la solution proposée et les conditions commerciales qui constituent notre offre.');
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Espérant avoir répondu à votre attente, nous demeurons à votre entière disposition pour tous renseignements complémentaires et vous prions d’agréer l’expression de nos sincères salutations.');
        $pdf->Ln(20);

        $pdf->Cell(50,5,'Dimitri Baly','',0,'',0);
        $pdf->Cell(60,5,'Fabrice BRACONNIER','',0,'',0);
        $pdf->Cell(60,5,'Arnaud TARDIEU','',0,'',0);
        $pdf->Ln();

        $pdf->Cell(50,5,'Directeur Commercial','',0,'',0);
        $pdf->Cell(60,5,'Responsable chiffrages','',0,'',0);
        $pdf->Cell(60,5,'Directeur Général','',0,'',0);
        $pdf->Ln();
    }
    if($_SESSION['article'][$i][0]->nom == "Peinta") 
    {
        $pdf->Cell(0,15,'Votre Correspondant Commercial');
        $pdf->Ln();
        $pdf->Cell(0,5,'M.   : Fabien GODARD');
        $pdf->Ln();
        $pdf->Cell(0,5,'Tel.   : +33 (0)6 03 89 49 58');
        $pdf->Ln();
        $pdf->Cell(0,5,'Mail : fabien.godard@peinta.com');
        $pdf->Ln();
        $pdf->Cell(0,15,'Votre Correspondant Technique');
        $pdf->Ln();
        $pdf->Cell(0,5,'M.   : Fabrice BRACONNIER');
        $pdf->Ln();
        $pdf->Cell(0,5,'Tel.   : +33 (0)7 86 76 47 64');
        $pdf->Ln();
        $pdf->Cell(0,5,'Mail : fabrice.braconnier@rep-galile.fr');
        $pdf->Ln();
        $pdf->Cell(0,15,'Objet : Offre technique et commerciale');
        $pdf->Ln();
        $pdf->Cell(0,5,'Date : ' . date("d/m/y"));
        $pdf->Ln();
        $pdf->Cell(0,5,'Vos références : ');
        $pdf->Ln();
        $pdf->Cell(0,5,'Nos références à rappeler : ' . $_SESSION['numDevis']);
        $pdf->Ln(10);
        $pdf->Cell(0,10,'A l\'attention de ' . $_SESSION['client'][0]->genre . ' ' . $_SESSION['client'][0]->nom . ' ' . $_SESSION['client'][0]->prenom . ',');
        $pdf->Ln(10);
        $pdf->Cell(0,15,'Nous vous remercions d’avoir bien voulu nous adresser le dossier concernant la consultation suivante :');
        $pdf->Ln();
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,$_SESSION['nomProjet'],0,0,'C');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Nous vous prions de trouver ci-joint le descriptif de la solution proposée et les conditions commerciales qui constituent notre offre.');
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Espérant avoir répondu à votre attente, nous demeurons à votre entière disposition pour tous renseignements complémentaires et vous prions d’agréer l’expression de nos sincères salutations.');
        $pdf->Ln(20);

        $pdf->Cell(50,5,'Fabien GODARD','',0,'',0);
        $pdf->Cell(60,5,'Fabrice BRACONNIER','',0,'',0);
        $pdf->Cell(60,5,'Olivier TREMEAU','',0,'',0);
        $pdf->Ln();

        $pdf->Cell(50,5,'Ingénieur Commercial','',0,'',0);
        $pdf->Cell(60,5,'Responsable chiffrages','',0,'',0);
        $pdf->Cell(60,5,'Directeur Général Adjoint','',0,'',0);
        $pdf->Ln();
    }
}

// Page 2
$pdf->AddPage();

$pdf->SetFont('Arial','B',18);
$pdf->Cell(0,5,'Spécification Commerciale',0,0,'C');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->Cell(0,5,$_SESSION['nomProjet'],0,0,'C');
$pdf->SetFont('Arial','B',16);
$pdf->Ln();
$pdf->Cell(0,20,'Table des matières');
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->Cell(185,5,'1 - OBJET DE LA PROPOSITION','',0,'',0);
$pdf->Cell(0,5,'3','',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'2 - ELEMENT DE REFERENCE','',0,'',0);
$pdf->Cell(0,5,'3','',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'3 – DELAIS DE REALISATION','',0,'',0);
$pdf->Cell(0,5,'3','',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'4 - PRIX','',0,'',0);
$pdf->Cell(0,5,'4','',0,'',0);
$pdf->Ln();
$nbPoste = 0;
foreach ($arrayArticle as $item) {
    if($item[5][0]->nom == 'Type de poste'  && $item[0]->nom != "Transport et déchargement") 
        $nbPoste++;
}
$pdf->Cell(185,5,'5 - DELAI DE VALIDITE','',0,'',0);
$pdf->Cell(0,5,4 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'6 - TERMES ET CONDITIONS DE PAIEMENT','',0,'',0);
$pdf->Cell(0,5,5 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'7 - MODALITE D’EXECUTION','',0,'',0);
$pdf->Cell(0,5,5 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'8 - APPROBATION DES PLANS ET DOCUMENTS','',0,'',0);
$pdf->Cell(0,5,6 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'9 - MODIFICATION','',0,'',0);
$pdf->Cell(0,5,6 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'10 - INSPECTION ET RECETTE EN USINE (LE CAS ECHEANT)','',0,'',0);
$pdf->Cell(0,5,6 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'11 - INCOTERM - TRANSPORT – LIVRAISON - DECHARGEMENT','',0,'',0);
$pdf->Cell(0,5,7 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'12 - TRANSFERT DE PROPRIETE ET DES RISQUES','',0,'',0);
$pdf->Cell(0,5,9 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'13 - RESPONSABILITES','',0,'',0);
$pdf->Cell(0,5,9 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'14 - CONDITIONS DE GARANTIE','',0,'',0);
$pdf->Cell(0,5,9 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'15 - PROPRIETE INDUSTRIELLE ET INTELLECTUELLE','',0,'',0);
$pdf->Cell(0,5,10 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'16 - CESSION','',0,'',0);
$pdf->Cell(0,5,10 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'17 - FORCE MAJEURE','',0,'',0);
$pdf->Cell(0,5,11 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'18 - SUSPENSION – RESILIATION','',0,'',0);
$pdf->Cell(0,5,11 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'19 - CONCLUSION ET ENTREE EN VIGUEUR DU CONTRAT','',0,'',0);
$pdf->Cell(0,5,11 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'20 - DROIT APPLICABLE ET REGLEMENT DES LITIGES','',0,'',0);
$pdf->Cell(0,5,11 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'21 - MAITRISE DE L’ENVIRONNEMENT','',0,'',0);
$pdf->Cell(0,5,12 + $nbPoste,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,5,'22 – DEVIATIONS CAHIER DES CHARGES','',0,'',0);
$pdf->Cell(0,5,12 + $nbPoste,'',0,'',0);

$pageFirstTDM = 12 + $nbPoste;

// Page 3
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'1 - OBJET DE LA PROPOSITION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(7);
$pdf->MultiCell(0,5,'Nous remercions pour votre consultation et nous vous transmettons, ci-après, notre meilleure proposition, qui se limite aux fournitures et prestations décrites dans la spécification technique jointe, pour lesquelles est défini le prix tel qu’indiqué dans le chapitre prix.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Tout équipement ou prestation qui n’est pas explicitement défini dans notre proposition, ne sera pas fourni par '. $nomE);
$pdf->Ln();
$pdf->MultiCell(0,5,'Pour tout matériel ou prestation supplémentaire souhaité par le Client, '.$nomE.' proposera l’établissement d’un avenant à la présente proposition commerciale.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'2 - ELEMENT DE REFERENCE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(7);
$pdf->MultiCell(0,5,'Cette offre a été établie à partir des éléments qui ont été portés à notre connaissance par vos services, à la date de sa rédaction, c’est-à-dire le ' . date("d/m/y") . '.');

$pdf->SetFont('Arial','U',11);
$pdf->Ln();
$pdf->Cell(0,5,'Documents références :');
$pdf->SetFont('Arial','',11);
$pdf->Ln(7);

$pdf->SetTextColor(255,255,255);
$pdf->setDrawColor(0,0,0); 
$pdf->Cell(40,5,'Date',1,0,'L',1);
$pdf->Cell(100,5,'Nom du document',1,0,'L',1);
$pdf->Cell(50,5,'Indice',1,0,'L',1);
$pdf->SetTextColor(0,0,0);

$pdf->Ln();

$pdf->Cell(40,5,'',1,0,'L',0);
$pdf->Cell(100,5,'',1,0,'L',0);
$pdf->Cell(50,5,'',1,0,'L',0);

$pdf->Ln();

$pdf->Cell(40,5,'',1,0,'L',0);
$pdf->Cell(100,5,'',1,0,'L',0);
$pdf->Cell(50,5,'',1,0,'L',0);

$pdf->Ln(10);

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'3 – DELAIS DE REALISATION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(5);

$pdf->Cell(0,5,'Délai de livraison demandé par le client :');
$pdf->Ln();
$pdf->MultiCell(0,5,'Délai de mise à disposition rendu Client :     26 semaines (à confirmer)  à réception de commande et hors période estivale');
$pdf->Ln();
$pdf->Cell(0,5,'Période de la prestation : En semaine du Lundi au Vendredi de 8H00 à 17H00 hors jours fériés.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Toute prestation planifiée et annulée dans un délai inférieur à 24 heures fera l’objet d’une facturation d’un montant de 460 € HT.');
$pdf->Ln(5);
$pdf->SetFont('Arial','U',11);
$pdf->Cell(0,5,'Planning prévisionnel (non contractuel) :');
$pdf->Ln();
$pdf->SetFont('Arial','',11);
$pdf->Image('../img/1.png',25,190,160,80);

// Page 4
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'4 - PRIX ');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(7);

$pdf->MultiCell(0,5,'Le prix des prestations et des équipements tel que définis dans la spécification Technique, sont indiqués dans le bordereau de prix ci-dessous. Notre prix établi est ferme et non révisable, il est calculé Hors Taxes. La TVA s\'appliquera au taux en vigueur au moment de la facturation.');
$pdf->Ln();

$pdf->SetTextColor(255,255,255);
$pdf->setDrawColor(0,0,0); 
$pdf->Cell(140,5,'Bordereau de prix (Prix Net HT)',1,0,'L',1);
$pdf->Cell(50,5,'Quantité',1,0,'L',1);
$pdf->SetTextColor(0,0,0);

$pdf->Ln();

foreach ($arrayArticle as $item) {
    if($item[5][0]->nom == 'Type de poste'  && $item[0]->nom != "Transport et déchargement") {
        if($item[0]->nom == "VACCARES (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(140,5,'VACCARES',1,0,'L',0);
            $pdf->SetFont('Arial','B',12);
            $pdf->Cell(50,5,'1',1,0,'C',0);
            $pdf->Ln();
        }
        if($item[0]->nom == "SML (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(140,5,'SML',1,0,'L',0);
            $pdf->SetFont('Arial','B',12);
            $pdf->Cell(50,5,'1',1,0,'C',0);
            $pdf->Ln();
        }
        if($item[0]->nom == "SANCY (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(140,5,'SANCY',1,0,'L',0);
            $pdf->SetFont('Arial','B',12);
            $pdf->Cell(50,5,'1',1,0,'C',0);
            $pdf->Ln();
        }
        if($item[0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(140,5,'ARMORACC',1,0,'L',0);
            $pdf->SetFont('Arial','B',12);
            $pdf->Cell(50,5,'1',1,0,'C',0);
            $pdf->Ln();
        }
        if($item[0]->nom != "VACCARES (Hors T&D avec Intégration matériels)" && $item[0]->nom != "SML (Hors T&D avec Intégration matériels)" && $item[0]->nom != "SANCY (Hors T&D avec Intégration matériels)" && $item[0]->nom != "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(140,5,$item[0]->nom,'LR',0,'L',0);
            $pdf->SetFont('Arial','B',12);
            $pdf->Cell(50,5,'1','LR',0,'C',0);
            $pdf->Ln();
        }

        for ($i=0; $i < 5; $i++) { 
            $pdf->Cell(140,5,'','LR',0,'C',0);
            $pdf->Cell(50,5,'','LR',0,'C',0);
            $pdf->Ln();
        }

        $pdf->SetFont('Arial','',11);
        $pdf->Cell(140,5,'Transport et déchargement département','LR',0,'LRB',0);
        $pdf->Cell(50,5,'','LR',0,'C',0);
        $pdf->Ln();
        $pdf->Cell(140,5,'xx avec portée maximum 7m','LRB',0,'L',0);
        $pdf->Cell(50,5,'','LRB',0,'C',0);
        $pdf->Ln();

        $pdf->SetFont('Arial','UB',11);
        $pdf->Cell(140,5,'Prix Total HT :',1,0,'R',0);
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(50,5,'xxx €',1,0,'C',0);
        
        $pdf->Ln();

    }
}

$pdf->SetFont('Arial','U',11);
$pdf->Cell(140,5,'Options :',1,0,'L',0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(50,5,'',1,0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LR',0,'C',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'1 Journée de réception usine','LR',0,'L',0);
$pdf->Cell(50,5,'1 200,00 €','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LR',0,'C',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'1 Journée 1 personne d’assistance à la mise en ','LR',0,'L',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();
$pdf->Cell(140,5,'service C13100 en présence d’Enedis','LR',0,'L',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();
$pdf->Cell(140,5,'(paramétrage des seuils du relais de protection numérique) ','LR',0,'L',0);
$pdf->Cell(50,5,'1 800,00 €','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LR',0,'C',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'1 Journée 1 personne d’assistance','LR',0,'LR',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();
$pdf->Cell(140,5,'à la mise en service DEIE en présence d’Enedis','LR',0,'L',0);
$pdf->Cell(50,5,'1 800,00 €','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LR',0,'C',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'Démarche administrative pour l’obtention du SC114.','LR',0,'LR',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();
$pdf->Cell(140,5,'Le DRE 151 est à la charge du client','LR',0,'L',0);
$pdf->Cell(50,5,'400,00 €','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LR',0,'C',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'Pose et raccordement des TC de comptage ','LR',0,'LR',0);
$pdf->Cell(50,5,'','LR',0,'C',0);
$pdf->Ln();
$pdf->Cell(140,5,'de fournitures client','LR',0,'L',0);
$pdf->Cell(50,5,'500,00 €','LR',0,'C',0);
$pdf->Ln();

$pdf->Cell(140,5,'','LRB',0,'C',0);
$pdf->Cell(50,5,'','LRB',0,'C',0);
$pdf->Ln();

$pdf->SetFont('Arial','',11);

$pdf->Ln(10);

$pdf->SetFont('Arial','U',11);
$pdf->Cell(0,5,'Modalité d’envoi de commande :');
$pdf->Ln();
$pdf->SetFont('Arial','',11);
for ($i = 0; $i < count($_SESSION['article']); $i++)
{
    if($_SESSION['article'][$i][0]->nom == "REP") 
    {
        $pdf->MultiCell(0,5,'En cas d’acceptation, la commande est à adresser à l’entité juridique '.$nomE.', par mail à l’attention de Monsieur Dimitri BALY (dimitry.baly@rep-galile.fr), avec la référence ' . $_SESSION['numDevis'] . '.');
        $pdf->Ln(10);
    }
    if($_SESSION['article'][$i][0]->nom == "Peinta") 
    {
        $pdf->MultiCell(0,5,'En cas d’acceptation, la commande est à adresser à l’entité juridique '.$nomE.', par mail à l’attention de Monsieur Fabien GODARD (fabien.godard@peinta.com), avec la référence ' . $_SESSION['numDevis'] . '.');
        $pdf->Ln(10);
    }
}

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'5 - DELAI DE VALIDITE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(7);

$pdf->MultiCell(0,5,'La présente proposition est valable pendant 1 mois à compter du ' . date("d/m/y") . '. Les prix et les délais ne sont valables que pour un contrat conclu pendant cette période. Au-delà de la date de validité, une révision du prix, tenant compte de l’évolution des indices du cuivre et de la tôle magnétique (entre autre), sera envoyé au client.');
$pdf->Ln();

$pdf->SetFont('Arial','U',11);
$pdf->Cell(0,5,'Commentaires complémentaires éventuels :');
$pdf->Ln();
$pdf->SetFont('Arial','',11);
$pdf->Cell(0,5,'- Notre offre est strictement limitée à la spécification technique, ci-dessous, à valider par vos soins');
$pdf->SetFont('Arial','',11);

// Page 5
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);  
$pdf->Cell(0,5,'6 - TERMES ET CONDITIONS DE PAIEMENT');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(5);

$pdf->Cell(0,5,'Les conditions de paiement retenues pour l’établissement des prix sont les suivantes :');
$pdf->Ln(5);

$pdf->SetTextColor(255,255,255);
$pdf->setDrawColor(0,0,0); 
$pdf->Cell(40,5,'Pourcentage ou Valeur',1,0,'C',1);
$pdf->Cell(38,5,'Fait générateur',1,0,'C',1);
$pdf->Cell(36,5,'Moyen de paiement',1,0,'C',1);
$pdf->Cell(40,5,'Délai de paiement',1,0,'C',1);
$pdf->Cell(36,5,'Taxe',1,0,'C',1);
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);

$pdf->Ln();

$pdf->Cell(40,5,'30 %','LR',0,'C',0);
$pdf->Cell(38,5,'A LA COMMANDE','LR',0,'C',0);
$pdf->Cell(36,5,'VIREMENT','LR',0,'C',0);
$pdf->Cell(40,5,'10 JOURS DATE DE','LR',0,'C',0);
$pdf->Cell(36,5,'Demande d\'acompte','LR',0,'C',0);

$pdf->Ln();

$pdf->Cell(40,5,'','LR',0,'C',0);
$pdf->Cell(38,5,'','LR',0,'C',0);
$pdf->Cell(36,5,'BANCAIRE','LR',0,'C',0);
$pdf->Cell(40,5,'DEMANDE D\'ACOMPTE','LR',0,'C',0);
$pdf->Cell(36,5,'(HT)','LR',0,'C',0);

$pdf->Ln();

$pdf->Cell(40,5,'70 %','LRT',0,'C',0);
$pdf->Cell(38,5,'A LA LIVRAISON','LRT',0,'C',0);
$pdf->Cell(36,5,'VIREMENT','LRT',0,'C',0);
$pdf->Cell(40,5,'45 JOURS','LRT',0,'C',0);
$pdf->Cell(36,5,'Facture','LRT',0,'C',0);

$pdf->Ln();

$pdf->Cell(40,5,'','LRB',0,'C',0);
$pdf->Cell(38,5,'SUR SITE','LRB',0,'C',0);
$pdf->Cell(36,5,'BANCAIRE','LRB',0,'C',0);
$pdf->Cell(40,5,'FIN DE MOIS','LRB',0,'C',0);
$pdf->Cell(36,5,'(TTC)','LRB',0,'C',0);

$pdf->Ln(10);

$pdf->SetFont('Arial','',10);
$pdf->MultiCell(0,5,'En cas de retard de paiement, '.$nomE.' pourra exiger du Client le versement d\'une pénalité de retard calculée par application aux montants exigibles, d\'un intérêt égal à 1 % par mois de retard et en tout état de cause égal à trois fois le taux de l\'intérêt légal en vigueur.
Le Client sera tenu, pour chaque facture, au versement d’une indemnité forfaitaire pour frais de recouvrement
d’un montant de quarante (40) euros, conformément aux dispositions légales impératives applicables.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Toutefois, si les frais de recouvrement réellement exposés par '.$nomE.' sont supérieurs au montant visé au paragraphe précédent, ce dernier se réserve le droit de réclamer une indemnité complémentaire au Client.
Le défaut de paiement d\'un terme à bonne date entraînera de plein droit l\'exigibilité de toutes les sommes dues
par le Client défaillant, même si elles ont donné lieu, en tout ou partie, à la création de traites.');
$pdf->Ln();
$pdf->MultiCell(0,5,'En outre, '.$nomE.' se réserve le droit de suspendre l\'exécution de ses propres obligations jusqu\'au complet paiement des sommes exigibles.');
$pdf->Ln();
$pdf->MultiCell(0,5,'En cas de retard de paiement excédant un délai de 30 jours, la vente pourra être résolue de plein droit par '.$nomE.', aux torts du client, huit jours après une mise en demeure de payer restée en tout ou partie sans effets.
Les dispositions ci-dessus s\'appliqueront sans préjudice de tous autres dommages et intérêts auxquels pourrait prétendre le '.$nomE.'');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'7 - MODALITE D’EXECUTION');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'7.1 LIEU DE LIVRAISON');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'Le Poste de Livraison sera livré sur le site de xxx en France Métropolitaine, selon l’incoterm spécifié à l’article 11.1.');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'7.2 EXTENSION DES DELAIS');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'Les délais indiqués seront automatiquement étendus en cas de retard ayant pour cause l\'un des événements suivants :
- non-respect par le Client des obligations mises à sa charge par le contrat ou tout évènement imputable au Client,
- survenance d\'un événement constitutif de Force Majeure (exemple : pandémie COVID-19) telle que définie au présent document, de même que tout évènement non imputable à '.$nomE.'
Les délais seront ainsi prorogés de la durée totale du retard ainsi causé.');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'7.3 STOCKAGE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'En cas de retard de livraison ou en cas de retard non annoncé au plus tard 12 semaines avant la date de livraison initiale dans la prise en charge par le Client des équipements mis à disposition, pour des raisons non imputables '.$nomE.', '.$nomE.' organisera le stockage, aux frais et risques du Client. Les délais de garantie des équipements stipulés à l’article « conditions de garantie » démarreront à la mise en stock.
Un certificat de stockage sera alors émis par '.$nomE.' ou par un tiers, en lieu et place du document de livraison, le paiement du terme à la livraison étant exigible à la date dudit certificat.');

// Page 6
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'8 - APPROBATION DES PLANS ET DOCUMENTS');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln(10);

$pdf->MultiCell(0,5,'Dans le cadre de la présente proposition, les plans suivants seront réalisés par '.$nomE.' :
Schémas unifilaires des équipements, Plan guide de génie civil des équipements, Schémas des auxiliaires des équipements.');
$pdf->Ln();

$pdf->MultiCell(0,5,'Lorsque tout ou partie des plans et /ou documents doivent être soumis au Client pour approbation, ce dernier disposera d’un délai de 10 jours ouvrés à partir de la date d’expédition de ces documents.');
$pdf->Ln();

$pdf->MultiCell(0,5,'A défaut de réponse, à l’expiration de ce délai, les plans et/ou documents seront considérés comme approuvés. Toute réserve émise à posteriori par le Client sera traitée comme une demande de modification et sera, sous réserve des dispositions régissant les demandes de modifications, et après accord écrit de '.$nomE.', exécutée aux frais du Client. '.$nomE.' indiquera préalablement au Client les conséquences en termes de prix et/ou de délais d’exécution de la dite modification.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'9 - MODIFICATION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln(10);

$pdf->MultiCell(0,5,'En cas de modification demandée par le Client de la spécification technique de '.$nomE.', ou en cas de changement, inexactitudes ou insuffisances dans la définition des données fournies par le Client qui se révéleraient pendant la phase de réalisation des études ou de l’analyse fonctionnelle le cas échéant, les délais d’exécution ainsi que les prix et éventuellement les termes de paiement pourront faire l’objet d’un ajustement.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'10 - INSPECTION ET RECETTE EN USINE (LE CAS ECHEANT)');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln(10);

$pdf->MultiCell(0,5,'L\'inspection aura pour objet de vérifier, à partir d\'essais effectués sur les équipements et dont la liste et les modalités d\'exécution figurent dans la Spécification Technique, la conformité de ces équipements aux caractéristiques et fonctionnalités décrites dans la Spécification Technique. Tout essai demandé par le Client et non prévu dans la Spécification Technique sera, sous réserve de l\'accord écrit de '.$nomE.', exécuté en régie aux conditions en vigueur chez '.$nomE.' et donnera lieu à une extension des délais d\'exécution s\'il y a lieu.');
$pdf->Ln();

$pdf->MultiCell(0,5,'L\'inspection aura lieu dans les usines de ses fournisseurs en présence du Client, ou de son représentant dûment habilité. Il est précisé que les frais de voyage et d\'hébergement du personnel délégué par le Client seront à la charge de celui-ci.');
$pdf->Ln();

$pdf->MultiCell(0,5,'En fin d\'inspection, les résultats des essais seront consignés dans un procès-verbal de recette établi par '.$nomE.' et signé conjointement par '.$nomE.' et le Client.');
$pdf->Ln();

$pdf->MultiCell(0,5,'Dans l\'hypothèse où le Client ne se présenterait pas à la date convenue d\'inspection ou ne désirerait pas participer aux opérations d\'inspection, '.$nomE.' procèdera seul aux essais et le procès-verbal établi par '.$nomE.' sera réputé contradictoire et sans réserves. La recette sera alors acquise et emportera, au même titre que la signature du procès-verbal par les deux parties, toutes les conséquences attachées à la recette en usine, et notamment le paiement du terme correspondant s\'il y a lieu.');
$pdf->Ln();

$pdf->MultiCell(0,5,'Le client devra signaler toutes  réserves sur le poste dans un délai de 15 jours après la livraison sur site de ce dernier. Passé ce délai toute nouvelle demande fera l’objet d’une étude et d’un éventuel avenant.');
$pdf->Ln();

// Page 7
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'11 - INCOTERM - TRANSPORT – LIVRAISON - DECHARGEMENT');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'11.1 INCOTERM RETENU');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->Cell(0,5,'L’Incoterm retenu est le suivant : DAP (rendu lieu de destination convenu) selon le lieu spécifié à l’article 7.1.');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'11.2 TRANSPORT- LIVRAISON');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'Sous réserve de dispositions contraires contenues dans la présente proposition, le transport des équipements sur le site se fera sous la responsabilité de '.$nomE.' conformément à l’incoterm retenu.
Le transport sera du type : Camion déchargé avec un camion-grue');
$pdf->Ln();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'11.3 DECHARGEMENT');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'Dans le cas où le déchargement est de la responsabilité de '.$nomE.' (poste préfabriqué) ; toute modification des conditions de chantier par rapport à celles constatées lors de la visite préalable et entraînant une modification des moyens de manutention définis, est la charge du Client.');
$pdf->Ln();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'11.4 CONDITIONS DE TRANSPORT ET DECHARGEMENT DES POSTES BETON');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'Nos prestations comprennent le transport, le déchargement et la mise en place du poste sur le site, sous réserve : 
-	de l\'accessibilité au chantier d\'un ensemble routier de 16 mètres de long par 2m60 de large,
-	d’un sol ferme et d\'une pente du chantier inférieure ou égale à 5%, 
-	d\'une distance entre l\'axe de la grue et le centre de la fouille, inférieure ou égale à 7 mètres,
-	d\'une distance entre l\'axe de la grue et le centre du poste positionné sur la remorque du convoi, inférieure ou égale à 7 mètres,
-	d\'un terrain dégagé de tout obstacle sur un rayon de 7 mètres par rapport à l\'axe de la grue,
-	de l\'absence d\'obstacles aérien (lignes téléphoniques, conducteurs HTA-BT…),
-	d’une durée maximale de 4 heures pour les opérations de manutention (trajet de la grue compris).');

$pdf->Ln();
$pdf->Cell(0,5,'Toute condition de déchargement sortant du standard défini, ci-dessus, donnera lieu à une plus-value.');
$pdf->Ln();
$pdf->Cell(0,5,'Pour le bon déroulement de l\'installation du poste, le client devra réaliser :');
$pdf->Ln(10);

$pdf->MultiCell(0,5,'-	le fond de fouille obtenu par décaissement du sol, le nivellement, le compactage et le remblaiement.
•	sa nature : lit de sable, de gravier ou de béton maigre selon la nature du terrain
•	sa qualité : maîtrisée pour permettre une contrainte admissible au sol supérieure à 0,2 Mpa (2Kg/cm²) et un tassement différentiel inférieur à 1 cm sur la longueur du fond de fouille
-	les démarches nécessaires pour la mise en place du poste et son raccordement, notamment celles visant à l\'obtention du permis de construire,
-	les prises de terre et leur raccordement au collecteur de masse (y compris la prise de terre et le raccordement du neutre du transformateur de puissance),
-	en cas de nécessité : le plan de prévention, les demandes pour les coupures de routes auprès des instances compétentes,…
'.$nomE.' ne peut être tenue pour responsable des intempéries rendant impossible l’accès au chantier et/ou le calage des moyens de manutention dans des conditions normales de sécurité. Il est de la responsabilité du client de s’assurer de la résistance du terrain aux intempéries.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Vous trouverez, ci-après, deux croquis représentant les des conditions d’accessibilité et de manutention pour la livraison d’un poste préfabriqué (Croquis n°1 et Croquis n°2)');

// Page 8
$pdf->AddPage();

$pdf->Cell(0,5,'Croquis n°1 :	Conditions d’accessibilité d’un ensemble routier (convoi exceptionnel)');
$pdf->Image('../img/croquis1.jpg',10,45,80);
$pdf->Ln(105);
$pdf->Cell(0,5,'Croquis n°2 :	Exemple d’une manutention d’un poste préfabriqué de 7 mètres avec un camion-grue');
$pdf->Image('../img/croquis2.png',10,145,100);
$pdf->Ln();

// Page 9
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'12 - TRANSFERT DE PROPRIETE ET DES RISQUES');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(10);

$pdf->MultiCell(0,5,'Le transfert de propriété des équipements sera effectif au paiement intégral du prix en principal et accessoires.
Le transfert des risques aura lieu conformément aux dispositions de l’incoterm retenu.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'13 - RESPONSABILITES');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(10);

$pdf->MultiCell(0,5,'En aucun cas '.$nomE.' ne sera tenu pour responsable, des dommages indirects et/ou immatériels, consécutifs ou non, vis-à-vis du Client tels que (non exhaustif) : les pertes d\'exploitation, les pertes de gains, de production ou de contrats que '.$nomE.' pourrait causer du fait de l\'exécution du présent contrat.');
$pdf->Ln();
$pdf->MultiCell(0,5,'En toute hypothèse, la réparation de tout préjudice subi par le Client du fait du non-respect par '.$nomE.' de ses obligations contractuelles ne pourra excéder, quels que soient les causes, l’objet ou le fondement de la réclamation, le montant total hors taxe du contrat.');
$pdf->Ln();
$pdf->Cell(0,5,'Cette limitation de responsabilité englobe les pénalités de retard et autres sanctions prévues par ailleurs.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Lorsque l’objet de la proposition inclut des prestations sur site, il est précisé que la présence sur le site des spécialistes de '.$nomE.' ne dégage en aucun cas le Client ou ses sous-traitants de leurs obligations et responsabilités en regard du montage, des tests, et des opérations de mise en service, notamment de consignation, de manœuvre et de mise en sécurité du site.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'14 - CONDITIONS DE GARANTIE');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'14.1 DUREE ET MODALITE DE LA GARANTIE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,''.$nomE.' garantit les équipements pendant une période de 12 mois après la mise en service ou au plus tard 18 mois après la livraison sur site des équipements, contre tout défaut de fonctionnement provenant d\'un vice de conception, de matière ou de fabrication. La garantie consiste, au choix de '.$nomE.' en la réparation, le remplacement, la rectification et/ou la remise en état dans les meilleurs délais et aux frais de '.$nomE.' des pièces et matériels reconnus défectueux, à l\'exception des pièces consommables.');
$pdf->Ln();
$pdf->MultiCell(0,5,'La réparation, la modification ou le remplacement de pièces pendant la période de garantie ne peuvent avoir pour effet de prolonger le délai de garantie des équipements.');
$pdf->Ln();
$pdf->MultiCell(0,5,'En cas de vice de fonctionnement nécessitant l\'intervention de '.$nomE.' sur le site, le Client garantit à '.$nomE.' le libre accès aux équipements endommagés et les moyens standard de bureau nécessaires au bon déroulement de l\'intervention.');
$pdf->Ln();
$pdf->MultiCell(0,5,'En aucun cas la garantie ne couvre les frais de recherche sur site de l’élément défectueux, démontage et remontage de l’équipement dans son environnement.
En cas de réparation en usine des équipements défectueux, les frais d\'emballage et de transport de ces équipements seront pris en charge par le Client.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Lorsque l’intervention ne relève pas de la présente garantie, les pièces et la main d\'œuvre sont facturées au tarif en vigueur à la date d\'intervention, avec frais de déplacement en sus.');
$pdf->Ln();

// Page 9
$pdf->AddPage();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'14.2 LIMITE DE GARANTIE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'La garantie ne s\'applique pas dans les cas suivants : 
-	vices provenant de matières fournies par le Client ou résultant d\'une conception imposée par celui-ci,
-	remplacement ou réparation résultant de l\'usure normale des équipements, de détériorations ou d\'accidents provenant d\'une négligence du Client, d\'un défaut dans le montage lorsque celui-ci n\'est pas à la charge de '.$nomE.', la surveillance ou l\'entretien des équipements, d\'une utilisation défectueuse de ces équipements,
-	toute modification, adjonction ou réparation effectuée par le Client ou un tiers sur l’équipement sans l\'accord préalable et écrit de '.$nomE.',
-	entretien non conforme aux prescriptions de '.$nomE.' ou, à défaut de telles prescriptions, aux règles de l’art,
-	conditions de stockage inadaptées,
-	ou tout autre incident dont l\'origine n\'est pas directement imputable à '.$nomE.',');
$pdf->Ln();
$pdf->MultiCell(0,5,'En outre, il est convenu que la responsabilité de '.$nomE.' résultant de défauts couverts par la garantie exclut toute indemnisation de dommages immatériels, notamment les pertes de production ou d’exploitation consécutives au défaut.');
$pdf->Ln();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'14.3 OBLIGATIONS DU CLIENT');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'Pour pouvoir invoquer le bénéfice de la présente garantie, le Client doit aviser '.$nomE.' des vices qu\'il impute aux équipements dès la manifestation des défauts de fonctionnement, et fournir toutes justifications quant à la réalité de ceux-ci. Il doit donner à '.$nomE.' toute facilité pour procéder à la constatation de ces défauts et pour y remédier et garantit à '.$nomE.' le libre accès aux équipements endommagés et les moyens standard de bureau nécessaires au bon déroulement de l\'intervention. Il doit en outre s\'abstenir, sauf accord exprès de '.$nomE.', d\'effectuer ou de faire effectuer la réparation par un tiers.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'15 - PROPRIETE INDUSTRIELLE ET INTELLECTUELLE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'Les plans et documents élaborés par '.$nomE.' sont la propriété exclusive de '.$nomE.' Ils ne peuvent être utilisés que pour l\'exploitation, l\'entretien et la réparation des équipements livrés par '.$nomE.' dans le cadre du contrat.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'16 - CESSION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'Les parties s\'engagent à ne pas céder ou transférer à un tiers tout ou partie du contrat sans l\'accord exprès et préalable de l\'autre partie.
Nonobstant ce qui précède, '.$nomE.' pourra librement céder, apporter ou transférer de quelque manière que ce soit le présent contrat ainsi que les droits et obligations en découlant à toute entité du groupe Galilé avec laquelle elle fusionnerait ou à laquelle elle viendrait à transférer tout ou la quasi-totalité de ses actifs dans le cadre de restructurations internes. '.$nomE.' pourra librement sous-traiter tout ou partie de ses obligations au titre du contrat.');
$pdf->Ln();

// Page 10
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'17 - FORCE MAJEURE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',9);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'Est constitutif de Force Majeure tout évènement indépendant de la volonté des parties tels que par exemple catastrophes naturelles, interruption ou retard dans les transports ou approvisionnement en matières ou énergie, grèves, boycotts, pandémie (exemple : COVID-19), etc. En cas de survenance d\'un évènement constitutif de Force Majeure, les obligations ainsi affectées verront leur délai de réalisation prorogé automatiquement d\'une durée égale au retard entraîné par la survenance de la Force Majeure, et le débiteur de ces obligations sera exonéré de toute responsabilité pour les conséquences en découlant.
La partie empêchée devra, dans les 20 jours de la survenance de cet évènement, notifier par écrit son empêchement à l\'autre partie et sera tenue de prendre toute mesure circonstanciée pour assurer dans les meilleurs délais la reprise normale de l\'exécution des obligations affectées par la Force Majeure. Si la notification était adressée au-delà du délai fixé ci-dessus, la Force Majeure ne produirait ses effets qu\'à compter de la date effective de notification.
Si l\'évènement constitutif de Force Majeure se prolongeait au-delà de 1 mois, le Contrat serait suspendu. Les parties se rencontreraient alors dans les plus brefs délais afin de décider de la suite à donner à l\'exécution du contrat, et s\'il y a lieu des modalités pratiques découlant de la reprise de l\'exécution du contrat, dont notamment les incidences sur les prix et les délais d\'exécution. A défaut d’accord sur les conditions de la reprise de l’exécution du contrat ou si cette reprise est définitivement compromise, la plus diligente des parties pourra résilier le contrat de plein droit sans indemnité à verser de part et d’autre.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'18 - SUSPENSION – RESILIATION');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'18.1 SUSPENSION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'En cas de suspension du contrat non exclusivement imputable à '.$nomE.', tous les frais et dépenses que '.$nomE.' aura supportés de ce fait, lui seront intégralement remboursés par le Client sur présentation des factures correspondantes. Les frais retenus comprendront notamment sans que cette liste soit limitative, les frais de manutention, de stockage, d’assurance, de main d’œuvre, les frais financiers, les frais bancaires pour l’extension de validité des garanties bancaires supportés par '.$nomE.' et ses sous-traitants ainsi que d’une manière générale tous les frais résultants d’une extension de délai. Si l’exécution du contrat est pour une raison quelconque suspendue pendant plus de 60 (soixante) jours, '.$nomE.' sera alors en droit de résilier le contrat et d’être indemnisé conformément aux dispositions ci-dessous.');
$pdf->Ln();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'18.2 RESILIATION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'Si le contrat se trouvait résilié pour des raisons non exclusivement imputables à '.$nomE.', le Client serait tenu de payer à '.$nomE.' le prix de toutes les prestations réalisées et équipements livrés et tous les frais engagés jusqu’à la date de résiliation pour les matériels ou prestations non encore livrés ou exécutées conformément au contrat. A défaut d’accord amiable sur le montant dû par le Client à '.$nomE.', ledit montant sera définitivement déterminé par un expert judiciaire désigné à l’initiative de la partie la plus diligente.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'19 - CONCLUSION ET ENTREE EN VIGUEUR DU CONTRAT');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'La notification par le Client de son acceptation de la présente proposition dans le délai de validité de celle-ci vaudra contrat.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'20 - DROIT APPLICABLE ET REGLEMENT DES LITIGES');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',10);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'Tout litige relatif à la présente proposition ou contrat, qui n’aurait pas été réglé à l’amiable par les Parties, sera de la compétence exclusive du tribunal de commerce de Dijon.
La présente proposition ainsi que le contrat qui en découlerait sont soumis au droit Français.');
$pdf->Ln();

// Page 11
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'21 - MAITRISE DE L’ENVIRONNEMENT');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln(10);
$pdf->MultiCell(0,5,'Il appartient au détenteur du déchet d’en assurer ou d’en faire assurer l’élimination. Pour les équipements électriques et électroniques (“EEE”) professionnels concernés par la Directive 2002/95/CE du 27 janvier 2003 et de la Directive 2006/66/CE du 6 septembre 2006 ainsi que des textes d’application qui en découlent, le financement de l’enlèvement et du traitement des déchets issus de ces EEE mis sur le marché après le 13 août 2005 est transféré au Client qui l’accepte.
Le Client s’engage à s’assurer, d’une part, de la collecte et de l’enlèvement des déchets issus des EEE objets de la vente, et, d’autre part, de leur traitement et de leur valorisation. Le non-respect par le Client des obligations ainsi mises à sa charge peut entraîner l’application de sanctions, y compris pénales, prévues par chaque état membre de l’Union Européenne.
'.$nomE.' organisera, au titre du contrat, l’élimination ou l’évacuation des déchets issus du chantier (emballage, carton, palette,…).Dans le cas de rénovation d’une installation électrique, et sans indication contraire précisée dans la Spécification Technique, '.$nomE.' ne prend pas en charge la dépose et le traitement de fin de vie des matériels existants, conformément à la réglementation rappelée ci-dessus.');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'22 – DEVIATIONS CAHIER DES CHARGES');
$pdf->Ln(10);
$pdf->SetFont('Arial','',11);
$pdf->Cell(0,5,'xxx');
$pdf->Ln(10);

// Page 12
$pdf->AddPage();

$pageSecondTDM = $pageFirstTDM + 2;
$pdf->SetFont('Arial','B',18);
$pdf->Cell(0,5,'Spécification Technique',0,0,'C');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->Cell(0,5,$_SESSION['nomProjet'],0,0,'C');
$pdf->Ln();
$pdf->SetFont('Arial','B',16);
$pdf->Ln();
$pdf->Cell(0,5,'Table des matières');
$pdf->Ln(10);

$pdf->SetFont('Arial','',10);
$pdf->Cell(185,4,'1 - POSTE DE TRANSFORMATION','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'1.1 DESCRIPTIF TECHNIQUE DES MATERIELS PROPOSES','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',8);
$pdf->Cell(185,4,'1.1.1 Normes et contrôles','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'1.2 GENIE CIVIL','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',8);
$pdf->Cell(185,4,'1.2.1 Caractéristiques de l\'enveloppe EPCO','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM,'',0,'',0);
$pdf->Ln();
$poste = 0;
$p = 0;

for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Type de poste" && $arrayArticle[$i][0]->nom != "Transport et déchargement")
    {
        $poste++;
        $pdf->SetFont('Arial','',9);
        $pdf->Cell(185,4,'Poste N°'.$poste,'',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->SetFont('Arial','',8);
        $pdf->Cell(185,4,'1.2.2 Dimensions et masse de l\'enveloppe','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->Cell(185,4,'1.2.3 Aménagements de l\'enveloppe','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->Cell(185,4,'1.2.4 Spécificités techniques du poste','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->SetFont('Arial','',9);
        $pdf->Cell(185,4,'1.3 HUISSERIES','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->SetFont('Arial','',8);
        $pdf->Cell(185,4,'1.3.1 - Portes','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->Cell(185,4,'1.3.2 - Serrures','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->Cell(185,4,'1.3.3 - Ventilation du poste','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $pdf->Cell(185,4,'1.3.4 - Affiches','',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$poste+$p,'',0,'',0);
        $pdf->Ln();
        $p++;
    }
}
$ptotal = $poste+$p+1;
$armoracc = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)")
        $armoracc++;
}
$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'1.4 EQUIPEMENTS HTA','',0,'',0);
$pdf->Cell(0,4,$pageSecondTDM+$ptotal+$armoracc,'',0,'',0);
$pdf->Ln();

$nbENR = 0;
$nbBT = 0;
$nbBT2 = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    //COFFRET ENR
    if($arrayArticle[$i][5][0]->nom == "Coffret ENR")
    {
        $nbENR ++;
        if($nbENR == 1) {
            $pdf->SetFont('Arial','',9);
            $pdf->Cell(185,4,'1.5 COFFRETS ENR','',0,'',0);
            $pdf->Cell(0,4,$pageSecondTDM+1+$ptotal,'',0,'',0);
            $pdf->Ln();
        }
        $pdf->SetFont('Arial','',8);
        $pdf->Cell(185,4,'1.5.'.$nbENR. ' ' . $arrayArticle[$i][0]->nom,'',0,'',0);
        $pdf->Cell(0,4,$pageSecondTDM+1+$ptotal,'',0,'',0);
        $pdf->Ln();
    }

    if($nbENR > 0)
        $nbENR = 1;

    //BASSE TENSION
    if($arrayArticle[$i][5][0]->nom == "Basse tension")
    {
        $nbBT ++;
        // if($arrayArticle[$i][0]->nom == "TGBT 1000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 1250kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 1600kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 2000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "Unité fonctionnelle départ borne 300kW 4P 400Vca" || $arrayArticle[$i][0]->nom == "Emballage et livraison pour TGBT")

        if($nbBT == 1) {
            $pdf->SetFont('Arial','',9);
            $pdf->Cell(185,4,'1.'.(5+$nbENR).' BASSE TENSION','',0,'',0);
            $pdf->Cell(0,4,$pageSecondTDM+1+$ptotal,'',0,'',0);
            $pdf->Ln();
        }

        if($arrayArticle[$i][0]->nom == "TGBT" || $arrayArticle[$i][0]->nom == "Coffret BT des auxiliaires")
        {
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(185,4,'1.'.(5+$nbENR).'.'.$nbBT. ' ' . $arrayArticle[$i][0]->nom,'',0,'',0);
            $pdf->Cell(0,4,$pageSecondTDM+1+$ptotal,'',0,'',0);
            $pdf->Ln();
        }
        else {
            $nbBT2++;
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(185,4,'1.'.(5+$nbENR).'.'.$nbBT. ' ' . $arrayArticle[$i][0]->nom,'',0,'',0);
            $pdf->Cell(0,4,$pageSecondTDM+1+$ptotal+$nbBT2,'',0,'',0);
            $pdf->Ln();
        }
    }

    if($nbBT > 0)
        $nbBT = 1;
}
$page = $pageSecondTDM+1+$ptotal+$nbBT2+$nbBT;

$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'1.'.(5+$nbENR+$nbBT).' AUXILIAIRES ELECTRIQUES','',0,'',0);
$pdf->Cell(0,4,$page,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,4,'1.'.(6+$nbENR+$nbBT).' DIVERS ET ACCESSOIRES','',0,'',0);
$pdf->Cell(0,4,$page,'',0,'',0);
$pdf->Ln();

$nbl = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Liaison câble HTA" || $arrayArticle[$i][5][0]->nom == "Liaison câble BT") {
        $nbl ++;
        if($nbl==1)
        {
            $pdf->Cell(185,4,'1.'.(6+$nbENR+$nbBT+$nbl).' LIAISONS CÂBLES','',0,'',0);
            $pdf->Cell(0,4,$page,'',0,'',0);
            $pdf->Ln();
        }
    }
}
if($nbl > 0)
    $nbl = 1;

$tele = 0; 
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Téléaction")
    {
        $tele ++;
        $pdf->Cell(185,4,'1.'.(6+$nbENR+$nbBT+$nbl+$tele).' TELEACTION POUR DECOUPLAGE H4','',0,'',0);
        $pdf->Cell(0,4,$page,'',0,'',0);
        $pdf->Ln();
    }
}

$aux = 0;
$auxpositif = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Transformateur auxiliaire") {
        $aux++;
        $auxpositif = 1;
    }
}
if($aux == 2) {
    $pdf->Cell(180,4,'1.'.(6+$nbENR+$nbBT+$nbl+$tele+$auxpositif).' TRANSFORMATEUR AUXILIAIRE','',0,'',0);
    $pdf->Cell(0,4,($page+1).'-'.($page+3),'',0,'',0);
    $pdf->Ln();
}
if($aux == 1) {
    $pdf->Cell(185,4,'1.'.(6+$nbENR+$nbBT+$nbl+$tele+$auxpositif).' TRANSFORMATEUR AUXILIAIRE','',0,'',0);
    $pdf->Cell(0,4,$page+1,'',0,'',0);
    $pdf->Ln();
}

$poste = 0;
$a = $page+1+$aux;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Type de poste" && $arrayArticle[$i][0]->nom != "Transport et déchargement") {
        $poste++;
        if($poste > 1)
            $a .= '-'.(($page+1+$aux)+$poste-1);
    }
}
$pdf->Cell(180,4,'1.'.(7+$nbENR+$nbBT+$nbl+$tele+$auxpositif).' PLAN D’IMPLANTATION DU POSTE','',0,'',0);
$pdf->Cell(0,4,$a,'',0,'',0);
$pdf->Ln();

$page = (($page+1+$aux)+$poste-1);

$chta = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur RM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur SM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur"|| $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage BT")
    {
        $chta+=2;
    }
    if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 50-100" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 100-200" || $arrayArticle[$i][0]->nom == "RM6 RE-QI+T 400KVA" || $arrayArticle[$i][0]->nom == "RM6 RE-IQI+T 400KVA")
    {
        $chta+=3;
    }
}
if($chta > 0) {
    $pchta = $page+1;
    $pchta .= '-'.($page + $chta);
    
    $pdf->Cell(180,4,'2 - TABLEAU HTA','',0,'',0);
    $pdf->Cell(0,4,$pchta,'',0,'',0);
    $pdf->Ln();
    
    $page = $page+$chta;
}

$transfo = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Transformateur de puissance" || $arrayArticle[$i][5][0]->nom == "Transformateur abaisseur Schneider electric" || $arrayArticle[$i][5][0]->nom == "Transformateur abaisseur distribution Eletrafo" || $arrayArticle[$i][5][0]->nom == "Transformateur abaisseur mobilite electrique Eletrafo" || $arrayArticle[$i][5][0]->nom == "Transformateur abaisseur sec IP00 Schneider electric")
        $transfo++;
}

if($transfo > 1) {
    $ptransfo = $page+1;
    $ptransfo .= '-'.($page + $transfo);

    $pdf->Cell(180,4,'3 - TRANSFORMATEUR HTA/BT','',0,'',0);
    $pdf->Cell(0,4,$ptransfo,'',0,'',0);
    $pdf->Ln();
}
else {
    $ptransfo = $page + $transfo;
    $pdf->Cell(185,4,'3 - TRANSFORMATEUR HTA/BT','',0,'',0);
    $pdf->Cell(0,4,$ptransfo,'',0,'',0);
    $pdf->Ln();
}

$page = $transfo+$page;


$pdf->Cell(185,4,'4 - PARTICULARITES DE CETTE OFFRE','',0,'',0);
$pdf->Cell(0,4,$page+1,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'4.1 COFFRETS DE FOURNITURE CLIENTS','',0,'',0);
$pdf->Cell(0,4,$page+1,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,4,'4.2 LIVRAISON DU POSTE','',0,'',0);
$pdf->Cell(0,4,$page+1,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,4,'COMMENTAIRES ET DEVIATIONS '. $nomE,'',0,'',0);
$pdf->Cell(0,4,$page+1,'',0,'',0);
$pdf->Ln();
$pdf->SetFont('Arial','',9);
$pdf->Cell(185,4,'5 - LIVRABLES DU PROJET','',0,'',0);
$pdf->Cell(0,4,$page+2,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,4,'6 - LIMITE DE PRESTATIONS','',0,'',0);
$pdf->Cell(0,4,$page+3,'',0,'',0);
$pdf->Ln();
$pdf->Cell(185,4,'Conditions Générales de Vente','',0,'',0);
$pdf->Cell(0,4,$page+4,'',0,'',0);
$pdf->Ln();


// $chta = 0;
// for ($i = 0; $i < count($arrayArticle); $i++)
// {
//     if($arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur RM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur SM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur"|| $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage BT")
//     {
//         $chta+=2;
//     }
//     if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 50-100" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 100-200")
//     {
//         $chta+=3;
//     }
// }
// $pdf->SetFont('Arial','',11);
// $pdf->Cell(185,5,'2 - TABLEAU HTA','',0,'',0);
// $pdf->Cell(0,5,20+$aux,'',0,'',0);
// $pdf->Ln(7);

// $transfo = 0;
// for ($i = 0; $i < count($arrayArticle); $i++)
// {
//     if($arrayArticle[$i][5][0]->nom == "Transformateur de puissance" && $arrayArticle[$i][0]->nom != "Transformateur à commission")
//         $transfo++;
// }

// $pdf->SetFont('Arial','',11);
// $pdf->Cell(185,5,'3 - TRANSFORMATEUR HTA/BT ','',0,'',0);
// $pdf->Cell(0,5,20+$chta+$aux,'',0,'',0);
// $pdf->Ln(7);

// $pdf->SetFont('Arial','',11);
// $pdf->Cell(185,5,'4 - PARTICULARITES DE CETTE OFFRE','',0,'',0);
// $pdf->Cell(0,5,20+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln();
// $pdf->SetFont('Arial','',10);
// $pdf->Cell(185,5,'4.1 COFFRETS DE FOURNITURE CLIENTS','',0,'',0);
// $pdf->Cell(0,5,20+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln();
// $pdf->Cell(185,5,'4.2 LIVRAISON DU POSTE','',0,'',0);
// $pdf->Cell(0,5,20+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln();
// $pdf->Cell(185,5,'4.3 PRESTATIONS COMPLEMENTAIRES DE '. $nomE,'',0,'',0);
// $pdf->Cell(0,5,20+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln(7);

// $pdf->SetFont('Arial','',11);
// $pdf->Cell(185,5,'5 - LIVRABLES DU PROJET','',0,'',0);
// $pdf->Cell(0,5,20+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln(7);

// $pdf->SetFont('Arial','',11);
// $pdf->Cell(185,5,'6 - LIMITE DE PRESTATIONS','',0,'',0);
// $pdf->Cell(0,5,21+$chta+$transfo+$aux,'',0,'',0);
// $pdf->Ln();
// $pdf->SetFont('Arial','',10);
// $pdf->Cell(185,5,'Conditions Générales de Vente','',0,'',0);
// $pdf->Cell(0,5,22+$chta+$transfo+$aux,'',0,'',0);

// Page 13
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'1 – POSTE DE TRANSFORMATION');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'1.1 DESCRIPTIF TECHNIQUE DES MATERIELS PROPOSES');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','B',11);
$pdf->Ln(10);
$pdf->Cell(0,5,'1.1.1 - Normes et contrôles :');
$pdf->SetFont('Arial','',10);
$pdf->Ln();
$pdf->MultiCell(0,5,'Le poste préfabriqué est conçu, fabriqué et équipé suivant les normes :
- IEC 62271-202 - Postes préfabriqués haute tension / basse tension ;
- NF C13-100 Postes de livraison alimentés par un réseau public de distribution HTA
(jusqu\'à 33 kV) ;
- NF C13-200 - Installations électriques à haute tension ;
- NF C15-100 - Installations électriques à basse tension ;
- UTE C15-106 -Guide pratique - Section des conducteurs de protection, de terre et
de liaison équipotentielle
- NF EN 13369 - Règles communes pour les produits préfabriqués en béton ;
- NF EN 1992 - Eurocode 8 - Calcul des structures en béton ;
- NF EN 206-1 -Béton spécification performances production et conformité ;
- ISO 9001 – Système de management de la qualité ;
- ISO 14001 – Système de management environnemental (prise en compte du cycle
de fin de vie) ;
Nos postes sont contrôlés électriquement et mécaniquement chez notre fournisseur,
EPCO Méditerranée, par nôtre contrôleur '.$nomE.'');
$pdf->Ln();

$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,5,'1.2 GENIE CIVIL');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','B',11);
$pdf->Ln(10);
$pdf->Cell(0,5,'1.2.1 - Caractéristiques de l\'enveloppe EPCO :');
$pdf->Ln();
$pdf->SetFont('Arial','',10);
$pdf->MultiCell(0,5,'La fabrication des locaux techniques EPCO est réalisée suivant un système qualité
certifié par l’AFAQ selon ISO 9001 et ISO 14001, les bâtiments sont préfabriqués en
usine et sont constitués d’un ensemble MONOBLOC coulé avec du béton armé et fibré.
Ils sont conformes aux EUROCODES 2 et 8, les parois d’une épaisseur de 80mm en
standard.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Les murs intérieurs sont recouverts d’un enduit minéral blanc projeté. La toiture en
standard est de type terrasse 2 pentes 2% avec système anti goutte d’eau. L’étanchéité
est assurée à l’aide d’un revêtement polyuréthane de type résine mono-composant.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Les murs extérieurs en version de base, sont recouverts d’un revêtement plastique
épais, les couleurs correspondent à une palette RAL en standard.');
$pdf->Ln();
$pdf->MultiCell(0,5,'Les Locaux techniques EPCO sont réalisés avec vide technique. Les planchers des locaux
techniques sont réalisés en plancher bois amovible antidérapant classé M1. L’ensemble
du plancher est monté sur un châssis rail calepiné aux dimensions suivant l’étude
d’implantation réalisée préalablement');
$pdf->Ln();
$pdf->MultiCell(0,5,'Indice de protection de l\'enveloppe :
. IP25D : pénétration des solides et des liquides
. IPK10 : résistance mécanique aux chocs');
$pdf->Ln();

// Page 14
$poste = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Type de poste" && $arrayArticle[$i][0]->nom != "Transport et déchargement")
    {
        $poste++;
        $pdf->AddPage();
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(0,5,'Poste N°'. $poste);
        $pdf->Ln(10);
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.2.2 - Dimensions et masse de l\'enveloppe :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();

        if($arrayArticle[$i][0]->nom == "VACCARES (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Modèle : VACCARES');
        }
        if($arrayArticle[$i][0]->nom == "SML (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Modèle : SML');
        }
        if($arrayArticle[$i][0]->nom == "SANCY (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Modèle : SANCY');
        }
        if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Modèle : ARMORACC');
        }
        if($arrayArticle[$i][0]->nom != "VACCARES (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "SML (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "SANCY (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Modèle : '. $arrayArticle[$i][0]->nom);
        }
        $pdf->Ln();
        for ($c = 0; $c < count($arrayArticle[$i][3]); $c++) {
            if(!empty($arrayArticle[$i][3][$c]->description))
                $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom . ' : ' . $arrayArticle[$i][3][$c]->description);
            else
                $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom);
            $pdf->Ln();
            $pdf->Ln();
            
        }
        $pdf->Ln();

        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.2.3 - Aménagements de l\'enveloppe :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Finitions des murs extérieurs : 1015 - Teinte Ivoire Claire
Finition intérieure sur murs : RAL 9002
Dalle équipement en plancher amovible antidérapant classé M1 pour le local HTA
Accès intérieur au cuvelage : Par plancher amovible antidérapant classé M1.
Le cheminement des câbles pour les sections <= 95mm² dans le vide technique se font
sur chemin de câble.');
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Le poste est composé de XXX locaux qui seront dénommés :
- Un local HTA,
- Un local XXX
- Un local Transformateur');
        $pdf->Ln();
        $pdf->Cell(0,5,'Le local Transformateur est séparé du local HTA par une cloison béton.');
        $pdf->Ln(10);
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.2.4 - Spécificités techniques du poste :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->MultiCell(0,5,'Fourniture et pose d’entrées étanches de marque Hauff Technik ou équivalent
(uniquement la partie fixe) comprenant :
X x Passage de Mise à la Terre Isolé (HEA M12)
X x Passage étanche de type HSI 150 ou équivalent scellé dans le poste béton (partie
fixe uniquement)
X x Passage étanche de type HSI 90 ou équivalent scellé dans le poste béton (partie fixe
uniquement)');
        $pdf->Ln();

        $pdf->AddPage();
        $pdf->SetFont('Arial','B',11);
        $pdf->SetTextColor(51,138,255);
        $pdf->Cell(0,8,'1.3 HUISSERIES');
        $pdf->SetTextColor(0,0,0);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->Cell(0,8,'Couleur des huisseries (portes et aérateurs) :	1015 - Teinte Ivoire Claire');
        $pdf->Ln();
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.3.1 - Portes :');
        $pdf->Ln();
        $pdf->SetFont('Arial','',11);
        if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->MultiCell(0,5,'Les portes sont en acier 20/10 galvanisé(Z275) recouvert d’une peinture Epoxy cuite au four. Les portes sont équipées d’un blocage de la porte en position ouverte à 90° et 170°.

Porte avec simple peau peintes :
                        
2 x porte 850 x 2100 de passage libre
1 x porte 2100 x 2100 de passage libre');
$pdf->Ln();
        }
        else {
$pdf->MultiCell(0,5,'Les portes sont en acier 20/10 galvanisé(Z275) recouvert d’une peinture Epoxy cuite au four. Les portes sont équipées d’un blocage de la porte en position ouverte à 90° et 170°.

Porte avec simple peau peintes :
                    
1 x porte 850 x 2100 de passage libre           
1 x porte 1200 x 2100 de passage libre');
$pdf->Ln();
        }

        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.3.2 - Serrures :');
        $pdf->Ln();
        $pdf->SetFont('Arial','',11);
        if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->MultiCell(0,5,'1 x serrure anti-panique de 1 point avec un seul cylindre,
1 x demi-cylindre de serrure rond THIRARD ou équivalent adapté au centre ENEDIS du lieu de livraison,              
1 x serrure anti-panique de 1 point avec un seul cylindre,
1 x demi-cylindre de serrure rond THIRARD ou équivalent avec numéro aléatoire,
1 x serrure avec verrouillage C4');
$pdf->Ln();
        }
        else {
            $pdf->MultiCell(0,5,'1 x serrure anti-panique de 1 point avec un seul cylindre,
1 x demi-cylindre de serrure rond THIRARD ou équivalent adapté au centre ENEDIS du lieu de livraison,
1 x serrure anti-panique de 1 point avec un seul cylindre,
1 x demi-cylindre de serrure rond THIRARD ou équivalent avec numéro aléatoire,');
$pdf->Ln();
        }

        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.3.3 - Ventilation du poste :');
        $pdf->Ln();
        $pdf->SetFont('Arial','',11);

        $pdf->MultiCell(0,5,'La ventilation sera de type : xxx');
        $pdf->Ln();

        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.3.4 - Affiches :');
        $pdf->Ln();
        $pdf->SetFont('Arial','',11);
        $pdf->MultiCell(0,5,'Externe au poste :
PR20 - Plaque de signalisation pour postes électriques + Bande à Graver avec le nom du poste
AM20B - Soins aux électrisés
Interne au poste :
AM20B - Soins aux électrisés
AM-18/1 – Instructions générales
AM-208/1 - Instructions de sécurité
Schéma unifilaire
Schéma d’interverrouillage HTA/BT');
        $pdf->Ln();
    }
}

$armoracc = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
        $armoracc = 1;
    }
}
$pdf->AddPage();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,8,'1.4 EQUIPEMENTS HTA');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
if($armoracc = 1) {
    $pdf->MultiCell(0,5,'Fourniture et Pose de cellules modulaires type  de SIEMENS
-	Pose d’1 cellule Interrupteur Sectionneur ENEDIS (I – C13-100)
-	Pose d\'1 cellule Comptage (TT– C13-100) 1x 3 TP avec 2 secondaires (protection et comptage)
-	Pose d’1 cellule Disjoncteur (DDB– C13-100) 1 x 3 TC 50-100 avec 2 secondaires (protection et comptage) et un relais de protection numérique C13100
-	Pose d\'1 cellule Interrupteur-Sectionneur (Départ Parc) C13200 avec verrouillage C4
    
Pose et raccordement d’un TGBT de fourniture client HxLxP maxi : 2000x1600x600mm');
}
else {
    $pdf->Cell(0,8,'Fourniture et Pose de cellules modulaires type  de SIEMENS en comptage BT et HTA');
}

$pdf->Ln();


// Page 15
$nbENR = 0;
$nbBT = 0;
$nbauxp = 0;
$nbdivaccp = 0;
$nblp = 0;
$telep = 0;
$transfoauxp = 0;

$nbENR = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Coffret ENR")
        $nbENR = 1;
}

if($nbENR > 0) {
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',11);
    $pdf->SetTextColor(51,138,255);
    $pdf->Cell(0,8,'1.'.(4+$nbENR).' COFFRETS ENR');
    $pdf->SetTextColor(0,0,0);
    $pdf->SetFont('Arial','',11);
    $pdf->Ln();
}

$nbBT = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Basse tension")
        $nbBT =1;
}


$nbCoffret = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][0]->nom == "Coffret Protection Téléphonique (BHRD)")
    {
        $nbCoffret ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.5.'.$nbCoffret.' - Coffret Protection Téléphonique (BHRD) :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->Cell(0,5,'Fourniture et installation d\'un coffret protection Téléphonique comprenant');
        $pdf->Ln();
        $pdf->Cell(0,5,'1x vloc BHRD SHDSL');
        $pdf->Ln();
        $pdf->SetTextColor(255,255,255);
        $pdf->setDrawColor(0,0,0); 
        $pdf->Cell(100,5,'Caractéristiques et environnement',1,0,'L',1);
        $pdf->Cell(50,5,'Coffret BT',1,0,'C',1);
        $pdf->SetTextColor(0,0,0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'IP tableau',1,0,'L',0);
        $pdf->Cell(50,5,'IP2X',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'Climat',1,0,'L',0);
        $pdf->Cell(50,5,'Standard',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'IK tableau',1,0,'L',0);
        $pdf->Cell(50,5,'IK07',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'Habillage en façade',1,0,'L',0);
        $pdf->Cell(50,5,'Plastron',1,0,'L',0);
        
        $pdf->Ln(10);
    }
    if($arrayArticle[$i][0]->nom == "Coffret Frontière DEIE")
    {
        $nbCoffret ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,8,'1.5.'.$nbCoffret.' - Coffret Frontière DEIE :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        
        $pdf->SetTextColor(255,255,255);
        $pdf->setDrawColor(0,0,0); 
        $pdf->Cell(100,5,'Caractéristiques et environnement',1,0,'L',1);
        $pdf->Cell(50,5,'Coffret BT',1,0,'C',1);
        $pdf->SetTextColor(0,0,0);
        $pdf->Ln();
        
        $pdf->Cell(100,5,'IP tableau',1,0,'L',0);
        $pdf->Cell(50,5,'IP2X',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'Climat',1,0,'L',0);
        $pdf->Cell(50,5,'Standard',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'IK tableau',1,0,'L',0);
        $pdf->Cell(50,5,'IK07',1,0,'L',0);
        
        $pdf->Ln();
        
        $pdf->Cell(100,5,'Habillage en façade',1,0,'L',0);
        $pdf->Cell(50,5,'Plastron',1,0,'L',0);
        
        $pdf->Ln(10);   
    }
}


if($nbBT > 0) {
    if($nbENR == 0)
        $pdf->AddPage();
    $pdf->SetFont('Arial','B',11);
    $pdf->SetTextColor(51,138,255);
    $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT).' BASSE TENSION');
    $pdf->SetTextColor(0,0,0);
    $pdf->SetFont('Arial','',11);
    $pdf->Ln();
}

$nbBTA = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][0]->nom == "TGBT")
    {
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - TGBT :');
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);
        
        $pdf->Cell(0,5,'Descriptif :');
        $pdf->Ln(10);
        
        $pdf->Cell(0,5,'Plan d\'encombrement :');
        $pdf->Ln(10);
        
        $pdf->Cell(0,5,'Plan non contractuel. :');
        $pdf->Ln(10);
    }
    if($arrayArticle[$i][0]->nom == "Coffret BT des auxiliaires")
    {
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - Coffret BT des auxiliaires :');
        $pdf->Ln(10);
        $pdf->SetFont('Arial','',11);
        
        $pdf->MultiCell(0,5,'Coffret des auxiliaires du poste type Opale 2x26 pas, départs bipolaires pour éclairage, prise, etc...');
        $pdf->Ln();

        $pdf->SetFont('Arial','U',11);
        $pdf->MultiCell(0,5,'L\'alimentation de ce coffret est à la charge du client.');
        $pdf->Ln();

        $pdf->MultiCell(0,5,'Le client devra nous communiquer le régime de neutre afin de déterminer la protection de tête.');
        $pdf->Ln();
        $pdf->SetFont('Arial','',11);
    }
    if($arrayArticle[$i][0]->nom == "Disjoncteur débrochable sur chassis + auxiliaire du poste 250 KVA TNC 400A")
    {
        $pdf->AddPage();
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - ' . $arrayArticle[$i][0]->nom);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);

        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',50,110,100);
        $pdf->Ln(160);
        $pdf->Cell(0,5,'Plan non contractuel.');
    }
    if($arrayArticle[$i][0]->nom == "Disjoncteur débrochable sur chassis + auxiliaire du poste 400 KVA TNC 630A")
    {
        $pdf->AddPage();
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - ' . $arrayArticle[$i][0]->nom);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);

        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',50,110,100);
        $pdf->Ln(160);
        $pdf->Cell(0,5,'Plan non contractuel.');
    }
    if($arrayArticle[$i][0]->nom == "Disjoncteur débrochable sur chassis + auxiliaire du poste 630 KVA TNS 1000A")
    {
        $pdf->AddPage();
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - ' . $arrayArticle[$i][0]->nom);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);

        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',50,110,100);
        $pdf->Ln(160);
        $pdf->Cell(0,5,'Plan non contractuel.');
    }
    if($arrayArticle[$i][0]->nom == "Disjoncteur débrochable sur chassis + auxiliaire du poste 1000 KVA TNS 1600A")
    {
        $pdf->AddPage();
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - ' . $arrayArticle[$i][0]->nom);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(10);

        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',50,110,100);
        $pdf->Ln(160);
        $pdf->Cell(0,5,'Plan non contractuel.');
    }
    if($arrayArticle[$i][0]->nom == "TGBT 1000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 1250kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 1600kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "TGBT 2000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel" || $arrayArticle[$i][0]->nom == "Unité fonctionnelle départ borne 300kW 4P 400Vca")
    {
        $pdf->AddPage();
        $nbBTA ++;
        $pdf->SetFont('Arial','B',11);
        $pdf->Cell(0,5,'1.'.(4+$nbENR+$nbBT).'.'.$nbBTA.' - ' . $arrayArticle[$i][0]->nom);
        $pdf->Ln();
        if($arrayArticle[$i][0]->nom == "Unité fonctionnelle départ borne 300kW 4P 400Vca")
            $pdf->Cell(0,5,'Quantité : ' . $arrayArticle[$i][1]);
        $pdf->SetFont('Arial','',9);
        $pdf->Ln(10);

        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
    }
}

// Page 16
$nbl = 0;
$nbaux = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Auxiliaire électrique") {
        $nbaux++;
        if($nbaux==1) {
            $pdf->AddPage();
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbaux).' AUXILIAIRES ELECTRIQUES');
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFont('Arial','',11);
            $nbauxp = 1;
        }
    }
}
$pdf->Ln();
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Auxiliaire électrique")
        $pdf->MultiCell(0,5,$arrayArticle[$i][1].' x '.$arrayArticle[$i][0]->description);
}
$pdf->Ln();

$nbdivacc = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Divers et Accessoires") {
        $nbdivacc++;
        if($nbdivacc==1) {
            if($nbaux == 0)
                $pdf->AddPage();
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbauxp+1).' DIVERS ET ACCESSOIRES');
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFont('Arial','',11);
            $pdf->Ln();
            $nbdivaccp = 1;
        }
    }
}

if($nbdivacc > 1) {
    $poste = 0;
    for ($i = 0; $i < count($arrayArticle); $i++)
    {
        if($arrayArticle[$i][5][0]->nom == "Type de poste" && $arrayArticle[$i][0]->nom != "Transport et déchargement")
        {
            $poste++;
            $pdf->Cell(0,5,'Poste N°'. $poste);
            $pdf->Ln(5);
            for ($j = 0; $j < count($arrayArticle); $j++)
            {
                if($arrayArticle[$j][5][0]->nom == "Divers et Accessoires") 
                    $pdf->MultiCell(0,5,$arrayArticle[$j][1].' x '.$arrayArticle[$j][0]->description);
            }
            $pdf->Ln();
        }
    }
}

$nbl = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Liaison câble HTA" || $arrayArticle[$i][5][0]->nom == "Liaison câble BT") {
        $nbl ++;
        if($nbl==1)
        {
            if($nbaux == 0 && $nbdivacc == 0)
                $pdf->AddPage();
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbauxp+$nbdivaccp+1).' LIAISONS CÂBLES');
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFont('Arial','',11);
            $pdf->Ln();
            $nblp = 1;
        }
    }
}

for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Liaison câble HTA")
        $pdf->MultiCell(0,5,$arrayArticle[$i][1].' x '.$arrayArticle[$i][0]->description);

    if($arrayArticle[$i][5][0]->nom == "Liaison câble BT")
        $pdf->MultiCell(0,5,$arrayArticle[$i][1].' m '.$arrayArticle[$i][0]->description);
}

$tele = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Téléaction")
    {
        $tele = 1;
        $pdf->SetFont('Arial','B',11);
        $pdf->SetTextColor(51,138,255);
        $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbauxp+$nbdivaccp+$nblp+1).' TELEACTION POUR DECOUPLAGE H4');
        $pdf->SetTextColor(0,0,0);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->MultiCell(0,5,$arrayArticle[$i][1].' x '.$arrayArticle[$i][0]->description);
        $pdf->Ln();
        $telep = 1;
    }
}

// Page 17
$aux = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Transformateur auxiliaire")
        $aux = 1;
}
if($aux == 1)
{
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',11);
    $pdf->SetTextColor(51,138,255);
    $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbauxp+$nbdivaccp+$nblp+$telep+1).' TRANSFORMATEUR AUXILIAIRE');
    $pdf->SetTextColor(0,0,0);
    $pdf->SetFont('Arial','',11);
    $pdf->Ln();

    $aux=0;
    for ($i = 0; $i < count($arrayArticle); $i++)
    {
        if($arrayArticle[$i][5][0]->nom == "Transformateur auxiliaire")
        {
            $aux++;
            if($aux == 2)
                $pdf->AddPage();
            $pdf->Cell(0,5,$arrayArticle[$i][0]->nom);
            $pdf->Ln();
            $pdf->MultiCell(0,5,$arrayArticle[$i][1].' x '.$arrayArticle[$i][0]->description);
            $pdf->Ln();
            for ($c = 0; $c < count($arrayArticle[$i][3]); $c++) {
                if(!empty($arrayArticle[$i][3][$c]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom . ' : ' . $arrayArticle[$i][3][$c]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom);
                $pdf->Ln();
            }
            for ($n = 0; $n < count($arrayArticle[$i][4]); $n++) {
                if(!empty($arrayArticle[$i][4][$n]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom . ' : ' . $arrayArticle[$i][4][$n]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom);
                $pdf->Ln();
            }
            $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',50,120,100);
            $transfoauxp = 1;
        }
    }
}

// Page 18
$plan = 0;
for ($i = 0; $i < count($arrayArticle); $i++)
{
    if($arrayArticle[$i][5][0]->nom == "Type de poste" && $arrayArticle[$i][0]->nom != "Transport et déchargement")
    {
        $plan++;
        if($plan > 0) 
            $pdf->AddPage();
        
        if($plan == 1) {
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,8,'1.'.(4+$nbENR+$nbBT+$nbauxp+$nbdivaccp+$nblp+$telep+$transfoauxp+1).' - PLAN D’IMPLANTATION DU POSTE');
            $pdf->Ln();
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFont('Arial','',11);
        }

        if($arrayArticle[$i][0]->nom == "VACCARES (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Poste VACCARES');
        }
        if($arrayArticle[$i][0]->nom == "SML (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Poste SML');
        }
        if($arrayArticle[$i][0]->nom == "SANCY (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Poste SANCY');
        }
        if($arrayArticle[$i][0]->nom == "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Poste ARMORACC');
        }
        if($arrayArticle[$i][0]->nom != "VACCARES (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "SML (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "SANCY (Hors T&D avec Intégration matériels)" && $arrayArticle[$i][0]->nom != "ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)") {
            $pdf->Cell(0,5,'Poste '.$arrayArticle[$i][0]->nom);
        }

        if(!empty($arrayArticle[$i][0]->img)){
            $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',5,50,200);
        }
        $pdf->Ln(200);
        $pdf->Cell(0,5,'Plan non contractuel.');
        
    }
}


// Tableau HTA
$var = 0;
for ($i = 0; $i < count($arrayArticle); $i++) {
    if($arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur RM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA consommateur SM6" || $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur"|| $arrayArticle[$i][5][0]->nom == "Cellule HTA poste producteur" || $arrayArticle[$i][5][0]->nom == "Cellule HTA SIEMENS")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'2 – TABLEAU HTA');
            $pdf->Ln(10);
        }
        $var++;
    
        if(!empty($arrayArticle[$i][0]->description))
        {
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'DESCRIPTION');
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFont('Arial','',11);
            $pdf->Ln(7);
        
            $pdf->MultiCell(0,5,$arrayArticle[$i][0]->description);
            $pdf->Ln(7);
        }
    
        if(count($arrayArticle[$i][3]) > 0)
        {
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'CARACTERISTIQUES');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
    
            for ($c = 0; $c < count($arrayArticle[$i][3]); $c++) {
                if(!empty($arrayArticle[$i][3][$c]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom . ' : ' . $arrayArticle[$i][3][$c]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom);
                $pdf->Ln();
            }
        }
        $pdf->Ln(7);
        if(count($arrayArticle[$i][4]) > 0)
        {   if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 50-100" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 100-200")
                $pdf->AddPage();
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'NORMES');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
    
            for ($n = 0; $n < count($arrayArticle[$i][4]); $n++) {
                if(!empty($arrayArticle[$i][4][$n]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom . ' : ' . $arrayArticle[$i][4][$n]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom);
                $pdf->Ln();
            }
        }
        if(!empty($arrayArticle[$i][0]->img) && count($arrayArticle[$i][3]) == 0 && count($arrayArticle[$i][4]) == 0)
            $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',85,150,40);
        if(!empty($arrayArticle[$i][0]->img) && count($arrayArticle[$i][3]) > 0 || count($arrayArticle[$i][4]) > 0)
            $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',85,225,40);
        if(!empty($arrayArticle[$i][0]->descriptif))
        {
            $pdf->AddPage();
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'DESCRIPTIF');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
            if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 50-100") {
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Interrupteur d’arrivée AI (R) – JZ01');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A
- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.
- Raccordement câbles MT :
	- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment.
	- par l’avant.
	- de type « B » embrochable 400 A, selon la norme EN 50181.
	- Système d’indicateur de présence de tension WEGA zéro.

PAS DE COFFRET BT

Dimensions et poids :
- Largeur UF : 310 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Poids : 110 Kg.
- Hauteur de raccordement connecteurs HTA : 860 mm
Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes");
                $pdf->Ln(5);
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Transformateur de tension TT (M) – JZ02');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 200 A
- 3 Transformateurs de tension
- Enroulement mesure
	20 KV 100 /v3 15VA Class 0,5
- Enroulement protection 100 /V3 15VA Class 0,5
- Puits fusible comprenant 6 fusibles UTE 6,3A
- Système détecteur de tension capacitive type WEGA ZÉRO, avec indicateur
Le caisson basse tension H200mm se compose de :
- 1 sectionneur fusible pour enroulement protection avec verrouillage par serrure ELP1
- 1 sectionneur fusible pour enroulement comptage
(Livré avec 6 fusibles 10A format 10,3x38)

Dimensions et poids :
- Largeur UF : 430 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Hauteur : 1400mm.
- Poids : 270 Kg.");

                $pdf->Ln(5);
                $pdf->AddPage();
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Disjoncteur départ barre (DDB) – JZ03');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 disjoncteur à commande MANUEL avec contacts de position,
- 1 bobine de déclenchement à manque de tension 48VCC
- Deux sectionneurs à coupure dans le SF6 à commande manuelle, avec
interverrouillage avec le disjoncteur HTA.
- 3 transformateurs de courant à double enroulement mesure & protection
- TC 50-100A
- Enroulement mesure
- 5A Class 0,2FS10 7,5VA
- Enroulement protection
- 1A 5P20
Option
Contact de position disjoncteur 1NO+3NC+2 INV. (6NO+6NC) ramenés sur borne
Le caisson basse tension H600mm se compose de :
- Un relais numérique SIPROTEC 7SJ803 C13100 (pour réseau neutre compensé).
7SJ8032-1ED00-1FH0
- 3 Boites d’essai courant (1), tension (1) et polarité (1)
- 1 disjoncteur 2P6A + aux (alim relais)
- 3 entrées binaires + 5 sorties binaires
- Fonctions AINSI

· C13100 : 50/51, 50N/51N, 74TC, 46, 86
· PWH : 47, 67Ns, 27R, 59R, 81R

Dimensions et poids :
- Largeur UF : 620 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Hauteur : 1400mm.
- Poids : 425 Kg.");
            }
            if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 100-200") {
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Interrupteur d’arrivée AI (R) – JZ01');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A
- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.
- Raccordement câbles MT :
	- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment.
	- par l’avant.
	- de type « B » embrochable 400 A, selon la norme EN 50181.
	- Système d’indicateur de présence de tension WEGA zéro.

PAS DE COFFRET BT

Dimensions et poids :
- Largeur UF : 310 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Poids : 110 Kg.
- Hauteur de raccordement connecteurs HTA : 860 mm
Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes");
                $pdf->Ln(5);
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Transformateur de tension TT (M) – JZ02');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 200 A
- 3 Transformateurs de tension
- Enroulement mesure
	20 KV 100 /v3 15VA Class 0,5
- Enroulement protection 100 /V3 15VA Class 0,5
- Puits fusible comprenant 6 fusibles UTE 6,3A
- Système détecteur de tension capacitive type WEGA ZÉRO, avec indicateur
Le caisson basse tension H200mm se compose de :
- 1 sectionneur fusible pour enroulement protection avec verrouillage par serrure ELP1
- 1 sectionneur fusible pour enroulement comptage
(Livré avec 6 fusibles 10A format 10,3x38)

Dimensions et poids :
- Largeur UF : 430 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Hauteur : 1400mm.
- Poids : 270 Kg.");

                $pdf->Ln(5);
                $pdf->AddPage();
                $pdf->SetFont('Arial','B',11);
                $pdf->Cell(0,5,'Unité Fonctionnelle Disjoncteur départ barre (DDB) – JZ03');
                $pdf->Ln(5);
                $pdf->SetFont('Arial','',11);
                $pdf->MultiCell(0,5,"L’équipement de la cellule se compose de :
- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6
- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A
- 1 disjoncteur à commande MANUEL avec contacts de position,
- 1 bobine de déclenchement à manque de tension 48VCC
- Deux sectionneurs à coupure dans le SF6 à commande manuelle, avec
interverrouillage avec le disjoncteur HTA.
- 3 transformateurs de courant à double enroulement mesure & protection
- TC 100-200A
- Enroulement mesure
- 5A Class 0,2FS10 7,5VA
- Enroulement protection
- 1A 5P20
Option
Contact de position disjoncteur 1NO+3NC+2 INV. (6NO+6NC) ramenés sur borne
Le caisson basse tension H600mm se compose de :
- Un relais numérique SIPROTEC 7SJ803 C13100 (pour réseau neutre compensé).
7SJ8032-1ED00-1FH0
- 3 Boites d’essai courant (1), tension (1) et polarité (1)
- 1 disjoncteur 2P6A + aux (alim relais)
- 3 entrées binaires + 5 sorties binaires
- Fonctions AINSI

· C13100 : 50/51, 50N/51N, 74TC, 46, 86
· PWH : 47, 67Ns, 27R, 59R, 81R

Dimensions et poids :
- Largeur UF : 620 mm
- Profondeur au sol : 715 mm (hors tout : 775 mm).
- Hauteur : 1400mm.
- Poids : 425 Kg.");
            }
            if($arrayArticle[$i][0]->nom != "Cellule Siemens comptage HTA TC 50-100" && $arrayArticle[$i][0]->nom != "Cellule Siemens comptage HTA TC 100-200") {
                $pdf->MultiCell(0,5,$arrayArticle[$i][0]->descriptif);
            }
            
            $pdf->Ln();
        }
        // C13200
        if($arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 50-100" || $arrayArticle[$i][0]->nom == "Cellule Siemens comptage HTA TC 100-200")
        {
            for ($j = 0; $j < count($arrayArticle); $j++) {
                if($arrayArticle[$j][5][0]->nom == "Cellule SIEMENS C13200")
                {
                    $pdf->AddPage();
                    $pdf->MultiCell(0,5,$arrayArticle[$j][0]->descriptif);
                    $pdf->Ln();
                }
            }
        }
        if($arrayArticle[$i][0]->nom == "RM6 RE-QI+T 400KVA" || $arrayArticle[$i][0]->nom == "RM6 RE-IQI+T 400KVA")
        {
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'CROQUIS FACE AVANT');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
            $pdf->Cell(0,5,'NON CONTRACTUEL');
            if($arrayArticle[$i][0]->nom == "RM6 RE-QI+T 400KVA")
                $pdf->Image('../img/re-qi.png',30,100,80);
            else
                $pdf->Image('../img/re-iqi.png',30,100,80);
        }
    }
}


// Transformateur de puissance
$var = 0;
$varTFOEM = 0;
$varTFOED = 0;
$varTFOTRI = 0;
for ($i = 0; $i < count($arrayArticle); $i++) {
    if($arrayArticle[$i][5][0]->nom == "Transformateur de puissance" || $arrayArticle[$i][5][0]->nom == "Transformateur abaisseur Schneider electric")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(10);
        }
        $var++;
    
        $pdf->SetFont('Arial','B',11);
        $pdf->SetTextColor(51,138,255);
        $pdf->Cell(0,5,'DESCRIPTION');
        $pdf->SetTextColor(0,0,0);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(7);
    
        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->description);
        $pdf->Ln(7);
        if(count($arrayArticle[$i][3]) > 0)
        {
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'CARACTERISTIQUES');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
    
            for ($c = 0; $c < count($arrayArticle[$i][3]); $c++) {
                if(!empty($arrayArticle[$i][3][$c]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom . ' : ' . $arrayArticle[$i][3][$c]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][3][$c]->nom);
                $pdf->Ln();
            }
        }

        if(count($arrayArticle[$i][4]) > 0)
        {
            $pdf->Ln(7);
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'NORMES');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
    
            for ($n = 0; $n < count($arrayArticle[$i][4]); $n++) {
                if(!empty($arrayArticle[$i][4][$n]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom . ' : ' . $arrayArticle[$i][4][$n]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][4][$n]->nom);
                $pdf->Ln();
            }
        }

        if(count($arrayArticle[$i][6]) > 0)
        {
            $pdf->Ln(7);
            $pdf->SetFont('Arial','B',11);
            $pdf->SetTextColor(51,138,255);
            $pdf->Cell(0,5,'ACCESSOIRES');
            $pdf->SetFont('Arial','',11);
            $pdf->SetTextColor(0,0,0);
            $pdf->Ln(7);
    
            for ($a = 0; $a < count($arrayArticle[$i][6]); $a++) {
                if(!empty($arrayArticle[$i][6][$a]->description))
                    $pdf->Cell(0,5,$arrayArticle[$i][6][$a]->nom . ' : ' . $arrayArticle[$i][6][$a]->description);
                else
                    $pdf->Cell(0,5,$arrayArticle[$i][6][$a]->nom);
                $pdf->Ln();
            }
        }

        if($arrayArticle[$i][5][0]->nom == "Transformateur de puissance") {
            if(!empty($arrayArticle[$i][0]->img))
                $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',85,200,40);
        }

        if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur Schneider electric") {
            if(!empty($arrayArticle[$i][0]->img))
                $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.jpg',150,100,40);
        }

    }
    if($arrayArticle[$i][0]->nom == "Transformateur à commission")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;
        $pdf->SetTextColor(44,83,255);
        $pdf->Cell(0,10,$arrayArticle[$i][0]->nom);
        $pdf->SetTextColor(0,0,0);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln();
        $pdf->SetFont('Arial','B',11);
        $pdf->SetTextColor(51,138,255);
        $pdf->Cell(0,5,'DESCRIPTION');
        $pdf->SetTextColor(0,0,0);
        $pdf->SetFont('Arial','',11);
        $pdf->Ln(7);
        $pdf->MultiCell(0,5,$arrayArticle[$i][0]->description);
        $pdf->Ln(7);
    }
    if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur mobilite electrique Eletrafo")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;
        
        if($varTFOEM == 0) {
            $pdf->SetTextColor(44,83,255);
            $pdf->Cell(0,10,'Transformateur huile pour mobilité électique');
            $pdf->SetTextColor(0,0,0);
        }
        $varTFOEM ++;

        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',40,60,130);

        $pdf->Image('../img/tfoem.png',55,230,100);
    }
    if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur distribution Eletrafo")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;

        if($varTFOED == 0) {
            $pdf->SetTextColor(44,83,255);
            $pdf->Cell(0,10,'Transformateur huile pour distribution électique');
            $pdf->SetTextColor(0,0,0);
        }
        $varTFOED ++;

        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',40,60,130);

        $pdf->Image('../img/tfoed.png',55,230,100);
    }
    if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur sec IP00 mobilité électrique Eletrafo")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;

        if($varTFOED == 0) {
            $pdf->SetTextColor(44,83,255);
            $pdf->Cell(0,10,'Transformateur abaisseur sec IP00 mobilité électrique Eletrafo');
            $pdf->SetTextColor(0,0,0);
        }
        $varTFOED ++;

        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',40,60,130);

        $pdf->Image('../img/tfoemip.png',55,230,100);
    }
    if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur sec IP00 distribution Eletrafo")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;

        if($varTFOED == 0) {
            $pdf->SetTextColor(44,83,255);
            $pdf->Cell(0,10,'Transformateur abaisseur sec IP00 distribution Eletrafo');
            $pdf->SetTextColor(0,0,0);
        }
        $varTFOED ++;

        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',40,60,130);

        $pdf->Image('../img/tfoedip.png',55,230,100);
    }
    if($arrayArticle[$i][5][0]->nom == "Transformateur abaisseur sec IP00 Schneider electric")
    {
        $pdf->AddPage();
        if($var == 0)
        {
            $pdf->SetFont('Arial','B',12);
            $pdf->SetTextColor(0,0,0);
            $pdf->Cell(0,5,'3 – Transformateur de puissance HTA/BT');
            $pdf->Ln(7);
        }
        $var++;

        if($varTFOTRI == 0) {
            $pdf->SetTextColor(44,83,255);
            $pdf->Cell(0,10,'Transformateur abaisseur sec IP00 Schneider electric');
            $pdf->SetTextColor(0,0,0);
        }
        $varTFOTRI ++;

        $pdf->Image('../img/'. $arrayArticle[$i][0]->img .'.png',40,60,130);
    }
}

// Page 20+
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'4 – PARTICULARITES DE CETTE OFFRE');
$pdf->Ln(10);
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,8,'4.1 LIVRAISON DU POSTE');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'1 x Visite du chantier par le Grutier sera programmée avant livraison du poste préfabriqué.
1 x Convoi exceptionnel pour la livraison du poste PDL
1 x Déchargement du poste PDL');
$pdf->Ln();
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(51,138,255);
$pdf->Cell(0,8,'4.2 PRESTATIONS COMPLEMENTAIRES DE '.$nomE.' EN OPTION');
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'1 x Assistance de Mise En Service C13-100 (protection et comptage), en présence de ENEDIS, limitée à une journée, comprenant un forfait déplacement sur site');
$pdf->Ln();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'5 – COMMENTAIRES ET DEVIATIONS');
$pdf->Ln();
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'Attention, si les dimensions des matériels client venaient à changer, cela pourrait impacter les dimensions du poste et un re-chiffrage serait nécessaire.

Nous partons de l’hypothèse que le réseau telecom est en GSM et que le client nous fournit les routeurs GSM ainsi que l’onduleur.

Station météo hors scope peinta.

Le relais de protection numérique sur la cellule DDN n’est pas communiquant suivant indication d’Enedis. Si toutefois il faut de la communication cela est possible mais n’engage que le client et un re chiffrage de la cellule
HTA serait nécessaire.

Il n’est pas prévu d’onduleur dans le PDL.

Les baies et coffrets communication sont fournis vide.

La note de calcul de sélectivité HTA est hors scope Peinta.

Il n’est pas prévu d’ordre d’attente logique. Si souhaité, il faudra modifier le relais dans la cellule Disjoncteur du PTR et un re chiffrage serait nécessaire.

En cas de défaut max de I sur une des cellule disjoncteur protection transformateur, il faudra faire des réglage suivant la note de calcul de sélectivité. De plus il faudra demander si Enedis autorise de régler la DDB à 300ms ( à la charge du client).

Attention si défaut homopolaire sur la ligne HTA entre le PDL et le PTR, la cellule DDB va déclencher et ouvrir toute la partie production. Une solution est de remplacer la cellule interrupteur par une cellule disjoncteur.

1 x Vérification sur site après livraison des postes comprenant un forfait déplacement sur site, limitée à une journée par poste.');
$pdf->Ln();


$pdf->AddPage();
$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'6 – LIVRABLES DU PROJET');
$pdf->Ln();
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->Ln();
$pdf->MultiCell(0,5,'Pendant la réalisation du projet vous seront remis pour approbation :
> Plans des cellules HTA,
> Plan d’implantation du poste,
> Schéma d’interconnexion des équipements du poste,
> Carnet de câbles,
> Plan du coffret des auxiliaires, 
> Note de calcul des grilles de ventilation
> Les plans et fiches techniques nécessaires à la réalisation du dossier C13-100 pour ENEDIS.

En fin d\'affaire (Dossier d’Ouvrage Exécuté) :
> Plan du coffret des auxiliaires remis à jour tel que construit usine,
> Plans et schémas de câblage interne du poste remis à jour tel que construit usine,
> Carnet de câbles remis à jour tel que construit usine,
> Certificats d\'essais des cellules HTA,
> Certificats d\'essais des TC et TP des cellules HTA,
> Note de calcul des grilles de ventilation
> Manuel d’exploitation et de maintenance des cellules HTA,

L’ensemble des documents du Dossier d’Ouvrage Exécuté sera remis sous format PDF, et il sera envoyé en une seul fois, par lien WeTransfer ou OneDrive.');
$pdf->Ln();

// Page 21+
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,5,'7 – LIMITE DE PRESTATIONS');
$pdf->Ln(10);
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',11);
$pdf->MultiCell(0,5,'Nous ne prévoyons pas dans ce devis les prestations et équipements suivants : 

> Les ouvrages éventuels de Génie Civil :
    -	Bâtiment (maçonnerie, peinture, carrelage, dalles de recouvrement)
    -	Terrassement (ouverture et fermeture de tranchée, etc.)
> La réalisation des prises de terre à l’extérieur du poste préfabriqué,
> La rémunération des prestations éventuelles d\'architecte, de bureau d\'études, d\'organisme de contrôle ou de compte prorata,
> La note de calcul HTA,
> La note de calcul BT côté AC, côté DC du Parc Photovoltaïque et des auxiliaires du poste,
> La fourniture des couvercles étanches de type HSI 150 ou équivalent (partie mobile),
> La fourniture (hard), la réalisation (soft), les essais électriques (FAT et SAT) de la supervision du parc Photovoltaïque et la gestion DEIE,
> Les essais de type ou spéciaux,
> La mise en service des postes sur site (SAT),
> La formation du personnel d’exploitation/maintenance et la rédaction de procédure associée à l’exploitation et maintenance du poste préfabriqué,
> Le démontage, l\'évacuation et la destruction du vieux matériel,
> La location et l\'installation d\'un groupe électrogène de secours,
> La fourniture, le montage, et l\'installation d\'éclairage et de prises de courant en dehors du poste préfabriqué,
> Les raccordements provenant de l’extérieur du poste (câbles de puissance HTA, câbles de puissance BT, câbles de commandes BT, fibres optiques, réseaux de communication, etc…)
> Le contrat de maintenance et les pièces de rechange,
> Le contrôle des postes en usine ou sur site par un organisme agréé,
> La coordination avec les équipes EDF/ENEDIS et autres,
> Les études d’impacts (environnement),
> La réalisation du Consuel.

En règle générale, nous ne prévoyons pas les fournitures ou prestations non décrites dans cette offre.');
$pdf->Ln();

// Page 22+
$pdf->AddPage();

$pdf->SetFont('Arial','B',12);
$pdf->SetTextColor(0,0,0); 
$pdf->Cell(0,5,'Conditions Générales de Vente');
$pdf->Ln(10);
$pdf->SetTextColor(0,0,0);
$pdf->SetFont('Arial','',8);
$pdf->MultiCell(0,3,'SPECIFICATIONS
Nos dessins, photographies et modèles sont notre propriété exclusive, ils ne peuvent être copiés ni communiqués à des tiers sans notre consentement écrit.
PRIX
Nos prix sont donnés hors taxe et seront majorés de la T.V.A. en vigueur au moment de la livraison.
Comme pour toute commande nous étant adressée par écrit, les ventes négociées par nos représentants et par téléphone ne deviennent définitives qu\'après notre acceptation. Les conditions consenties par nos représentants sont présumées agréées, sous réserve de dénonciation de notre part dans un délai de quinze jours.
Nos prix sont valables pendant la durée du délai d\'option dans notre offre. Passé le délai, ils seront susceptibles d\'être révisés. Les marchandises livrables dans des délais excédant trois mois seront facturées au prix initial réactualisé selon la formule.
LIVRAISON ET EXPEDITION
La livraison a lieu en usine même si le prix de vente comprend exceptionnellement le transport. En conséquence, nos marchandises voyagent toujours aux risques et périls de l\'acheteur, sauf son recours contre les chemins de fer et les entrepreneurs de transport en général; il lui incombe donc, comme destinataire, de ne donner décharge au dernier transporteur qu\'après s\'être rendu compte que la marchandise, qu\'elle soit ou non expédiée franco, lui est délivrée en bon état et dans les délais voulus.
En cas d\'avaries, manquants, retards ou erreurs quelconques, le destinataire exerce seul son recours contre le transporteur absolument responsable (Loi du 29 mars 1905).
Nous rappelons que l\'article 105 du code de Commerce stipule que la réception des marchandises éteint toute autre action contre le transporteur pour avarie ou perte partielle, à moins que, dans les trois jours, non compris les jours fériés, qui suivent la réception, le destinataire ait notifié au transporteur, par acte d\'huissier ou lettre recommandée, sa protestation motivée. Le mode d\'expédition doit être indiqué sur chaque commande d\'une façon précise. Faute d\'indication spéciale à ce sujet, les envois seront faits dans les conditions nous paraissant les plus économiques ou les plus rapides suivant les cas d\'espèce, sans que nous assumions la responsabilité pour le mode de transport et le tarif en résultant.
EMBALLAGES
Les plus grands soins étant apportés à l\'emballage des marchandises nous déclinons toute responsabilité pour avarie, casse ou détérioration. Sauf conventions spéciales, les retours d\'emballages ne sont pas acceptés.
Pour les marchandises voyageant habituellement en vrac, un emballage n\'est prévu que si le client en fait la demande.
GARANTIES
Les matériels, objet de la présente commande, sont garantis pendant 12 mois à compter de la date de réception faite en nos ateliers.
La garantie ne s\'applique pas aux remplacements ni aux réparations qui résulteraient :
- de l\'usure normale
- de détériorations ou d\'accidents provenant de négligence, de défaut de surveillance ou d\'entretien et d\'utilisation inappropriée.
Sont également exclus :
- les frais de démontage et de remontage du matériel et les frais inhérents à cette intervention tels que :
. frais d\'emballage, de transport, de frêt
. frais d\'assurance, de droits de douane, de réimportation et réexportation.
- les frais dûs aux pertes d\'exploitation ou aux dommages causés par la défaillance du matériel fourni au titre de cette commande.
DELAIS ET PENALITES
Les délais indiqués ne sont qu\'approximatifs. Aucune pénalité ne peut être exigée en cas de retard dans les livraisons si elle n\'a pas été acceptée par écrit lors de la commande.
Tout cas de force majeure auxquels sont expressément assimilées la guerre, les grèves, les épidémies, les inondations, l\'interruption et la réduction des transports, la pénurie des matières premières ou de la main-d\'œuvre ou toute autre cause entraînant le chômage de tout ou partie de nos usines ou de celles de nos fournisseurs, autorisent la suspension et retardent l\'exécution des marchés, contrats ou commandes, modifient les conditions précédemment conclues et peuvent entraîner des modifications, non seulement dans l\'exécution et dans la livraison, mais aussi dans les prix et les conditions prévues.
PAIEMENTS
Sauf conventions particulières, tous les paiements doivent être effectués à 45 jours fin de mois date de facture au siège de l\'entreprise. Nos traites ou acceptations de règlement n\'opèrent ni novation, ni dérogation à cette clause attributive de juridiction. Pour les clients n\'ayant pas de compte ouvert, les envois sont payables avant livraison. Nous n\'acceptons pas de règlement sur des tiers.
Le fait de ne pas payer une facture à son échéance rend le paiement de toutes les autres factures immédiatement exigible, même si elles ont donné lieu à des traites déjà mises en circulation. Le vendeur aura dans ce cas, la faculté de suspendre ou d\'annuler l\'exécution du marché ou des commandes en cours.
En cas de retard de paiement, l\'acheteur s\'il lui est accordé un délai, sera débité d\'intérêts, calculés selon un taux égal à une fois et demie le taux d\'intérêt légal. L\'acheteur ne peut exiger d\'effectuer ses paiements en dehors des heures d\'ouverture des caisses des banques.
RESERVE DE PROPRIETE
Le vendeur se réserve la propriété des marchandises livrées jusqu\'au complet paiement du prix. A cet égard, ne constitue pas des paiements, au sens de la présente disposition, la remise de traites ou de tout titre créant une obligation de payer.
RECLAMATIONS
Les réclamations doivent nous parvenir au plus tard dans la huitaine qui suit la réception des marchandises, en rappelant le numéro d\'affaire.
CONTESTATIONS
Toutes les contestations, quelle que soit leur nature, seront portées devant le Tribunal de CUSSET, seul compétent, même en cas de recours en garantie ou de pluralité de défendeurs.
GENERALITES
L\'acceptation de nos offres implique celle des conditions générales ci-dessus, quelles que soient les clauses pouvant figurer sur les documents de l\'acheteur, sauf conventions spéciales constatées par écrit.');
$pdf->Ln();

$pdf->Output('../Fiche/'.$_SESSION['numDevis'].'/'.$_SESSION['numDevis'].'.pdf', 'F');
$pdf->Output();