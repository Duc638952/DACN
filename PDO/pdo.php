<?php
 $host ="localhost";
 $dbName="shop";
 $userName="root";
 $password="";
 $objPDO = new PDO("mysql:host=$host; dbname=$dbName", $userName, $password);
 $objPDO->query('set names utf8');