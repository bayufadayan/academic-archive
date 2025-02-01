<?php
include('koneksi.php');
$id = $_GET['id'];
$query = "SELECT * FROM tb_mahasiswa WHERE id = $id LIMIT 1";
$result = mysqli_query($connection, $query);
$row = mysqli_fetch_array($result);
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,
shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.
min.css">
    <title>Edit mahasiswa</title>
</head>

<body>
    <div class="container" style="margin-top: 80px">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        EDIT mahasiswa
                    </div>
                    <div class="card-body">
                        <form action="update_mahasiswa.php" method="POST">
                            <div class="form-group">
                                l>
                                <input type="text" name="npm" value="<?php echo
                                                                        $row['npm'] ?>" placeholder="Masukkan npm mahasiswa" class="formcontrol”>
<input type=" hidden" name="id" value="<?php echo
                                        $row['id'] ?>">
                            </div>
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama" value="<?php echo
                                                                        $row['nama'] ?>" placeholder="Masukkan Nama mahasiswa" class="formcontrol">
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                <textarea class="form-control" name="alamat" placeholder="Masukkan Alamat mahasiswa" rows="4"><?php echo
                                                                                                                                $row['alamat'] ?></textarea>
                            </div>
                            <button type="submit" class="btn btnsuccess">UPDATE</button>
                            <button type="reset" class="btn btnwarning">RESET</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>