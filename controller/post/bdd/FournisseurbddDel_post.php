<?php
include_once('../../PostData.php');
PostData::DelFournisseur($_POST['id']);
header('location:../../../page/bdd/fournisseurbdd.php');