<?php
include_once('../../PostData.php');
include_once('../../RecupData.php');
$devis = RecupData::getDevisById($_POST['id']);
PostData::DelDevis($_POST['id']);

$folderName = '../../../fiche/'. $devis[0]->nom; 

removeFiles($folderName);

function removeFiles($target) {
    if(is_dir($target)){
        $files = glob( $target . '*', GLOB_MARK );
        foreach( $files as $file ){
            removeFiles( $file );      
        }
        rmdir( $target );
    } elseif(is_file($target)) {
        unlink( $target );  
    }
}

header('location:../../../page/bdd/devisbdd.php');