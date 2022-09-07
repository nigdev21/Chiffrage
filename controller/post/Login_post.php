<?php
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=chiffrage;','root','');
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}
$username = $_POST['username'];
$password = $_POST['password'];
$req = 'SELECT * FROM login WHERE username=:uname AND password=:upass';
$stmt = $bdd->prepare($req);
$stmt->bindParam('uname', $username, PDO::PARAM_STR);
$stmt->bindParam('upass', $password, PDO::PARAM_STR);
$stmt->execute();
$count = $stmt->rowCount();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if(!empty($row))
{
    session_start();
    $_SESSION['login'] = $row['id'];
    header('location:../../index.php');
}
else
    header('location:../../page/login.php');
