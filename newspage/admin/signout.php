<?php
 
// Require database & thông tin chung
require_once 'core/init.php';
 
// Xoá session
$session->ss_destroy();
new redirect($_DOMAIN); // Trở về trang index
 
?>