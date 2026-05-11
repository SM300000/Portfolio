<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<?php require(menu.php) ?>

<main>
<section>
  <h2>Me contacter</h2>

  <form
  action="https://formspree.io/f/xbdwqglv"
  method="POST"
>
  <label>
    Votre email:
    <input type="email" name="email">
  </label>
  <label>
    Votre message:
    <textarea name="message"></textarea>
  </label>
  <!-- your other form fields go here -->
  <button type="submit">sauvegarder</button>
</form>

</section>
</main>

</body>
</html>