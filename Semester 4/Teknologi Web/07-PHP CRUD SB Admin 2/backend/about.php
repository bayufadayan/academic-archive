<?php
include "template/header.php";
?>
              

                <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        About
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>No</td>
                                    <td>Judul</td>
                                    <td>Deskripsi</td>
                                    <td>Aksi</td>
                                </tr>
                            </thead>
                            <?php 
                            include "koneksi.php";
                            $no = 1;
                            $query = mysqli_query($conn, "SELECT * FROM about");
                            while($data = mysqli_fetch_array($query)){
                            ?>

                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo $data['judul']?></td>
                                <td><?php echo $data['ket']?></td>
                               
                                <td>
                                    <a href="" class="btn btn-sm btn-primary">Edit </a>
                                    <a href="" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>

                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>

               

                <?php
include "template/footer.php";
?>   