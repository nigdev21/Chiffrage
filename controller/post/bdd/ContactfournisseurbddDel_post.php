<?php
session_start();

include_once('../../PostData.php');
PostData::DelContactFournisseur($_SESSION['idFournisseur']);
header('location:../../../page/bdd/contactfournisseurbdd.php?id='.$_SESSION['idFournisseur']);