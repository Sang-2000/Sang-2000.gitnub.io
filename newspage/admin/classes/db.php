<?php
    #   Mục đich file:  Thư viện xử lý database admin

    class DB{
        #   Các biến chứa thông tin kết nối đến db
        private $db_hostname    =   'localhost',
                $db_username    =   'root',
                $db_password    =   '',
                $db_dbname      =   'newspage';

        # biến kết nối đến db
        public $connect     =   null;
        
        #   hàm kết nối
        public function db_connect(){
            $this->connect  =   mysqli_connect($this->db_hostname, $this->db_username, $this->db_password, $this->db_dbname,);
        }

        #   hàm ngắt kết nối
        public function db_close(){
            if ($this->connect)
                mysqli_close($this->connect);
        }

        #   hàm truy vấn
        public function db_query($sql = null){
            if ($this->connect){
                #   thực thi truy vấn sql
                mysqli_query($this->connect, $sql);

                #   mục đích: thực thi câu sql
            }
        }

        #   hàm đếm số hàng
        public function db_num_rows($sql = null){
            if ($this->connect){
                $query  =   mysqli_query($this->connect, $sql);

                if ($query){
                    #   đếm số hàng trong table của cb
                    $row    =   mysqli_num_rows($query);
                    return $row;
                }
            }
        }

        #   hàm lấy dữ liệu
        public function db_fetch_assoc($sql = null, $type){
            if ($this->connect){
                $query  =   mysqli_query($this->connect, $sql);

                if ($query){
                    if ($type == 0){
                        #   lấy nhiều hàng dữ liệu gán vào mảng
                        while ($row = mysqli_fetch_assoc($query)){
                            $data[] = $row;
                        }
                        return $data;
                    }
                    else if ($type == 1){
                        #   lấy 1 hàng dữ liệu gán vào biến
                        $data   =   mysqli_fetch_assoc($query);
                        return $data;
                    }
                }
            }
        }

        #   hàm lấy ID cuối cùng
        public function db_insert_id(){
            if ($this->connect){
                #   lấy id cuối cùng (id được insert "Auto Increment" gần nhất)
                $last_id =   mysqli_insert_id($this->connect);

                if ($last_id == '0')
                    $last_id    =   '1';
                else
                    $last_id    =   $last_id;

                /*  
                        điều kiện vào           quá trình gán          trả về
                        $last_id == '0'     ->  $last_id == '1'     ->  id = 1
            insert 1    $last_id == '1'     ->  $last_id == '1'     ->  id = 1  ->  insert ok
            insert 2    $last_id == '1'     ->  $last_id == '1'     ->  id = 1  ->  insert lỗi
                ->  phải chia TH khi inset mới chăng

                Hoặc mk hiểu sau mục đích:
                    Không phải dùng return để insert record tiếp theo
                    Mà chỉ return ra thôi, vậy return mục đích gì

                    Auto Increment khi code nó k hiểu để tự tăng đc đâu.
                    Càn phải có biến nào đó tự tăng.
                    Và hàm này đáp ứng mục đich đó. 
                    Lấy id của insert cuối cùng ra dể insert mới với id tăng 1.
                    
                    Nếu vậy thì k có id = 1 à. Khi $last_id == '0' thì gán $last_id == '1',
                    rồi trả về 1. lấy 1 này tăng lên 1 thành 2.
                    Còn nếu lấy dùng luôn thì cái trả về bị trùng id khi insert lần tiếp. 

                    ??? 
                    Để mấy bài sau xem inset thế nào
                */

                return $last_id;
            }
        }

        #   hàm cấu hình charset cho db
        public function db_set_char($uni){
            if ($this->connect){
                #   thiết lập bảng mã kí tự mặc định khi gửi dữ liệu từ form đến database server.
                mysqli_set_charset($this->connect, $uni);

                #   chưa hiểu đẻ làm gì
            }
        }

    }
?>