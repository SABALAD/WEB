<?php 
include '../koneksi.php';
session_start();
    $nomor = $_POST['nomor'];
    $tanggal = $_POST['tanggal'];
    $pelanggan = $_POST['pelanggan'];
    $alamat = $_POST['alamat'];
    $tlp = $_POST['tlp'];
    $tanggal_pemasangan = $_POST['tanggal_pemasangan'];
    $kasir_id = $_POST['kasir_id'];
    $sub_total = $_POST['sub_total'];
    $diskon = $_POST['diskon'];
    $total = $_POST['total'];
    $downpayment = $_POST['downpayment'];
    $sisatotal = $_POST['sisatotal'];

    // Menyimpan data ke tabel invoice
mysqli_query($koneksi, "insert into invoice values(NULL,'$nomor', '$tanggal', '$pelanggan', '$alamat', '$tlp', '$tanggal_pemasangan', '$kasir_id', '$sub_total', '$diskon', '$total', '$downpayment', '$sisatotal')";

$id_invoice = mysqli_insert_id($koneksi);

$transaksi_produk = $_POST['transaksi_produk'];
$transaksi_harga = $_POST['transaksi_harga'];
$transaksi_jumlah = $_POST['transaksi_jumlah'];
$transaksi_total = $_POST['transaksi_total'];

$jumlah_pembelian = count($transaksi_produk);

for($a=0;$a<$jumlah_pembelian;$a++){

	$t_produk = $transaksi_produk[$a];
	$t_harga = $transaksi_harga[$a];
	$t_jumlah = $transaksi_jumlah[$a];
	$t_total = $transaksi_total[$a];

	// ambil jumlah produk
	$detail = mysqli_query($koneksi, "select * from produk where produk_id='$t_produk'");
	$de = mysqli_fetch_assoc($detail);
	$jumlah_produk = $de['produk_stok'];

	// kurangi jumlah produk
	$jp = $jumlah_produk-$t_jumlah;
	mysqli_query($koneksi, "update produk set produk_stok='$jp' where produk_id='$t_produk'");

	// simpan data pembelian
	mysqli_query($koneksi, "insert into transaksi values(NULL,'$id_invoice','$t_produk','$t_harga','$t_jumlah','$t_total')")or die(mysqli_errno($koneksi));

}


header("location:penjualan.php?alert=sukses");