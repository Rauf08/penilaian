<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/')?>css/complain.css">
	<link rel="stylesheet" href="<?= base_url()?>assets/css/animate.css">
	<title>Penilaian</title>
</head>

<body>
	<div class="header">
		<div class="brand">
			<a href="index.html"><img class="img-brand" src="<?= base_url()?>assets/img/logo.png"></a>
		</div>
		<div class="menu">
			<nav>
				<ul>
					<li><a href="home">Beranda</a></li>
					<li><a href="lapor">Penilaian</a></li>
					<li><a href="forum">Forum</a></li>
					<?php
                    if (!$this->session->has_userdata('username')) { ?>
					<li><a href="register">Daftar</a></li>
					<li><a href="login">Masuk</a></li>
					<?php
                    } else{ ?>
					<li><a href="#"> <?=$this->session->userdata('username'); ?></a></li>
					<li><a href="<?= base_url('auth/logout') ?>">Logout</a></li>
					<?php }
                    ?>
				</ul>
			</nav>
			<div class="menu-toggle">
				<input type="checkbox">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
	</div>
	<div class="judul wow fadeIn"> <br><br><br><br>
        <h1>Penialaian</h1>
        <hr class="line" size="5%" color="#1FAB98">
        <p class="title">Tulis pendapat Anda, tentang sistem informasi ini yang telah dibuat</p>
    </div><br>
	<div class="complain wow fadeInDown" data-wow-delay="1s">
		<?= form_open_multipart('lapor/simpanLaporan'); ?>
			<h2 class="wow pulse" data-wow-iteration="infinite" style="color : #1FAB98">Form Penilaian</h2><br>
			<input class="complain-input" type="text" name="judul" placeholder="Ketik judul penilaian"><br><br>
			<textarea class="complain-input" rows="10" name="deskripsi"
				placeholder="Ketik isi penilaian Anda"></textarea><br>
			<input name="tanggal" placeholder="Pilih tanggal" type="text" onfocus="(this.type='date')"
				onblur="(this.type='text')" id="" /><br><br>
			<select id="category" name="id_kategori">
				<!-- <option value="" disabled selected>Pilih Kategori Laporan Anda...</option> -->
				<?php foreach ($kategori as $item) { ?>
					<option value="<?= $item['id_kategori'] ?>"><?= $item['nama'] ?></option>
				<?php } ?>
			</select><br><br>
			<div class="fileUpload">
				<span>Upload Lampiran Foto</span>
				<input type="file" class="upload" name="gambar">
			</div><br><br>
			<?php
                    if (!$this->session->has_userdata('username')) { ?>
                    <input type="button" value="Anda Harus Login Terlebih Dahulu !" disabled/>
			<?php
					} else{ ?>
					<input type="hidden" name="id_user" value="<?= $this->session->userdata('id_user') ?>">
                    <input type="submit" value="NILAI !" />
			<?php }
            ?>
			<!-- <input type="button" value="LAPOR !" /> -->
					<?= form_close(); ?>
	</div>
	<br>
	<div class="footer">
		<p>Copyright &copy; 2020 SIAP<br> All rights reserved</p>
	</div>
	<script type="text/javascript" src="<?= base_url()?>assets/js/script.js"></script>
	<script src="<?= base_url()?>assets/js/wow.min.js"></script>
	<script>
		new WOW().init();

	</script>
</body>

</html>
