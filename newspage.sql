-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2022 lúc 02:47 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newspage`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id_acc` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `display_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `facebook` text CHARACTER SET utf8 NOT NULL,
  `google` text CHARACTER SET utf8 NOT NULL,
  `twitter` text CHARACTER SET utf8 NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `url_avatar` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id_acc`, `username`, `password`, `display_name`, `email`, `position`, `status`, `date_created`, `facebook`, `google`, `twitter`, `phone`, `description`, `url_avatar`) VALUES
(1, 'sangdo', '43bf06d058339470380f0bb128f95701', 'Sáng Đỗ', 'sangdo2536@gmail.com', 1, 0, '2021-11-13 09:03:46', 'https://www.facebook.com/profile.php?id=100015076537036', '', '', '0985191021', 'Pro', 'upload/2021/11/20/avatar-girl-xinh-cute-486x390.jpg'),
(3, 'hoahongxanh', '78c9bdd89c11d15b43ca666402ca19e4', 'Hoa Hồng Xanh', '', 0, 0, '2021-11-20 14:50:05', '', '', '', '0', '', 'http://localhost/newspage/upload/2021/11/20/avatar_account_hoa_hong_xanh.jpg'),
(4, 'congtuocacma', '2e36435a6509fbdb0ae727c2881c4828', 'Công Tước Ác Ma', '', 0, 0, '2021-11-20 14:50:05', '', '', '', '0', '', ''),
(2, 'adminweb', 'af03798e4f9010c54d2eb6f386124f7e', 'Admin Phụ', '', 1, 0, '2021-11-20 14:50:05', '', '', '', '0', '', ''),
(5, 'xathutinhyeu', 'f262fd11f232ff28299b321d242e5d45', '', '', 0, 0, '2021-11-20 20:56:48', '', '', '', '0', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_cate` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_cate`, `label`, `url`, `type`, `sort`, `parent_id`, `date_created`) VALUES
(1, 'Game', 'game', 1, 4, 0, '2021-11-17 08:44:41'),
(2, 'Công việc', 'cong-viec', 1, 3, 0, '2021-11-17 08:50:41'),
(3, 'Kĩ năng', 'ki-nang-song', 1, 2, 0, '2021-11-17 08:51:41'),
(4, 'Lập trình', 'huong-dan', 1, 2, 0, '2021-11-17 08:54:22'),
(5, 'Anh văn', 'anh-van', 1, 3, 0, '2021-11-17 09:24:24'),
(6, 'Cosplay', 'cosplay', 2, 2, 1, '2021-11-19 18:59:01'),
(7, 'Giới thiệu', '', 2, 3, 1, '2021-11-19 19:04:49'),
(8, 'Mẹo chơi', '', 2, 3, 1, '2021-11-19 19:06:12'),
(9, 'Thực tập sinh', 'thuc-tap-sinh', 2, 2, 2, '2021-11-19 19:06:12'),
(10, 'Yêu cầu kinh nghiệm', 'yeu-cau-kinh-nghiem', 2, 2, 2, '2021-11-18 11:19:54'),
(11, 'Xử lý', 'xu-ly', 2, 2, 3, '2021-11-20 01:14:21'),
(12, 'Làm việc', 'lam-viec', 2, 2, 3, '2021-11-20 01:15:35'),
(13, 'Nói chuyện', 'noi-chuyen', 2, 3, 3, '2021-11-20 01:15:57'),
(14, 'PHP', 'php', 2, 3, 4, '2021-11-20 01:16:28'),
(15, 'MySQL', 'mysql', 2, 2, 4, '2021-11-20 01:16:49'),
(16, 'HTML &amp; CSS', 'html-css', 2, 2, 4, '2021-11-20 01:17:16'),
(17, 'Javascript', 'javascript', 2, 3, 4, '2021-11-20 01:17:41'),
(18, 'Kinh nghiệm', 'kinh-nghiem', 2, 2, 4, '2021-11-20 01:18:30'),
(19, 'Hướng đi', 'huong-di', 2, 2, 5, '2021-11-20 01:19:53'),
(20, '4 kĩ năng', '4-ki-nang', 2, 2, 5, '2021-11-20 01:20:18'),
(21, 'Liên Quân Mobile', 'lien-quan-mobile', 3, 1, 6, '2021-11-20 01:23:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id_img` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id_img`, `url`, `type`, `size`, `date_uploaded`) VALUES
(4, 'upload/2021/11/18/Anime-girl-samurai.jpg', 'jpg', 137612, '2021-11-18 21:46:25'),
(5, 'upload/2021/11/18/canh_hoa.png', 'png', 127547, '2021-11-18 21:46:25'),
(6, 'upload/2021/11/18/hinh_anh_anime_girl_cam_kiem.jpg', 'jpg', 52163, '2021-11-18 21:46:25'),
(7, 'upload/2021/11/18/desktop-wallpaper-featured.jpg', 'jpg', 44469, '2021-11-18 21:49:05'),
(8, 'upload/2021/11/18/hinh-anh-hinh-nen-heo-con-chi-bi-de-thuong-un-in-dang-yeu-nhat-2019-ngo-nghinh-8.jpg', 'jpg', 72078, '2021-11-18 21:49:05'),
(9, 'upload/2021/11/19/game-cosplay-game-lien-quan-mobile-violet-than-tien-ty-ty.jpg', 'jpg', 182471, '2021-11-19 13:33:10'),
(10, 'upload/2021/11/20/avatar_account_hoa_hong_xanh.jpg', 'jpg', 160064, '2021-11-20 15:38:27'),
(11, 'upload/2021/11/20/avatar-girl-xinh-cute-486x390.jpg', 'jpg', 14646, '2021-11-20 21:03:39'),
(12, 'upload/2021/11/20/newyear.png', 'png', 93381, '2021-11-20 21:43:49'),
(13, 'upload/2021/11/22/top_8_1_yena_huyet_nguyet.jpg', 'jpg', 317757, '2021-11-22 15:39:52'),
(14, 'upload/2021/11/22/thong_bao_bao_tri.jpg', 'jpg', 71323, '2021-11-22 16:18:34'),
(15, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-1.jpg', 'jpg', 200485, '2021-11-25 08:00:51'),
(16, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-2.jpg', 'jpg', 203110, '2021-11-25 08:00:51'),
(17, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-3.jpg', 'jpg', 182471, '2021-11-25 08:00:51'),
(18, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-4.jpg', 'jpg', 108329, '2021-11-25 08:00:51'),
(19, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-5.jpg', 'jpg', 123510, '2021-11-25 08:00:51'),
(20, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-6.jpg', 'jpg', 109692, '2021-11-25 08:00:51'),
(21, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-7.jpg', 'jpg', 114138, '2021-11-25 08:00:51'),
(22, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-8.jpg', 'jpg', 230608, '2021-11-25 08:00:51'),
(23, 'upload/2021/11/25/cosplay-violet-than-long-ty-ty-game-lien-quan-mobile-photo-9.jpg', 'jpg', 227174, '2021-11-25 08:00:51'),
(24, 'upload/2021/11/25/top_8_1_yena_huyet_nguyet.jpg', 'jpg', 317757, '2021-11-25 08:01:13'),
(25, 'upload/2021/11/25/top_8_2_lauriel_tiec_bai_bien.jpg', 'jpg', 533630, '2021-11-25 08:01:13'),
(26, 'upload/2021/11/25/top_8_3_dieu_thuyen_phu_thuy_bi_ngo.jpg', 'jpg', 97768, '2021-11-25 08:01:13'),
(27, 'upload/2021/11/25/top_8_4_airi_bich_hai_thanh_nu.jpg', 'jpg', 234915, '2021-11-25 08:01:13'),
(28, 'upload/2021/11/25/top_8_5_Qi.jpg', 'jpg', 102602, '2021-11-25 08:01:13'),
(29, 'upload/2021/11/25/top_8_6_arum_vu_khuc_long_ho.jpg', 'jpg', 268712, '2021-11-25 08:01:13'),
(30, 'upload/2021/11/25/top_8_7_violet_than_long_ty_ty.jpg', 'jpg', 40304, '2021-11-25 08:01:13'),
(31, 'upload/2021/11/25/top_8_8_yena_wave.jpg', 'jpg', 451781, '2021-11-25 08:01:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL,
  `url_thumb` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cate_1_id` int(11) NOT NULL,
  `cate_2_id` int(11) NOT NULL,
  `cate_3_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id_post`, `title`, `descr`, `url_thumb`, `slug`, `keywords`, `body`, `cate_1_id`, `cate_2_id`, `cate_3_id`, `author_id`, `status`, `view`, `date_posted`) VALUES
(1, 'Bỏng mắt trước màn cosplay Violet &quot;nuột&quot; nhất làng Liên Quân Mobile', 'Nữ coser người Đài Loan Mon Mon đã tái hiện một Violet Thần long tỷ tỷ khiến các game thủ Liên Quân phải ngẩn ngơ.', 'http://localhost/newspage/upload/2021/11/19/game-cosplay-game-lien-quan-mobile-violet-than-tien-ty-ty.jpg', 'bong-mat-truoc-man-cosplay-violet-nuot-nhat-lang-lien-quan-mobile', 'Violet Thần long tỷ tỷ, cosplay, Lien quân mobile', '&lt;p&gt;Sở hữu lượng fan cực kỳ hùng hậu, thế nên&amp;nbsp;&lt;a href=&quot;https://kenh14.vn/truoc-them-vcs-mua-dong-sbtc-bat-ngo-chia-tay-hlv-violet-vi-ly-do-suc-khoe-thay-giao-ba-co-tro-lai-bang-ghe-chi-dao-20211005003408076.chn&quot; target=&quot;_blank&quot;&gt;Violet&lt;/a&gt;&amp;nbsp;luôn được game thủ ví như &amp;quot;con cưng&amp;quot; của&amp;nbsp;&lt;a href=&quot;https://kenh14.vn/lien-quan.html&quot; target=&quot;_blank&quot;&gt;Liên Quân&lt;/a&gt;&amp;nbsp;khi có cho mình vô số skin đẹp mắt và giá trị. Hiện tại, vị tướng xạ thủ này tiếp tục ra mắt một skin đặc biệt khi kết hợp cùng &amp;quot;bản gốc&amp;quot; Vương Giả Vinh Diệu với tên gọi&amp;nbsp;Violet Thần long tỷ tỷ.&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/newspage/upload/2021/11/25/top_8_7_violet_than_long_ty_ty.jpg&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/9f7af2d5-6a7e-4b8c-b10d-8bb0ae087f0a&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/fa0c98c1-7f3b-45af-a880-0ee175a3ade7&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;Tuy nhiên vẻ đẹp của skin này không chỉ có trong game mà còn&amp;nbsp;có một phiên bản cosplay cực xịn từ&amp;nbsp;Mon Mon -&amp;nbsp;nữ coser nổi tiếng người Đài Loan. Không chỉ toát lên vẻ đẹp đầy nuột nà, phiên bản &amp;quot;thần tiên tỷ tỷ&amp;quot; này cũng thừa độ sexy nhưng không hề dung tục.&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/64ffa118-84d3-4196-9a5a-946fae1bf760&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/5b317cfd-7521-4f91-ba96-0ca61753956c&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;Là skin hợp tác có 2 phiên bản là Violet của Liên Quân Mobile và Tôn Thượng Hương của Vương Giả Vinh Diệu, thế nên bộ ảnh cosplay này cũng mang chủ đề thế giới song song. Giờ thì cùng chiêm ngưỡng bộ ảnh cosplay cực ấn tượng, thu hút mọi ánh nhìn này nhé!&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/433b770a-c574-480b-b2be-3c14d671e8b3&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/c1e2a7ba-0b4e-4df5-b649-dcf8dee29dd1&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/900f09c2-c2d9-4e9c-8969-6ea8c2200be4&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/d2887b3c-eb87-4759-a1ac-b68774a91569&quot; width=&quot;640&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/a77a8698-596e-43e5-9919-14ba0041aacd&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/2066771b-1647-4ce3-913d-deabdad62b33&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/113dad15-cdfb-429f-a217-119c6059c359&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/932ab8ae-7f2f-4bb2-af16-533ed7252ff1&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;Nguồn hình ảnh: Internet&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;', 1, 6, 21, 1, 1, 0, '2021-11-20 10:05:10'),
(2, 'Dàn coser hóa thân thành các nữ tướng “vừa ngọt vừa nóng”', 'Với những bộ cosplay tướng nữ Liên Quân trong bài viết này, có thể bạn sẽ lầm tưởng rằng nhân vật trong game đã bước ra đời thực.', 'http://localhost/newspage/upload/2021/11/25/top_8_2_lauriel_tiec_bai_bien.jpg', 'dan-cosplay-hoa-than-thanh-cacnu-tuong-vua-ngot-vua-nong', 'Liên Quân Mobile, coser, cosplay, nữ tướng', '&lt;p&gt;Do là một tựa game phổ biến tại khu vực các nước châu Á, các bộ cosplay&amp;nbsp;&lt;a href=&quot;https://motgame.vn/top-tuong-nu-dep-nhat-lien-quan.game&quot; target=&quot;_blank&quot;&gt;tướng nữ Liên Quân&lt;/a&gt;&amp;nbsp;đẹp thường đều do các nữ cosplayer người châu Á thực hiện. Đây là một điều tốt bởi dù nhiều nhân vật trong game mang những cái tên phương Tây, nét đẹp của họ lại mang đậm chất Á Đông và phù hợp với khuôn mặt mượt mà, ít góc cạnh của người phương Đông.&lt;/p&gt;\n\n&lt;p&gt;Trong bài viết này, chúng ta hãy cùng ngắm qua một loạt những bức hình chụp những bộ cosplay tướng nữ Liên Quân cực đẹp đến từ nhiều cosplayer trong khu vực và trên thế giới nhé.&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/4a2b0fac-9996-4592-bded-6364512cea5e&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, 6, 21, 1, 1, 0, '2021-11-20 10:05:29'),
(3, 'Những bộ cosplay tướng nữ Liên Quân đẹp nhất', '', '', 'Nhung-bo-cosplay-tuong-nu-lien-quan-dep-nhat', '', '', 0, 0, 0, 1, 0, 0, '2021-11-20 10:05:36'),
(10, 'Top 8 cosplay đẹp nhất Liên Quân Mobile', 'Cùng “bổ mắt” chiêm ngưỡng những màn cosplay toàn gái xinh này.', 'http://localhost/newspage/upload/2021/11/22/top_8_1_yena_huyet_nguyet.jpg', 'Top-8-cosplay-dep-nhat-lien-quan-mobile', 'top, cosplay, Lien quân mobile', '&lt;p&gt;&lt;strong&gt;Đây là top 8 màn cosplay các tướng nữ Liên Quân mà mình cảm thấy đẹp nhất trong&amp;nbsp;&lt;a href=&quot;https://vietgiaitri.com/bo-suu-tap-key/&quot;&gt;bộ sưu tập&lt;/a&gt;&amp;nbsp;cosplay của Liên Quân Mobile. Mình không có sắp xếp thứ tự mà ché xếp ngãu nhiên thôi.&lt;/strong&gt;&lt;/p&gt;\n\n&lt;h3&gt;&lt;em&gt;&lt;strong&gt;Yena Chiến Binh Nguyệt Tộc&lt;/strong&gt;&lt;/em&gt;&lt;/h3&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/newspage/upload/2021/11/25/top_8_1_yena_huyet_nguyet.jpg&quot; width=&quot;620&quot; /&gt;\n&lt;h3&gt;&amp;nbsp;&lt;/h3&gt;\n\n&lt;h3&gt;&lt;em&gt;&lt;strong&gt;Airi Bich hải Thánh Nữ&lt;/strong&gt;&lt;/em&gt;&lt;/h3&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/newspage/upload/2021/11/25/top_8_4_airi_bich_hai_thanh_nu.jpg&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/d5d2a959-14b8-4ca6-a87c-cb822e9cd960http://localhost/newspage/upload/2021/11/25/top_8_1_yena_huyet_nguyet.jpg&quot; width=&quot;620&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/ec326226-4aad-4b8e-a145-635b04330024&quot; width=&quot;2048&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/1569c82e-cd27-4068-b410-de080f301565&quot; width=&quot;1365&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/b0eef8bd-1526-4343-baf3-51cf02ce0dc5&quot; width=&quot;700&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/028abd1a-55a3-4522-818c-4b1bdd5e121b&quot; width=&quot;800&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/74628e8f-2aa9-45af-b1ff-22568e1e4db8&quot; width=&quot;493&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/1cbcdd1c-7b05-425f-b4c1-970e546ae644&quot; width=&quot;1365&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/69802184-157c-4229-aae6-4d43bbf2e967&quot; width=&quot;400&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/65745aaf-b263-4fcb-91d7-4998239920c4&quot; width=&quot;1408&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/a207e35c-2be2-46fa-a30b-8758512800c4&quot; width=&quot;2048&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/21e7ec47-b737-4a2d-8522-e05465d1cb7e&quot; width=&quot;1365&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n\n&lt;p&gt;Nguồn ảnh: Internet&lt;/p&gt;\n\n&lt;figure class=&quot;easyimage easyimage-full&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;blob:http://localhost/d6c3f975-8d7b-47b2-969c-b075d0a1e0b0&quot; width=&quot;700&quot; /&gt;\n&lt;figcaption&gt;&lt;/figcaption&gt;\n&lt;/figure&gt;\n&lt;/figure&gt;', 1, 6, 21, 1, 1, 0, '2021-11-22 14:57:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website`
--

CREATE TABLE `website` (
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `website`
--

INSERT INTO `website` (`title`, `descr`, `keywords`, `status`) VALUES
('Newspage', '', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_acc`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
