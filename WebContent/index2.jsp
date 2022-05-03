<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página Inicial</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
  rel="stylesheet"
/>
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css"
  rel="stylesheet"
/>
</head>
<body style="background-color: black;">
	<div
  id="carouselBasicExample"
  class="carousel slide carousel-fade"
  data-mdb-ride="carousel"
>
  <div class="carousel-indicators">
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="1"
      aria-label="Slide 2"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="2"
      aria-label="Slide 3"
    ></button>
  </div>

  <div class="carousel-inner">
    <div class="carousel-item active" data-mdb-interval="5000">
      <img
      	id="img1"
        src="imagens/forme-sua-banda-3.jpg"
        class="d-block w-100"
        alt="..."
        width="100%"
        height="790px"
      />
      <div class="carousel-caption d-none d-md-block">
        <h5>Bandas</h5>
        <p>O festival conta com bandas de todos os lugares do mundo e de diferentes estilos para que cada um se divirta</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item" data-mdb-interval="5000">
      <img
      	id="img2"
        src="imagens/As-melhores-dicas-para-curtir-um-festival-600x400.jpg"
        class="d-block w-100"
        alt="..."
        width="100%"
        height="790px"
      />
      <div class="carousel-caption d-none d-md-block">
        <h5>Público</h5>
        <p>A parte mais importante do festival são vocês e temos o enorme prazer em recebê-los</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item" data-mdb-interval="5000">
      <img
      	id="img3"
        src="imagens/tomorrowland.jpg"
        class="d-block w-100"
        alt="..."
        width="100%"
        height="790px"
      />
      <div class="carousel-caption d-none d-md-block">
        <h5>Fogos</h5>
        <p>Os shows de música não serão o único espetáculo do festival, traremos cor e muita explosão.</p>
      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button
    class="carousel-control-prev"
    type="button"
    data-mdb-target="#carouselBasicExample"
    data-mdb-slide="prev"
  >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-mdb-target="#carouselBasicExample"
    data-mdb-slide="next"
  >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</body>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.js"
></script>
</html>