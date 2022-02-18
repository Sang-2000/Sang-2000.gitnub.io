/*
    web
        mục đích:
            cách làm 1 web đúng
            hiểu hơn các hàm
        ý nghĩa
            cho bớt rảnh lại

    cấu trúc thư mục
    folder 'newspage'               (all)
        folder 'admin'              (aministrator web)
            folder 'bootstrap'      (library bootstrap download)
                folder 'css'        (css bootstrap)
                folder 'fonts'      (icon bootstrap)
                folder 'js'         (jsvascript bootstrap)
            folder 'classes'        (library PHP)
            folder 'core'           (central folder)
                file 'init.php'     (initialization file - database connection and file handler)
            folder 'css'            (css code)
            folder 'includes'       (connection - website templates element)
            folder 'js'             (javascript code)
            folder 'templates'      (templates website)
                file 'index.php'    (web display interface)


    2 phần chính
        user: cho người dùng để họ xem bài viết trong web
        admin: cho quản trị viên để quản lý web, bài viết, chuyên mục

    link web:   http://localhost/newspage/admin/

    cách tạo web chi tiết
        1.  Tạo DB và cấu trúc folder
            B1: Tạo database, chưa tạo table
                chọn Collation là utf8_unicode_ci
            B2: Tạo cấu trúc folder admin; các folder, file trong nó
                Nếu dựng user trước thì khi thiết kế giao diện sẽ cần phải sử dụng
                    nội dung giả để test, code sẽ rối.
                Còn xây dựng admin trước để có thể tự tạo nội dung trên CSDL 
                    rồi mới xây dựng user sau.

        2.  Viết thư viện xử lý DB admin
            B1: Tạo file DB.php trong admin/classes
            B2: Viết thư viện xử lý database trong file vừa tạo.
                -   Các biến chứa thông tin kết nối với dâtbase
                -   Biến kết nối với database
                -   Hàm kết nối         -   db_connect()
                -   Hàm ngắt kế nối     -   db_close()
                -   Hàm truy vấn        -   db_query()
                -   Hàm đếm số hàng     -   db_count_row()
                -   Hàm lấy dữ liệu     -   db_get_data()
                -   Hàm lấy ID cao nhất -   db_highest_id()
                -   Hàm charset cho db  -   db_charset()

        3.  Viết thư viện session và functions admin
            B1: Viết thư viện session
                -   Hàm bắt đầu session 
                -   Hàm khai báo session 
                -   Hàm lấy dữ liệu session 
                -   Hàm xóa session 
            B2: Viết thư viện functions admin 
                -   Hàm điều hướng trang URL

        4.  Kết nối DB và cấu trúc index.php admin
            B1: Kết nối đến database admin 
                -   require_once các thư viện php trong folder class
                -   kết nối database bằng thư viện db
                -   thiết lập đường dẫn tuyệt đối của folder admin 
                -   thiết lập múi thời gian (dùng khi insert vào database)
                -   khởi tạo session và kiểm tra người dùng truy cập website chưa bằng thư viện session
            B2: Cấu trúc file index.php admin
                -   require_once các file init, header, footer

        5.  Xây dựng header admin và footer cho admin trong admin/includes  -   đầu và cuối web
            B1: Viết html và php file header
            B2: Viết html file header

        6.  Tạo chức năng đăng nhập, đăng xuất  -   thân web
             B1: Xây dựng giao diện đăng nhập
                -   viết html giao diện trong admin/templates/signin.php
                -   viết php kiểm tra đăng nhập trong admin/index.php
            B2: Viết chức năng đăng nhập
                -   tạo table 'accounts' cùng 1 tài khoản administrator trong database 'newspage'
                -   viết ajax gửi dữ liệu 'thông tin đăng nhập' qua form đăng nhập trong admin/js
                -   script file form.js vào cuối file admin/includes/footer.php
            B3: Viết PHP xử lý đăng nhập
                -   require_once database và các thông tin chung (file init.php)
                -   kiểm tra tồn tại POST gửi từ ajax không 
                    -   lưu các giá trị từ post
                    -   xử lý các biến thông báo
                    -   kiểm tra giá trị rỗng hay không
            B4: Lấy dữ liệu tài khoản vào file init.php
                -   nếu đã đăng nhập
                    -   lấy dữ liệu tài khoản
            B5: Chức năng đăng xuất trong admin/signout.php
                -   require_once database và các thông tin chung (file init.php)
                -   xóa session
            B6: Liên kết thư viejn xử lý form 
                -   thêm file js/form.js vào cuối file includes/footer

        7.  Xây dựng sliderbar, content và phần trang admin
            B1: Rewrite url
                -   Tạo file .htaccess cùng cấp với file admin/index.php
            B2: Khỏi tạo và equire 
                -   Tạo 2 file admin/templates/slidebar.php (slidebar) và
                               admin/templates/content.php  (content)
                -   Require_once 2 file trên vào admin/index.php trong chỗ kiểm tra user
            B3: Xây dựng giao diện slidebar
                -   Tạo folder images cùng caaso với admin/index.php
                -   Mở file admin/templates/slidebar.php
                -   Viết code htm, css với bootstrap giao diện cho slidebar
                -   Viết code hiệu ứng slidebar 
                    -   Mở file admin/includes/footer.php 
                    -   Viết code PHP hiệu ứng cho slidenar ngay phía trên </body>
            B4: Xây dựng content và phân trang 
                -   Mở file admin/templates/content.php 
                -   Code nội dung phần content và phân trang

        8.  Các chức năng chuyên mục admin
            B1: Định hình và chi tiết chức năng cần xây dựng
                -   Categories: thêm, xóa, sửa, phân loại, sắp xếp, hiển thị danh sách, cấp độ
                -   ...
            B2: Tạo table Categories trong db newspage 
            B3: Phân trang chuyên mục 
                -   mở file admin/templates/categories.php 
                -   code phần trang chuyên mục 
            B4: Thêm chuyên mục 
                -   mở brower: http://localhost/newspage/admin/categories/add 
                -   mở file admin/templates/categories.php và code 
                -   chạy lại brower trên kiểm tra kết quả code 
            B5: Viết ajax gửi dữ liệu
                -   mở file admin/js/form.js 
                -   code ajax gửi dữ liệu 
                -   code gửi dữ liệu thêm chuyên mục 
            B6: Viết php xử lý dữ liệu 
                -   tạo file categories.php cùng cấp với admin/index.php 
                -   code php xử lý dữ liệu trong file categories.php 
            B7: Chạy lại brower kiểm tra 

        9.  Các chức năng chuyên mục admin (tiếp)
            B1: Hiển thị danh sách chuyên mục
                -   mở file admin/templates/categories.php và code bên dưới // Content danh sách chuyên mục
                -   mở brower tải lại trang 'chuyên mục'
            B2: Chỉnh sửa chuyên mục 
                -   viết templates chỉnh sửa
                    -   mở file admin/templates/categories 
                    -   viết code chỉnh sửa chuyên mục bên dưới // Content chỉnh sửa chuyên mục 
                    -   mở brower tải lại trang để kiểm tra tempalte chỉnh sửa vừa code
                -   viết ajax gửi dữ liệu
                    -   viết code tải 'chuyên mục cha' trong file admin/js/form.js
                    -   viết code chỉnh sửa chuyên mục trong file admin/js/form.js
                -   viết php xử lý dữ liệu
                    -   mở file admin/categories.php 
                    -   viết code php xử lý chỉnh sửa chuyên mục dưới // Tải chuyên mục cha trong chức năng chinh sửa chuyên mục
                    -   viết code php xử lý chỉnh sửa chuyên mục dưới // Chinh sửa chuyên mục
                -   mở brower lên và test thử 
            B3: Xóa chuyên mục 
                -   Xóa nhiều chuyên mục 
                    -   mở file admin/js/form.php, viết code check tât cả checkbox 
                    -   mở brower lên kiểm tra test thử 
                    -   mở file admin/js/form.php, viết code xóa nhiều chuyên mục cùng lúc 
                    -   mở file admin/categories.php, code php xử lý dữ liệu xóa nhiều chuyên mục 
                    -   mở brower, chọn  vài chuyên mục xóa thử
                -   Xóa chuyên mục chỉ định
                    -   mở file admin/js/form.php, viết code xóa 1 chuyên mục chỉ định ở bảng danh sách 
                    -   mở file admin/js/form.php, viết code xóa 1 chuyên mục chỉ định trong trang chỉnh sửa
                    -   mở file admin/categories.php, code php xử lý dữ liệu xóa 1 chuyên mục (việc xóa ở bảng và trang chình sửa dùng chung code)
                    -   mở brower, xóa thử ở bảng và trang chỉnh sửa

        10. Các chức năng của hình ảnh admin
            B1: Tạo table images trong db newspage gồm: id, url, type, size, date_upload
            B2: Tạo folder upload chứ image cũng cấp với folder apache_child_terminate
                Để ngoài folder admin vì khi ng dùng xem url sẽ thấy đg dẫn admin/upload nên rất nguy hiểm
            B3: Phân trang hình ảnh 
                -   mở file admin/templates/photos.php
                -   viết code của phần phân trang 
            B4: Upoad hình ảnh 
                -   mở brower, vào url admin/photos/add để bắt đầu
                -   Xây dựng templates 
                    -   mở file admin/template/photos.php
                    -   code html templates bên dưới // Content upload hình ảnh
                    -   chạy lại brower đẻ kiểm tra 
                -   viết ajax gửi dữ liệu 
                    -   mở file admin/js/form.js 
                    -   code phần xem ảng trước khi upload 
                    -   code nút reset form upload ảnh 
                    -   code phần upload ảnh 
                -   viết php xử lý dữ liệu 
                    -   tạo file admin/photos.php cùng cấp với file admin/index.php 
                    -   viết code xử lý upload ảnh 
                    -   mở brower, chạy thử để xem kết quả 


        11. Các chức năng của hình ảnh admin (tiếp)
            B1: Hiển thị danh sách hình ảnh 
                -   mở file admin/templates/photos.php lên và code dưới // Content danh sách hình ảnh
                -   mở brower, reload lại trang 
            B2: Xóa hình ảnh 
                -   Xóa nhiều hình cùng lúc 
                    -   viết ajax gửi dữ liệu 
                        -   mở file admin/js/form.js lên và code js
                    -   viết php xử lý dữ liệu 
                        -   mở file admin/photos.php lên và code php 
                    -   kiểm tra thử
                        -   mở brower lên, reload lại trang và xóa thử 
                -   Xóa 1 hình ảnh tùy chọn 
                    -   viết ajax gửi dữ liệu 
                        -   mở file admin/js/form.js lên và code js
                    -   viết php xử lý dữ liệu 
                        -   mở file admin/photos.php lên và code php 
                    -   kiểm tra thử
                        -   mở brower lên, reload lại trang và xóa thử 

        12. Các chức năng của bài viết admin
            B1: Khái quát các chức năng
            B2: Tạo table pots trong db newspage 
            B3: Phân trang bài viết 
                -   Phân trang
                    -   Trang hiển thị danh sách bài viết
                    -   Trang thêm bài viết
                    -   Trang chỉnh sửa bài viết
                -   code giao diện 
                    -   mở file admin/templates/posts.php lên
                    -   viết code hmtl giao diện tổng
            B4: Chức năng thêm bài viết 
                -   Xây dựng template 
                    -   mở file admin/templates/posts.php lên
                    -   code bên dưới dòng // Content thêm bài viết
                    -   chạy lại trang trên brower 
                -   viết ajax gửi dữ liệu
                    -   mở file admin/js/form.js lên
                    -   code js gửi dữ liệu thêm bài viết từ form 
                -   viết PHP xử lý dữ liệu
                    -   tạo file admin/posts.php cùng cấp với admin/index.php 
                    -   viết code php xử lý dữ liệu nhận được từ ajax gửi đến
                -   kiếm tra 
                    -   mở brower lên, chạy lại trang
                    -   thêm bài viết thử để xem nó có hoạt động 

        13. Các chức năng của bài viết admin (tiếp)

        14. Các chức năng cài đặt admin

        15. Các chức năng tài khoản admin

        16. Các chức năng tài khoản admin (tiếp)

        17. Các chức năng profile admin

        18. Các chức năng profile admin (tiếp)

        19. Xây dựng dashboard admin và fix bug

        20. Cấu trúc folder user

*/