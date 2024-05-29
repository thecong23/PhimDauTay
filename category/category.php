<?php include('../layout/header.php') ?>
<?php include('../layout/menu.php') ?>

        <div id="theoyc">
            <li><a href="">Theo yêu cầu</a></li>
        </div>   
        <div id="trangchu">
            <li><a href="?xem=tatca">+ TRANG CHỦ</a></li>              
    <div class="content">
        <div class="lcontent">
          <ul>
            <li><h4><button>SẮP XẾP THEO</button></h4></li>
          </ul>
          <ul>
            <li><a href="?xem=moinhat">Mới Nhất</a></li>
            <li><a href="?xem=cunhat">Cũ Nhất</a></li>
            <li><a href="?xem=az">A-Z</a></li>
            <li><a href="?xem=za">Z-A</a></li>                    
            <li><a href="?xem=random">Random</a></li>
          </ul>
          <ul>
            <li><h4><button>THỂ LOẠI</button></h4></li>
          </ul>
          <ul>
            <li><a href="?xem=hanhdong">Phim Hành động</a></li>
            <li><a href="?xem=hoathinh">Phim Hoạt Hình</a></li>
            <li><a href="?xem=giadinh">Phim Gia Đình</a></li>
            <li><a href="?xem=phieuluu">Phim Phiêu Lưu</a></li>  
            <li><a href="?xem=hai">Phim Hài</a></li>
         </ul>
        </div>
    </div>
    <div id="recommend">
    <?php
        // Hàm hiển thị phim với phân trang
        function showMoviesWithPagination($sql, $limit = 12, $currentPage = 1) {
            global $conn;

            // Tính tổng số phim
            $resultTotal = $conn->query($sql);
            $totalMovies = $resultTotal->num_rows;
            $totalPages = ceil($totalMovies / $limit);

            // Tính offset
            $offset = ($currentPage - 1) * $limit;
            $sql .= " LIMIT $limit OFFSET $offset";

            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='movie-item'>";
                    echo "<img src='" . $row['poster'] . "' alt='" . $row['Tenphim'] . "'>";
                    echo "<h5>" . $row['Movie'] . " </h5> <br><h3>(" . $row['Tenphim'] . ")</h3>";
                    echo "</div>";
                }

                // Hiển thị phân trang
                echo "<div class='pagination'>";
                for ($i = 1; $i <= $totalPages; $i++) {
                    echo "<a href='?xem={$_GET['xem']}&page=$i'>$i</a>";
                }
                echo "</div>";
            } else {
                echo "Không tìm thấy phim nào.";
            }
        }

        // Lấy trang hiện tại
        $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;

        // Xử lý hiển thị phim
        if (isset($_GET['xem'])) {
            $temp = $_GET['xem'];
        } else {
            $temp = '';
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content", 12, $currentPage);
        }

    switch ($temp) {
        case 'tatca':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content", 12, $currentPage);
            break;
        case 'moinhat':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content ORDER BY Namsx DESC", 12, $currentPage);
            break;
        case 'cunhat':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content ORDER BY Namsx ASC", 12, $currentPage);
            break;
        case 'az':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster, Theloai FROM Content ORDER BY Theloai ASC", 12, $currentPage);
            break;
        case 'za':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster, Theloai FROM Content ORDER BY Theloai DESC", 12, $currentPage);
            break;
        case 'random':
            showMoviesWithPagination("SELECT * FROM Content ORDER BY RAND()", 12, $currentPage);
            break;
        case 'hanhdong':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content WHERE Theloai LIKE '%Hành động%' ORDER BY Tenphim ASC", 12, $currentPage);
            break;
        case 'hoathinh':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content WHERE Theloai LIKE '%Hoạt hình%' ORDER BY Tenphim ASC", 12, $currentPage);
            break;
        case 'giadinh':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content WHERE Theloai LIKE '%Lãng mạn%' ORDER BY Tenphim ASC", 12, $currentPage);
            break;
        case 'phieuluu':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content WHERE Theloai LIKE '%Khoa học viễn tưởng%' ORDER BY Tenphim ASC", 12, $currentPage);
            break;
        case 'hai':
            showMoviesWithPagination("SELECT Tenphim, Movie, poster FROM Content WHERE Theloai LIKE '%Hài%' ORDER BY Tenphim ASC", 12, $currentPage);
            break;
    }
    ?>
    </div>
<?php include('../layout/footer.php') ?>