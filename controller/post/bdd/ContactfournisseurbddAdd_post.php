<?php
session_start();

include_once('../../PostData.php');
PostData::AddContactFournisseur($_SESSION['idFournisseur'], $_POST['nom'], $_POST['prenom'], $_POST['genre'], $_POST['tel_fixe'], $_POST['tel_portable'], $_POST['email'], $_POST['fonction']);
header('location:../../../page/bdd/contactfournisseurbdd.php?id='.$_SESSION['idFournisseur']);