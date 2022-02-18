

<?php
/*
    <!--
    Không bao giờ được phép sử dụng các thư viện trong phần admin dùng cho phần clien, chúng ơhari được tách riwwng ra với nhau. 
    Bởi một khi đã đưa vào sử dụng trên thực tế thì sẽ vô cùng nguy hiểm cho website.

    Tin tặc sẽ lợi dụng chức năng view source page của browser để xem code của trang web, 
    sau đó tin tặc tìm kiếm những đường dẫn liên kết tới các file CSS, JS để mong cơ hội nào đó tìm được folder admin. 
    Và tất nhiên nếu chúng ta dùng thư viện trong phần admin cho phần client thì đã bị lộ folder admin cho tin tặc rồi.

    Có 2 giải pháp nếu muốn làm ứng dụng trên thực tế:
        1.  Copy các thư viện muốn include từ folder admin và ngoài cùng cấp với file index.php của client
        2.  Cắt các thư viện sử dụng chung cho cả 2 phần admin và client, và dán cùng cấp với file index.php của client, 
            sau đó vào folder admin chỉnh lại các đường dẫn include thư viện

    -->
*/
 
// Kết nối database 
require 'core/init.php';

// Bảo trì
if ($data_web['status'] == 0) {
    require 'templates/shutdown.php';
    exit;
}
 
// Header
require 'includes/header.php';
 
// Content
require 'templates/content.php';
 
// Footer
require 'includes/footer.php';
 
?>