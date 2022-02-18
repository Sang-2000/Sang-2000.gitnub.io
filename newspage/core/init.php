<!-- file trung tâm của client, giúp trao đổi dữ liệu với database -->

<?php
 
// Require các thư viện PHP
require_once 'classes/DB.php';
require_once 'classes/Session.php';
require_once 'classes/Functions.php';
 

// Kết nối database
$db = new DB();
$db->db_connect();
$db->db_set_char('utf8');


$_DOMAIN = 'http://localhost/newspage/';
// Lấy thông tin website
$sql_get_data_web = "SELECT * FROM website";
if ($db->db_num_rows($sql_get_data_web)) {
    $data_web = $db->db_fetch_assoc($sql_get_data_web, 1);
}
 
?>