<?php
include_once('../../PostData.php');
PostData::AddFournisseur($_POST['nom_societe'], $_POST['adresse'], $_POST['cp'], $_POST['ville'], $_POST['groupe']);
header('location:../../../page/bdd/fournisseurbdd.php');