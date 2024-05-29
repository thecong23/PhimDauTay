-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 29, 2024 lúc 11:01 AM
-- Phiên bản máy phục vụ: 8.2.0
-- Phiên bản PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `STT` float NOT NULL,
  `Tenphim` varchar(255) DEFAULT NULL,
  `Movie` varchar(255) DEFAULT NULL,
  `Theloai` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Quocgia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Namsx` float DEFAULT NULL,
  `poster` varchar(255) NOT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`STT`, `Tenphim`, `Movie`, `Theloai`, `Quocgia`, `Namsx`, `poster`) VALUES
(1, 'Vùng đất linh hồn', 'Spirited Away', 'Hoạt hình, giả tưởng, phiêu lưu', 'Nhật Bản', 2001, 'https://i.pinimg.com/originals/4c/b3/c7/4cb3c798ff218e03962d467f7b34982d.jpg'),
(2, 'Vua sư tử', 'Lion King', 'Hoạt hình, âm nhạc, chính kịch', 'Mỹ', 1994, 'https://upload.wikimedia.org/wikipedia/vi/3/3d/The_Lion_King_poster.jpg'),
(3, 'Câu chuyện đồ chơi', 'Toy Story', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 1995, 'https://upload.wikimedia.org/wikipedia/vi/thumb/1/13/Toy_Story.jpg/220px-Toy_Story.jpg'),
(4, 'Câu chuyện đồ chơi 3', 'Toy Story 3', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 2010, 'https://upload.wikimedia.org/wikipedia/vi/5/57/Toy_Story_3_poster2010.jpg'),
(5, 'Vút bay', 'Up', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 2009, 'https://image.tmdb.org/t/p/original/kiFDcDjIr3Chay6flA5KKrstPub.jpg'),
(6, 'Titanic', 'Titanic', 'Lãng mạn, hài, thảm họa', 'Mỹ', 1997, 'https://m.media-amazon.com/images/I/71V3V0FE1gS._AC_UF894,1000_QL80_.jpg'),
(7, 'Nhật ký tình yêu', 'The notebook ', 'Lãng mạn, chính trị ', 'Mỹ', 2004, 'https://upload.wikimedia.org/wikipedia/vi/f/fc/Nh%E1%BA%ADt_k%C3%BD_t%C3%ACnh_y%C3%AAu_poster.jpg'),
(8, 'Cô dâu công chúa', 'The princess Bride', 'Lãng mạn, hài, phiêu lưu', 'Mỹ', 1987, 'https://image.tmdb.org/t/p/original/vpmbPASm5BMBt1lrhpJrPFQtulA.jpg'),
(9, 'Khi Harry gặp Sally', 'When Harry Met Sally', 'Lãng mạn, hài ', 'Mỹ', 1989, 'https://afamilycdn.com/Images/Uploaded/Share/2009/07/14/8351.jpg'),
(10, 'Annie Hall', 'Annie Hall', 'Lãng mạn, hài ', 'Mỹ', 1977, 'https://m.media-amazon.com/images/I/51hCXDW6NcL._AC_UF894,1000_QL80_.jpg'),
(11, 'High&Low: Kẻ cặn bã X', 'High&Low: The Worst X Cross', 'Hành động', 'Nhật bản', 2022, 'https://lamassuvn.com/storage/images/high-and-low-ke-can-ba-x/high-and-low-ke-can-ba-x-thumb.jpg'),
(12, 'Loki: Phần 2', 'Loki: Season 2', 'Hành động', 'Mỹ', 2023, 'https://bloganchoi.com/wp-content/uploads/2023/08/loki-season-2.jpg'),
(13, 'Quý Công Tử', 'The Childe', 'Hành động', 'Hàn Quốc', 2023, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_1__3_2.jpg'),
(14, 'Resident Evil: Đảo tử thần', 'Resident Evil: Death Island', 'Hành động', 'Mỹ', 2023, 'https://ss-images.saostar.vn/wp700/2023/7/3/pc/1688369990757/saostar-fzm0nh2j4pmo29kj.jpg'),
(15, 'Chó săn công lý', 'Bloodhounds', 'Hành động', 'Hàn Quốc', 2023, 'https://bazaarvietnam.vn/wp-content/uploads/2023/06/harper-bazaar-review-phim-cho-san-cong-ly-bloodhounds-1-e1686585983670.jpg'),
(16, 'Đào, Phở và Piano', 'Đao, Pho and Piano', 'Chiến tranh', 'Việt Nam', 2023, 'https://www.elle.vn/wp-content/uploads/2024/02/28/573479/poster-phim-dao-pho-va-piano.jpg'),
(17, 'Mùi cỏ cháy', 'Mui co chay', 'Chiến tranh', 'Việt Nam', 2012, 'https://d1j8r0kxyu9tj8.cloudfront.net/images/1633862555yEKJ0frTc3P7ap2.jpg'),
(18, 'Lính bắn tỉa Siberian', 'Siberian Sniper', 'Chiến tranh', 'Siberia', 2021, 'https://image.tmdb.org/t/p/original/mm7HDu4fHXCwdFVCkb089DiMCxr.jpg'),
(19, 'Khế ước', 'Guy Ritchie’s The Covenant', 'Chiến tranh', 'Mỹ', 2023, 'https://i.imgur.com//hdcPA2r.jpg'),
(20, 'Vô danh', 'Hidden Blade', 'Chiến tranh', 'Hàn Quốc', 2023, 'https://bazaarvietnam.vn/wp-content/uploads/2023/02/HBVN-vuong-nhat-bac-phim-vo-danh-2.jpg'),
(21, 'Hố đen tử thần', ' Interstellar', 'Viễn tưởng, khoa học', 'Âu Mỹ, Anh, Canada', 2014, 'https://upload.wikimedia.org/wikipedia/vi/4/46/Interstellar_poster.jpg'),
(22, 'Liên minh Công lý: phiên bản của Zack Snyder', 'Zack Snyder*s Justice League ', 'Phim hành động, phim viễn tưởng, phim chiếu rạp', 'Âu Mỹ', 2021, 'https://upload.wikimedia.org/wikipedia/vi/5/54/Justice_League_Poster.jpg'),
(23, 'Siêu đại chiến', 'Pacific Rim', 'Quái vật, khoa học viễn tưởng', 'Mỹ', 2013, 'https://upload.wikimedia.org/wikipedia/vi/f/f3/Pacific_Rim_FilmPoster.jpeg'),
(24, 'Con Tàu Chiến Thắng', 'Space Sweepers', 'Khoa học viễn tưởng, chính kịch', 'Hàn Quốc', 2021, 'https://upload.wikimedia.org/wikipedia/vi/9/97/Con_t%C3%A0u_Chi%E1%BA%BFn_Th%E1%BA%AFng_poster.jpg'),
(25, 'Giải cứu Guy', 'Free Guy', 'Khoa học viễn tưởng, Hài Hước, Hành Động', 'Âu Mỹ', 2021, 'https://upload.wikimedia.org/wikipedia/vi/1/1c/Free_Guy_2021_Poster.jpg'),
(26, 'Loki', 'Loki', 'Khoa học viễn tưởng, Hành động ', 'Mỹ', 2021, 'https://cdn.europosters.eu/image/1300/posters/marvel-loki-i127940.jpg'),
(27, 'Ma trận 4', 'The Matrix 4', 'Khoa học viễn tưởng, Hành động ', 'Mỹ', 2021, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/p/o/poster_matrix_4_1_.jpg'),
(28, 'Xứ Cát', 'Dune', 'Khoa học viễn tưởng, Hành động ', 'Canada, Hungary, Anh Quốc và Mỹ', 2021, 'https://images2.thanhnien.vn/528068263637045248/2023/5/4/dune-16831631989871759276130.jpg'),
(29, 'Người về từ sao hoả', 'The Martian', 'Khoa học viễn tưởng, Vũ Trụ', 'Mỹ', 2015, 'https://upload.wikimedia.org/wikipedia/vi/c/cd/The_Martian_film_poster.jpg'),
(30, 'Vùng đất câm lặng', 'A quiet place', 'Khoa học viễn tưởng, Kinh dị, Giật gân', 'Âu Mỹ', 2018, 'https://upload.wikimedia.org/wikipedia/vi/a/a7/V%C3%B9ng_%C4%91%E1%BA%A5t_c%C3%A2m_l%E1%BA%B7ng_Ph%E1%BA%A7n_II_poster.jpg'),
(31, 'Quỷ ám', 'The Exorcist ', 'Kinh dị, tâm lý', 'Mỹ', 1973, 'https://image.tmdb.org/t/p/original/919KNaZ7aIMHOjMHpKGiwl6H59P.jpg'),
(32, 'The Shining ', 'The Shining ', 'Kinh dị, tâm lý', 'Mỹ', 1980, 'https://www.allaboutmovies.com.au/media/k2/items/cache/7e2990f9653b9a22815f8327e1d23dd4_XL.jpg'),
(33, 'Di truyền', 'Hereditary ', 'Kinh dị, tâm lý', 'Mỹ', 2018, 'https://i.ebayimg.com/images/g/JRkAAOSwai9kQJIc/s-l1600.jpg'),
(34, 'The Audition ', 'The Audition ', 'Kinh dị, tâm lý', 'Nhật Bản', 2019, 'https://m.media-amazon.com/images/I/516aas783cL._AC_UF1000,1000_QL80_.jpg'),
(35, 'Vòng tròn ác nghiệt', 'Ringu', 'Kinh dị, siêu nhiên', 'Nhật Bản', 2018, 'https://i.pinimg.com/474x/ba/b1/12/bab1125fff6ce729434def0d7ecd6b01.jpg'),
(36, 'Ẩn Danh ', 'Search Out', 'Tâm lý, Hình sự', 'Hàn Quốc', 2020, 'https://nguoinoitiengexpress.vn/wp-content/uploads/2023/07/KE-AN-DANH-TEASER-POSTER-KT-FACEBOOK-KC-25082023-1200x800.jpg'),
(37, 'Phá Án ', 'Pha An', 'Hình sự, Hành động', 'Việt Nam', 2023, 'https://cdn.24h.com.vn/upload/4-2019/images/2019-12-13/1576255957-70-web-drama-de-tai-pha-an---tam-ly-hinh-su-hua-hen-gay-bao-mang-poster-gmsn-1576122733-width660height891.jpg'),
(38, 'Kẻ săn suy nghĩ', 'Mindhunter ', 'Tâm lý, Hình sự', 'Mỹ', 2017, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a_1_mindhunter-k_s_n_suy_ngh_.jpg'),
(39, 'Thám tử Sherlock Holmes', 'Sherlock Holmes', 'Tâm lý, Hình sự', 'Anh', 2010, 'https://upload.wikimedia.org/wikipedia/vi/8/8a/Sherlock_Holmes_2_Poster.jpg'),
(40, 'Phi vụ triệu đô', 'La Casa de Papel ', 'Hình sự, Hành động', 'Tây Ban Nha', 2017, 'https://dep.com.vn/wp-content/uploads/2021/11/unnamed-1.jpg'),
(41, 'Oppenheimer', 'Oppenheimer', 'Tiểu sử, Tâm lý, Giật gân, Chính kịch', 'Anh, Mỹ', 2023, 'https://www.elle.vn/wp-content/uploads/2024/03/11/575680/poster-oppenheimer-scaled.jpg'),
(42, 'Thanh Xuân 18×2: Lữ Trình Hướng Về Em', NULL, 'Lãng mạn, Tình cảm', 'Nhật Bản, Đài Loan', 2024, 'https://upload.wikimedia.org/wikipedia/vi/thumb/b/bc/Thanh_xu%C3%A2n_18x2.jpg/220px-Thanh_xu%C3%A2n_18x2.jpg'),
(43, 'Những mảnh vẽ cảm xúc 2', 'Inside Out 2', 'Hoạt hình, Gia đình, Tâm lý', 'Mỹ', 2024, 'https://image.tmdb.org/t/p/original/uhZzVFgWXlFGEHRSsehze1av2dj.jpg'),
(44, 'Kung Fu Panda 4', 'Kung Fu Panda 4', 'Hoạt hình, Hành động, Hài hước', 'Mỹ', 2024, 'https://upload.wikimedia.org/wikipedia/vi/7/7f/Kung_Fu_Panda_4_poster.jpg'),
(45, 'Godzilla x Kong: Đế chế mới', 'Godzilla x Kong: The New Empire', 'Hành động, Khoa học viễn tưởng, Quái vật', 'Mỹ', 2024, 'https://media.themoviedb.org/t/p/w500/ntuE9YvFmFcaRKj80QUPAawiT7X.jpg'),
(46, 'Người Nhện: Du hành vũ trụ nhện', 'Spider-Man: Across the Spider-Verse', 'Phim hoạt hình, Siêu anh hùng, Hành động', 'Mỹ', 2023, 'https://images2.thanhnien.vn/528068263637045248/2023/6/1/spider-man-across-the-spider-verse-poster-16850724641101103572976-168564586504456671684.jpg'),
(47, 'Quá nhanh quá nguy hiểm 10', 'Fast X', 'Hành động, Phiêu lưu', 'Mỹ', 2024, 'https://upload.wikimedia.org/wikipedia/vi/2/22/Fast_X_VN_poster.jpg'),
(48, 'Kong: Đảo Đầu lâu', 'Kong: Skull Island', 'Hành động, Phiêu lưu, Khoa học viễn tưởng', 'Mỹ', 2017, 'https://image.tmdb.org/t/p/original/iGMzUdTwnarnMGG5CPpwBLuzKGj.jpg'),
(49, 'Chúa tể Godzilla: Đế vương bất tử', 'Godzilla: King of the Monsters', 'Hành động, Khoa học viễn tưởng', 'Mỹ', 2019, 'https://upload.wikimedia.org/wikipedia/vi/f/f1/Chua_te_Godzilla_bia_poster.jpg'),
(50, 'Avengers: Hồi kết', 'Avengers 4: Endgame', 'Hành động, Siêu anh hùng', 'Mỹ', 2019, 'https://upload.wikimedia.org/wikipedia/vi/2/2d/Avengers_Endgame_bia_teaser.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

DROP TABLE IF EXISTS `phim`;
CREATE TABLE IF NOT EXISTS `phim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `danh_gia` int DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `chat_luong` varchar(255) DEFAULT NULL,
  `ngon_ngu` varchar(255) DEFAULT NULL,
  `thoi_luong` int DEFAULT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  `luot_xem` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `danh_gia`, `trang_thai`, `chat_luong`, `ngon_ngu`, `thoi_luong`, `ngay_cap_nhat`, `luot_xem`) VALUES
(1, 4, 'Đang chiếu', 'Full HD', 'Tiếng Việt', 120, '2024-05-25 00:00:00', 1000),
(42, 4, 'Đang chiếu', 'Full HD', 'Tiếng Việt', 120, '2024-05-25 00:00:00', 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
