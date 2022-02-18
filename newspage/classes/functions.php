<?php
    #   mục đích file:  chuyển hướng trang web (trang này sang tràn kháv) khi được gọi
    
    class redirect {
        #   hàm điều hướng trang (thay đổi địa chỉ trang web)
        public function __construct($url = null)
        {
            if ($url) {
                echo '<script>location.href="'. $url . '";</script>';
            }
        }

        /*
            Hàm __construct(), cho phép người dùng khởi tạo các thuộc tính 
                của đối tượng khi tạo đối tượng.
            Hàm __construct() giúp ta không cần sử dụng hàm setter().
                set là thiết lập thuộc tính cho đối tượng
                setter() là hàm thiết lập thuộc tính cho đối tượng
            Nếu tạo hàm __construct(), PHP tự động gọi hàm này khi tạo 
                đối tượng từ một lớp.
            __construct() được tạo bằng 2 dấu gạch dưới ở phía trước.

            
            location.href=""; dùng để lấy địa chỉ trang web (URL)
        */
    }
?>