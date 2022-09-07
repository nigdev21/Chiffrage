<?php
session_start();

include_once('../../PostData.php');
PostData::AddContactClient($_SESSION['idClient'], $_POST['nom'], $_POST['prenom'], $_POST['genre'], $_POST['tel_fixe'], $_POST['tel_portable'], $_POST['email'], $_POST['fonction']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_SESSION['idClient']);