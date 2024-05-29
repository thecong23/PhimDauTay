<?php include('config/connect.php') ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/layout.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <title>Phim Dau Tay</title>
    </head>
    <body>
        <div id="menu">
            <div class="mLeft">
                <h1><img src="img/Logo.jpg" alt="Logo"/></h1>
            </div>
            <label for="search-input" class="searchBox">
                <input type="text" placeholder="Search here..." id="search-input"/>
                <button class="searchButton">
                    <i class="fas fa-search" id="searchIcon"></i>
                </button>
            </label>
            <div class="mRight">
                <ul>
                    <li class=""><a href="#">Phim lẻ</a></li>
                    <li><a href="#">Phim bộ</a></li>
                    <li><a href="#">Thể loại</a>
                        <ul class="mType">
                            <li>
                                <div class="subMenu">
                                    <ul>
                                        <li><a href="#">Phim kinh dị</a></li>
                                        <li><a href="#">Phim hành động</a></li>
                                        <li><a href="#">Phim hoạt hình</a></li>
                                        <li><a href="#">Phim hài</a></li>
                                        <li><a href="#">Phim lãng mạn</a></li> 
                                        <li><a href="#">Phim cổ trang</a></li>
                                        <li><a href="#">Phim gia đình</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="subMenu">
                                    <ul>
                                        <li><a href="#">Phim chiến trang</a></li>
                                        <li><a href="#">Phim chính kịch</a></li>
                                        <li><a href="#">Phim viễn tưởng</a></li>
                                        <li><a href="#">Phim tâm lý</a></li>
                                        <li><a href="#">Phim hình sự</a></li>
                                        <li><a href="#">Phim phiêu lưu</a></li>
                                        <li><a href="#">Phim khoa học</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Đăng nhập</a></li>
                    <li><a href="#">Mua gói</a></li>
                </ul>
            </div>
        </div>

        <div id="content">
            <h3>PHIM NỔI BẬT</h3>
            <div class="tphim1">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia = 'Hàn Quốc' LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                        }
                ?>
            </div>
                <h3>PHIM LẺ MỚI CẬP NHẬT</h3>
            <div class="tphim2">
                <?php
                    $sql = "SELECT * FROM content WHERE Theloai='Lãng mạn, hài' LIMIT 5";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                        }
                ?>
            </div>
            <h3>PHIM BỘ MỚI CẬP NHẬT</h3>
            <div class="tphim3">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia='Việt Nam' LIMIT 5";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                            echo "</ul>";
                        }
                ?>
            </div>
            <h3>PHIM LẺ MỚI CẬP NHẬT</h3>
            <div class="tphim4">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia='Hàn Quốc' LIMIT 5";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                        }
                ?>
            </div>

            <h3>PHIM CHIẾU RẠP</h3>
            <div class="tphim5">
                <?php
                    $sql = "SELECT * FROM content WHERE Namsx= 2023 LIMIT 4";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                        }
                ?>
            </div>
        </div>  
        <div id="sidebar">
            <h3>PHIM HOT</h3>
            <?php
                    $sql = "SELECT * FROM content LIMIT 11";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='#'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                        }
                ?>
        </div>

        <div id="footer">
            <div class="lFooter">
                <p><img src="img/Logo.jpg" alt="Logo"></p>
                <p>PhimDauTay - Nơi giải trí phù hợp cho mọi lứa tuổi </p>
                <p>(c) PhimDauTay</p>
            </div>
            <div class="rFooter">
                <div class="rFooter1">
                    <ul>
                        <li>Phim mới</li>
                        <li><a href="#">Phim hoạt hình</a></li>
                        <li><a href="#">Phim chiếu rạp</a></li>
                        <li><a href="#">Phim hình sự</a></li>
                        <li><a href="#">Phim kinh dị</a></li>
                    </ul>
                </div>
                <div class="rFooter2">
                    <ul>
                        <li>Phim hay</li>
                        <li><a href="#">Phim Âu Mỹ</a></li>
                        <li><a href="#">Phim Hàn Quốc</a></li>
                        <li><a href="#">Phim Nhật Bản</a></li>
                        <li><a href="#">Phim Thái Lan</a></li>
                    </ul>
                </div>
                <div class="rFooter3">
                    <ul>
                        <li>Thông tin</li>
                        <li><a href="#">Giới thiệu</a></li>
                        <li><a href="#">Liên hệ với chúng tôi</a></li>
                        <li><a href="#">Điều khoản sử dụng</a></li>
                        <li><a href="#">Chính sách riêng tư</a></li>
                    </ul>
                </div>
                <div class="rFooter4">
                    <h4>follow us</h4>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </body>
</html>