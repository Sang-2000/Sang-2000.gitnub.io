<?php
    #   Mục đích file:  thư viện xử lý session admin

    class session {
        #   Hàm bắt đầu session
        public function ss_start(){
            #   bắt đầu session
            session_start();
        }

        #   Hàm lưu session 
        public function ss_send($user){
            #   khai báo session và lưu lại
            $_SESSION['user']   =   $user;
        }

        #   Hàm lấy dữ liệu session
        public function ss_getData(){
            #   nếu session với khóa user tồn tại thì lấy dữ liệu trong khóa user
            if (isset($_SESSION['user']))
                $user   =   $_SESSION['user'];
            else
                $user   =   '';
            
            return $user;
        }

        #   Hàm xóa session 
        public function ss_destroy() {
            #   xóa session 
            session_destroy();
            #   hoặc    unset($__SESSION['user])
        }
    }
?>