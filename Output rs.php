<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RUMAH SAKIT_TERPERCAYA</title>
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
$c = $_POST['hrg'];
$d = $_POST['jml'];
$e = $_POST['jk'];
if($e=="Laki-laki"){
    $e=="Laki-laki";
}else{
    $jk = "Perempuan";
}
$f = $_POST['layanan'];
if($f=="umum"){
    $harga = 50000;
}elseif($f=="poli tht"){
    $harga = 150000;
}elseif($f=="poli bedah"){
    $harga = 250000;
}elseif($f=="poli anak"){
    $harga = 350000;
}else{
    $harga = 0;
}
$biaya_admin = 5000;
$total = $harga + $biaya_admin;
echo "NO REKAN MEDIS : $a<br>";
echo "NAMA PASIEN    : $b<br>";
echo "TEMPAT/TGL LAHIR : $c<br>";
echo "UMUR           : $d<br>";
echo "JENIS KELAMIN  : $e<br>";
echo "LAYANAN        : $f<br>";
echo "==============================<br>";
echo "Total Bayar    : Rp $total<br>";
?>
<a href="RUMAH SAKIT TERPERCAYA.php">Kembali</a>
</div>
</pre>
</body>
</html>