var checkbox = document.querySelectorAll('input[type=checkbox]'); 
var radio = document.querySelectorAll('input[type=radio]');
var number = document.querySelectorAll('input[type=number]');
const coefInput = document.getElementById('coefInput');
const pvT = document.getElementById('pvT');
const coefP = document.getElementsByClassName('coefP');
const ha = document.getElementsByClassName('ha');
const pv = document.getElementsByClassName('pv');


var arrayCheckbox = [];
var arrayNumber = [];

checkbox.forEach(function(item){
    arrayCheckbox.push(item.id);
    item.addEventListener('change', () => DisplayNumber(item.id));
});

number.forEach(function(item){
    arrayNumber.push(item.id);
});

function DisplayNumber(id){
    
    if(document.getElementById(id).checked) {
        document.getElementById("N" + id.substr(1)).disabled = false;
        document.getElementById("N" + id.substr(1)).value = 1;
    } 
    else
    {
        document.getElementById("N" + id.substr(1)).disabled = true;
        document.getElementById("N" + id.substr(1)).value = "";
    }
}

function toggle(source) {
    checkboxes = document.getElementsByName('Famille[]');
    for(var i=0, n=checkboxes.length;i<n;i++) {
        checkboxes[i].checked = source.checked;
    }
  }

function Check(){
    var checkboxcheck = document.querySelectorAll('input[type=checkbox]:checked'); 
    var radiocheck = document.querySelectorAll('input[type=radio]:checked');
    var select = document.getElementById('SelectItem');
    if(radiocheck.length > 0 || checkboxcheck.length > 0 || select.value != "null")
        document.getElementById("sub").style.display = "block";
    else
        document.getElementById("sub").style.display = "none";
}

//Article
function UpdArticlePrix(id, prix){
    prixN = prompt("Entrer un nouveau prix :", prix);
    if (!isNaN(prixN) && prixN >= 0) {
        window.location.href='../../controller/post/bdd/UpdPrixArticle.php?id=' + id + "&prix=" + prixN
    }
}

function UpdArticleImg(id, img){
    imgN = prompt("Entrer une nouvelle image :", img);

    window.location.href='../../controller/post/bdd/UpdImgArticle.php?id=' + id + "&img=" + imgN
}

function UpdArticleNom(id, nom){
    nomN = prompt("Entrer un nouveau nom :", nom);

    window.location.href='../../controller/post/bdd/UpdNomArticle.php?id=' + id + "&nom=" + nomN
}

function UpdArticleDescription(id){
    descriptionN = prompt("Entrer une nouvelle description :");

    window.location.href='../../controller/post/bdd/UpdDescriptionArticle.php?id=' + id + "&description=" + descriptionN
}

//Client
function UpdClientNomS(id, nom){
    nomN = prompt("Entrer un nouveau nom :", nom);

    window.location.href='../../controller/post/bdd/UpdNomSClient.php?id=' + id + "&nom=" + nomN
}
function UpdClientAdresse(id, adresse){
    nomN = prompt("Entrer une nouvelle adresse :", adresse);

    window.location.href='../../controller/post/bdd/UpdAdresseClient.php?id=' + id + "&adresse=" + nomN
}
function UpdClientCp(id, cp){
    nomN = prompt("Entrer un nouveau code postal :", cp);

    window.location.href='../../controller/post/bdd/UpdCpClient.php?id=' + id + "&cp=" + nomN
}
function UpdClientVille(id, ville){
    nomN = prompt("Entrer un nouvelle ville :", ville);

    window.location.href='../../controller/post/bdd/UpdVilleClient.php?id=' + id + "&ville=" + nomN
}
function UpdClientGroupe(id, groupe){
    nomN = prompt("Entrer un nouveau groupe :", groupe);

    window.location.href='../../controller/post/bdd/UpdGroupeClient.php?id=' + id + "&groupe=" + nomN
}

//Contact Client
function UpdClientContactNom(id, nom){
    nomN = prompt("Entrer un nouveau nom :", nom);

    window.location.href='../../controller/post/bdd/UpdNomClientContact.php?id=' + id + "&nom=" + nomN
}
function UpdClientContactPrenom(id, prenom){
    nomN = prompt("Entrer un nouveau prenom :", prenom);

    window.location.href='../../controller/post/bdd/UpdPrenomClientContact.php?id=' + id + "&prenom=" + nomN
}
function UpdClientContactGenre(id, genre){
    nomN = prompt("Entrer un nouveau genre :", genre);

    window.location.href='../../controller/post/bdd/UpdGenreClientContact.php?id=' + id + "&genre=" + nomN
}
function UpdClientContactTelFixe(id, telF){
    nomN = prompt("Entrer un nouveau tel Fixe :", telF);

    window.location.href='../../controller/post/bdd/UpdTelFixeClientContact.php?id=' + id + "&telF=" + nomN
}
function UpdClientContactTelPortable(id, telP){
    nomN = prompt("Entrer un nouveau tel Portable :", telP);

    window.location.href='../../controller/post/bdd/UpdTelPortableClientContact.php?id=' + id + "&telP=" + nomN
}
function UpdClientContactEmail(id, email){
    nomN = prompt("Entrer un nouveau email :", email);

    window.location.href='../../controller/post/bdd/UpdEmailClientContact.php?id=' + id + "&email=" + nomN
}
function UpdClientContactFonction(id, fonction){
    nomN = prompt("Entrer un nouvelle fonction :", fonction);

    window.location.href='../../controller/post/bdd/UpdFonctionClientContact.php?id=' + id + "&fonction=" + nomN
}

const CheckCoef = function(e) {
    if(e.target.value < 100 && e.target.value >= 0 )
    {
        var pvTP = 0;
        for (var i = 0; i < coefP.length; i++) {
            coefP[i].innerHTML = e.target.value;
            pv[i].innerHTML = (ha[i].innerHTML/(1-e.target.value/100)).toFixed(2) + " €";
            pvTP += (ha[i].innerHTML/(1-e.target.value/100));
        }
        pvT.innerHTML = pvTP.toFixed(2) + " €";
    }
    else
        coefInput.value = "";        
}

coefInput.addEventListener('input', CheckCoef);
coefInput.addEventListener('propertychange', CheckCoef);