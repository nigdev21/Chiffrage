<?php
session_start();

include_once('../../PostData.php');
PostData::DelContactClient($_SESSION['idClient']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_SESSION['idClient']);