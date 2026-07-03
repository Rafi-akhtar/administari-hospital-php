<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Rumah Sakit</title>
    <link rel="stylesheet" href="style.css"> 
</head>
<body>
<div class="container">
    <div class="card">
<form action="Output rs.php" method="POST">
  <strong>RUMAH SAKIT</strong>
  <hr>
  NO REKAN MEDIS : <input type="text" name="kode"><br><br>
  NAMA PASIEN    : <input type="text" name="nm"><br><br>
  TEMPAT LAHIR   : <input type='text' name="lahir"><br><br>
  TANGGAL LAHIR  : <input type="date" name="hrg"><br><br>
  UMUR           : <input type="text" name="jml"><br><br>
  JENIS KELAMIN  :<input type="radio" name="jk" value="Laki-laki"> Laki-laki
                 <input type="radio" name="jk" value="Perempuan"> Perempuan<br><br>
  JENIS LAYANAN  :<select name="layanan">
                 <option value="umum">Umum</option>
                 <option value="poli tht">Poli THT</option>
                 <option value="poli bedah">Poli Bedah</option>
                 <option value="poli anak">Poli Anak</option>
                 </select>
                 <br><br>
  <input type="submit" value="DAFTAR">
  <input type="reset" value="BATAL">
</form>