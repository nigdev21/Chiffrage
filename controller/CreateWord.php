<?php
session_start();
  header("Content-type: application/vnd.ms-Word");
  header("Content-Disposition: attachment;Filename=".$_SESSION['nomPdf'].".doc");    
  echo "<html>";
  echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">";
  echo "<body>";
// Famille
for ($i = 0; $i < count($_SESSION['famille']); $i++) {
  echo "<h1 style='color:red;'>". $_SESSION['famille'][$i][0]->nom ."</h1>";
  // Article
  for ($j = 0; $j < count($_SESSION['article']); $j++) {
      if($_SESSION['article'][$j][4][0]->id == $_SESSION['famille'][$i][0]->id)
      {
          // Infos Article
          echo "<h2 style='color:blue;'>". $_SESSION['article'][$j][0]->nom ."</h2>";
          echo "<h4'>". $_SESSION['article'][$j][0]->description ."</h4><br>";

          // Caratéristiques Article
          echo '<ul>';
          for ($c = 0; $c < count($_SESSION['article'][$j][3]); $c++) {
              echo '<li>' . $_SESSION['article'][$j][3][$c]->nom . ' | ' . $_SESSION['article'][$j][3][$c]->description . '</li>';
          }
          echo '</ul>';

          // Choix
          
          for ($c2 = 0; $c2 < count($_SESSION['choix']); $c2++) {
              if($_SESSION['article'][$j][0]->id == $_SESSION['choix'][$c2]['Article'])
              {
                  echo '<h4 style="color:green;">' . $_SESSION['choix'][$c2][0]->nom . '</h4>';
                  
                  // Option
                  echo '<ul>';
                  for ($o = 0; $o < count($_SESSION['option']); $o++) {
                      if($_SESSION['choix'][$c2][0]->id == $_SESSION['option'][$o]['Choix'])
                      {
                          echo '<li><h4 style="color:orange;">' .  $_SESSION['option'][$i][0]->nom . '</h4></li>';
                      }
                  }
                  echo '</ul>';
              }
          }
      }
  }
}
echo 'Le prix total est de : ' . $_SESSION['articleSomme'] . ' €';
  echo "</body>";
  echo "</html>";