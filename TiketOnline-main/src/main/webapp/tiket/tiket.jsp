<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </head>


    <body>
        <div class="wrapper">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/home">Dashboard</a>
            </div>
        </nav>

        <aside class="sidebar">
            <menu>
            <ul class="menu-content">
                <li><a href="/home"><i class="fa fa-home"></i> Home</a></li>
                <li>
                    <li><a href="/showAllUsers"> Manajemen User </a></li> 
                    <li><a href="/showAllEvents"> Manajemen Event </a></li>
                    <li><a href="/showAllTikets"> Manajemen Tiket </a></li>
                </li>
            </menu>
        </aside>
        <section class="content">
            <div class="inner">
                <table border="1">
                    <h1> Tiket List </h1>
                    <a href="/showAllEvents" class="btn btn-primary" role="button">Tambah Tiket</a><br> <br>

                    <table class="table">
                        <thead class="thead-light">
                        <tr>
                            <th> ID Tiket </th>
                            <th> Nama User </th> 
                            <th> Nama Event </th>
                            <th> Absen </th>
                            <th> Operasi </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="t" items="${tiket}">
                            <tr> 
                                <td> ${t.getIdTiket()} </td>
                                <td> ${t.getUser().getFirstName()} ${t.getUser().getLastName()} </td>
                                <td> ${t.getEvent().getName()} </td>
                                <td> ${t.getAbsen().getAbsen()} </td>
                                <td> 
                                    <a href="/deleteTiket?idTiket=${t.getIdTiket()}" onclick="return confirm('Yakin Hapus?');" button type="button" class="btn btn-outline-danger"> hapus peserta</a> 
                                    <a href="/deleteAbsen?idAbsen=${t.getIdTiket()}" onclick="return confirm('Yakin Hapus?');" button type="button" class="btn btn-outline-danger"> hapus absen </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
        </div>
        
    </body>
</html>