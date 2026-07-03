<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RUMAH SAKIT</title>
    <link rel="stylesheet" href="style.css"> 
</head>
<body>
    <div class="container">
    <div class="card">
    <pre>
        <h2 class="title">🧾 Hasil Pembayaran</h2>
<?php
$a = $_POST['kode'];
$b = $_POST['nm'];
$c = $_POST['lahir'];
$d = $_POST['hrg'];
$e = $_POST['jml'];
$f = $_POST['jk'];
if($f=="Laki-laki"){
    $f=="Laki-laki";
}else{
    $jk = "Perempuan";
}
$g = $_POST['layanan'];
if($g=="umum"){
    $harga = 50000;
}elseif($g=="poli tht"){
    $harga = 150000;
}elseif($g=="poli bedah"){
    $harga = 250000;
}elseif($g=="poli anak"){
    $harga = 350000;
}else{
    $harga = 0;
}
$biaya_admin = 5000;
$total = $harga + $biaya_admin;
echo "NO REKAN MEDIS    : $a<br>";
echo "NAMA PASIEN           : $b<br>";
echo "TEMPAT LAHIR          : $c<br>";
echo "TANGGAL LAHIR       : $d<br>";
echo "UMUR                         : $e<br>";
echo "JENIS KELAMIN        : $f<br>";
echo "LAYANAN                   : $g<br>";
echo "==============================<br>";
echo "Total Bayar       : Rp $total<br>";
?>
<a href="Input rs.php">Kembali</a>
</div>
</pre>
</body>
</html>