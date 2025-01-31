<?php 
//koneksi ke database
$conn = mysqli_connect ("localhost", "root","","tgs_pik3");

function query($query){
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)){
        $rows[] = $row;
    }
    return $rows;
}

function tambah($data){
    global $conn;

    $nama = htmlspecialchars($data["nama"]);
    $npm = htmlspecialchars($data["npm"]);
    $jurusan = htmlspecialchars($data["jurusan"]);

    $query = "INSERT INTO tugasphpawal VALUES ('','$nama','$npm','$jurusan')";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
} 

function hapus($id){
    global $conn;
    mysqli_query($conn, "DELETE FROM tugasphpawal WHERE id = $id");
    return mysqli_affected_rows($conn);
}






?>