<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
        <title>Login</title>
    </head>
    <body>
        <div class="jumbotron">
            <h1>
                Connexion
            </h1>
            <hr>
            <form action="../Controller/Post/Login_post.php" method="POST">
                <div class="form-row">
                    <div class="col">
                        <input type="text" name="username" class="form-control" placeholder="Nom d'utilisateur" required pattern="^[A-Za-z '-]+$">
                    </div>
                    <div class="col">
                        <input type="text" name="password" class="form-control" placeholder="Mot de passe" required pattern="^[A-Za-z '-]+$">
                    </div>
                </div>
                <input type="submit" class="btn btn-info" value="Se connecter">
            </form>
        </div>
    </body>
</html>
