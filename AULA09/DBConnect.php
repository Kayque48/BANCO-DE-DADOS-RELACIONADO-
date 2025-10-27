<?php
   define( 'HOST', 'localhost');
   define( 'USER', 'root');
   define( 'PASS', 'senaisp');
   define( 'DB', 'db_joins');
   
   $charset = 'utf8';
   $conn = mysqli_connect( HOST, USER, PASS, DB )
             or die( 'Erro de conexão ao banco' );
