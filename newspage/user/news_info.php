
    /*
        Folder newspape là folder project của mình.

        Folder admin là folder phần admin của ứng dụng, 
            folder này sẽ chứa tất cả các mục liên quan đến phần quản trị.

        Folder admin/bootstrap là thư viện Bootstrap, download về rồi add vào.

            Folder admin/bootstrap/css là phần CSS của thư viện Bootstrap.

            Folder admin/bootstrap/fonts là phần icon của thư viện Bootstrap.

            Folder admin/bootstrap/js là phần Javascript của thư viện Bootstrap.

            Folder admin/classes là folder chứa các thư viện PHP xử lý, mình sẽ viết nó ở các bài sau.

        Folder admin/core là folder trung tâm của phần admin.
            File admin/core/init.php là file trung gian kết nối database với các file xử lý 
                để tương tác với CSDL, ngoài ra nó sẽ chứa các thông tin chung của website.
        
        Folder admin/css là folder style cho giao diện admin, cái này cũng thực sự không cần thiết, 
            chỉ trừ các trường hợp muốn biển thị một số giao diện nào đó trong thư viện Bootstrap 
            thì mới cần đến folder này.
        
        Folder admin/includes là folder chứa các file include với các trang giao diện.
            File admin/includes/header.php là file chứa nội dung đầu tiên của mỗi trang giao diện 
                như title, các thẻ meta, menu, kết nối với các thư viện CSS, font ...

            File admin/includes/footer.php là file chứa nội dung cuối cùng của mỗi trang giao diện như 
                các popup thông báo, kết nối các thư viện JS, ...
        
        Folder admin/js là folder JS chứa các file JS
            File admin/js/jquery.form.min.js là thư viện Form jQuery 
                (có thể download trên Google).

            File admin/js/jquery.min.js là thư viện jQuery 
            (có thể download trên Google).
        
        Ngoài ra sẽ còn các file JS để xử lý nữa, chúng ta sẽ viết chúng vào các bài sau.
        
        Folder admin/templates là folder chứa các file cắt HTML của mỗi phần chức năng, để code trong file PHP thoáng và dễ nhìn hơn, chúng ta sẽ viết chúng vào các bài sau.
            File index.php là file trang chủ của phần admin ứng dụng.
    */
