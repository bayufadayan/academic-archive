<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
    
    <header>
        <h2 class="logo">Maroon</h3>
    <nav class="navigation">
        <a href="#home" class="active">Home</a>
        <a href="#about">About</a>
        <a href="#">Contact Us</a>
        <a href="backend/index.php">Login</a>
    </nav>
</header>


<section class="home">
<?php 
                            include "backend/koneksi.php";
                            $no = 1;
                            $query = mysqli_query($conn, "SELECT * FROM mahasiswa");
                            while($data = mysqli_fetch_array($query)){
                            ?>
    <h2 id="text"><?php echo $data['nama']?></h2>
    <?php } ?>

    <img class="gambar" src="assets/gambar/bg2.jpg" alt="">
</section>

<section id="about">
    <div class="row">
        
    <div class="sec">
    <?php 
                            include "backend/koneksi.php";
                            $no = 1;
                            $query = mysqli_query($conn, "SELECT * FROM about");
                            while($data = mysqli_fetch_array($query)){
                            ?>
    <h2><?php echo $data['judul']?></h2>
        <p><?php echo $data['ket']?></p>
    <?php } ?>
</div>

    </div>
</section>



</body>
</html>