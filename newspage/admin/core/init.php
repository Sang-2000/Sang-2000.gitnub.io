<?php
    #   Mục đích file:  kết nối database và cấu trúc index.php

    #   require các file thư viện php trong class
    require_once "classes/db.php";
    require_once "classes/functions.php";
    require_once "classes/session.php";


    #   kết nối database
    $db  =   new DB();
    $db->db_connect();
    $db->db_set_char('utf8');


    #   thiết lập đường dẫn tuyệt đối của folder admin trên brower 
    $_DOMAIN    =   'http://localhost/newspage/admin/';


    #   thiết lập múi thời gian
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $date_current   =   '';
    $date_current   =   date("Y/m/d H:i:sa");


    #   Khởi tạo và kiểm tra session
        #   khởi tạo session
    $session    =   new session();
    $session->ss_start();

    #   nếu đã truy cập website thì gán $user = kết quả trả về hàm ss_getData()
    if ($session->ss_getData() != '')
        $user   =   $session->ss_getData();
    else
        $user   =   '';


    // Nếu đăng nhập
    if ($user)
    {
        // Lấy dữ liệu tài khoản
        $sql_get_data_user = "SELECT * FROM accounts WHERE username = '$user'";
        if ($db->db_num_rows($sql_get_data_user))
        {
            $data_user = $db->db_fetch_assoc($sql_get_data_user, 1);
        }
    }
?>