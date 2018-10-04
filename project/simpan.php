<?php
include '../conn.php';
  $no_project    = $_POST['no_project'];
  $nama_project    = $_POST['nama_project'];
  $jenis_project    = $_POST['jenis_project'];
  $tanggal_rencana     = $_POST['tanggal_rencana'];

$queryExec ='';
$url = '';

$simpan = $_POST['simpan'];


if ($simpan == 'add'){
    $queryAdd = "INSERT INTO `project`(`nama_project`, `jenis_project`, `tanggal_rencana`)
    VALUES ('$nama_project','$jenis_project','$tanggal_rencana');";

  $queryExec = $queryAdd;
}


if ($simpan == 'edit'){
  $queryEdit = "UPDATE project
                SET nama_project = '$nama_project',
                    jenis_project = '$jenis_project',
                    tanggal_rencana = '$tanggal_rencana'
                WHERE no_project = $no_project
  ";
  $queryExec = $queryEdit;
}

if ($simpan == 'delete'){
  $queryDelete = "DELETE FROM project
                WHERE no_project = $no_project
  ";
  $queryExec = $queryDelete;
}

echo $queryExec;

if($simpan != ''){

  $querySimpan = mysqli_query($koneksi, $queryExec) or die(mysqli_error());

  $url = "location:../index.php?menu=project";

  // echo $url;

  if($querySimpan) {
    header($url);
   } else{
    echo "Upss Something wrong..";
   }
}
else
    header($url);


 ?>
