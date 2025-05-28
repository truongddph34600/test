<?php
// kết nối database 
    $servername = "localhost";
    $database = "beehat";
    $username = "root";
    $password = "";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

   // File: commons/functions.php
   // Thêm hàm sắp xếp sản phẩm theo giá tăng dần
   function product_sort_price_asc() {
       global $conn;
       $sql = "SELECT * FROM sanpham ORDER BY DonGia ASC";
       return mysqli_query($conn, $sql);
       }

// -------------------------
function selectdata($sql)
{
    global $conn;
    $retval = mysqli_query(  $conn ,$sql);  
    return $retval;
    mysqli_close($conn);
}
// login 
function checklogin($email,$password){
    global $conn;
    $sql="SELECT * FROM `khachhang` WHERE Email= '$email' AND MatKhau = '$password'";
    $resulf=mysqli_query($conn,$sql);
    $count=mysqli_num_rows($resulf); 
    if($count==0){
        return false;
      }else{
        return $resulf;
      }     
    mysqli_close($conn);
}
// -------------------------
// ------------------------------------------ PRODUCT MODEL----------------------
// lấy danh sách sản phẩm
function productAll(){
  global $conn;
  $sql=" SELECT * FROM `sanpham`  limit 12" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// lấy danh sách sản phẩn nổi bật 
function featuredProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaDM` = 1 LIMIT 4";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}
function newsProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaDM` = 2 LIMIT 4 ";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}
function sellingProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaDM` = 3 LIMIT 4";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}

// lấy danh sách sản phẩm random
function product_rand(){
  global $conn;
  $sql=" SELECT * FROM `sanpham` ORDER BY rand() limit 4" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// tìm kiếm sản phẩm
function product_search($key){
  global $conn;
  $sql="SELECT * FROM `sanpham` WHERE `TenSP`  LIKE N'%".$key."%' ";
  $resulf=mysqli_query($conn,$sql);
  // Always return the result object, even if no rows found
  return $resulf;
  mysqli_close($conn);
}
function product_all_sorted($order = 'ASC') {
    global $conn;
    $order = strtoupper($order) === 'DESC' ? 'DESC' : 'ASC';
    $sql = "SELECT * FROM sanpham ORDER BY DonGia $order";
    return mysqli_query($conn, $sql);
}
function product_by_category($category) {
    global $conn;
    $catId = intval($category);
    $sql   = "SELECT * FROM sanpham WHERE MaLoaiSP = {$catId}";
    return mysqli_query($conn, $sql);
}
// lấy 1 product 
function product($id){
  global $conn;
  $sql="SELECT * FROM sanpham WHERE `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// tính sản phẩm khuyến mãi
function price_sale($id, $gia) {
    global $conn;
    $a = 0; $b = 0; $tong = 0;
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $date = getdate();
    $ngay = $date['year'] . "-" . $date['mon'] . "-" . ($date['mday']);

    $km = "SELECT * FROM `sanphamkhuyenmai` WHERE `MaSP`=" . $id;
    $query_km = mysqli_query($conn, $km);
    while ($kq_km = mysqli_fetch_array($query_km)) {
        $km1 = "SELECT * FROM `khuyenmai` WHERE `MaKM`=" . $kq_km['MaKM'] . " and NgayBD <='" . $ngay . "' and NgayKT >='" . $ngay . "'";
        $query_km1 = mysqli_query($conn, $km1);
        while ($kq_km = mysqli_fetch_array($query_km1)) {
            if (isset($kq_km['KM_PT'])) {
                $b = $b + ($kq_km['KM_PT']);
            }
            if (isset($kq_km['TienKM'])) {
                $a = $a + ($kq_km['TienKM']);
            }
        }
    }

    // Tính toán giá sau giảm
    if ($a !== 0 && $b !== 0) {
        $tong = $gia - $a - ($gia * $b / 100);
    } elseif ($b == 0) {
        $tong = $gia - $a;
    } elseif ($a == 0) {
        $tong = $gia - ($gia * $b / 100);
    } else {
        $tong = $gia;
    }

    // Đảm bảo giá không nhỏ hơn 0
    return max(0, $tong);
}
// lấy  product detail
function product_detail_color($id){
  global $conn;
  $sql="SELECT  DISTINCT MaMau FROM `chitietsanpham` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
function product_detail_size($id){
  global $conn;
  $sql="SELECT  DISTINCT MaSize FROM `chitietsanpham` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
function product_detail_image($id){
  global $conn;
  $sql="SELECT  * FROM `anhsp` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// check số lượgn prodcut
function check_product_soluong($id, $size, $mau) {
  global $conn;
  
  // Chuẩn bị câu lệnh SQL để tránh SQL Injection
  $sql = "SELECT SoLuong FROM chitietsanpham WHERE MaSP = ? AND MaMau = ? AND MaSize = ?";
  
  // Chuẩn bị câu lệnh
  if ($stmt = mysqli_prepare($conn, $sql)) {
      // Liên kết tham số với câu lệnh
      mysqli_stmt_bind_param($stmt, "iss", $id, $mau, $size); // 'i' cho int, 's' cho string
      
      // Thực thi câu lệnh
      mysqli_stmt_execute($stmt);
      
      // Lấy kết quả trả về
      $result = mysqli_stmt_get_result($stmt);
      
      // Kiểm tra nếu có dữ liệu
      if (mysqli_num_rows($result) == 0) {
          return 0;  // Không có dữ liệu
      } else {
          // Lấy dữ liệu từ kết quả
          $row = mysqli_fetch_array($result);
          return $row['SoLuong'];  // Trả về số lượng
      }
      
      // Đóng câu lệnh
      mysqli_stmt_close($stmt);
  } else {
      // Nếu có lỗi trong việc chuẩn bị câu lệnh SQL
      return 0;
  }
  
  // Đóng kết nối
  mysqli_close($conn);
}

// check phiếu giảm giá
if (isset($_POST["functionName"])) {
  if ($_POST["functionName"] == "check_coupon") {
    $id = $_POST["id"];
    $result = check_coupon($id);
    echo json_encode($result);
  }
}
function check_coupon($id){
  global $conn;
  $sql="SELECT * FROM `phieugiamgia` WHERE `TenGG` = '$id'";
  $resulf = mysqli_query($conn ,$sql);
  $count=mysqli_num_rows($resulf);
  if($count==0){
    return 0;
  }else{
    $coupon=mysqli_fetch_array($resulf);
    // Trả về giá trị số thay vì chuỗi đã format
    return $coupon['TienGG'];
  }
  mysqli_close($conn);
}
// các bình luận product
function product_review($id){
  global $conn;
  $sql="SELECT * FROM `binhluan` WHERE `MaSP`=$id ORDER BY ThoiGian DESC ";
  $resulf = mysqli_query($conn ,$sql);       
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);

}
// thêm bình luận product
function product_addtoreview($masp,$id,$nd){
  global $conn;
  $sql="INSERT INTO `binhluan`( `MaSP`, `MaKH`, `NoiDung`) VALUES('$masp',".$id.",'$nd')";
  $resulf = mysqli_query($conn ,$sql);  
  if($resulf){
      return true;
    }else{
      return  false;
    }     
  mysqli_close($conn);
}
/////// tải thêm nhiều sản phẩm với ajax
if (isset($_POST['page'])==true) {
  $page = $_POST['page']*12;
  $row_count = $_POST['rowCount'];
  $sql="SELECT * FROM `sanpham`  limit 12,".$page;
  $res=selectdata($sql); ?>
  <div class="row pad-dt"><?php  while( $row=mysqli_fetch_array($res)){ ?>
    <div class="col-3 col-dt">
      <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
        <div class="item">
          <div class="product-lable">
            <?php $price_sale=price_sale($row['MaSP'],$row['DonGia']); if($price_sale < $row['DonGia']) { 
              echo '<span>Giảm '.number_format( $row['DonGia'] - $price_sale).'đ </span>';}?>
          </div>
          <div><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
          <div class="item-name"><p> <?php echo $row['TenSP']; ?> </p></div>
          <div class="item-price">
            <p> <?php echo number_format($price_sale,0).'đ'; ?> </p>
            <h6> <?php if(number_format($row['DonGia']) !== number_format($price_sale)) {echo number_format($row['DonGia']).'đ';} ;  ?> </h6> 
          </div>
        </div>
      </a>
      </div><?php }  ?>
  </div>
<?php
};


// ------------------------------------------ Category MODEL----------------------
// danh mục 
function categorys(){
  global $conn;
  $sql=" SELECT * FROM `nhacc` ";
  $resulf=mysqli_query($conn,$sql);
    $count=mysqli_num_rows($resulf);    
    if($count==0){
        return false;
      }else{
        return  $resulf;
      }     
    mysqli_close($conn);
}
// lấy danh sách sản phẩm theo danh mục
function product_category($id){
  global $conn;
  $sql=" SELECT * FROM `sanpham` where MaNCC = $id" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}

// -------------------------------------------------------------------------------
// ------------------------------------------ card MODEL----------------------
// xử lý đặt hàng
/**
 * Hàm xử lý đặt hàng với thanh toán MoMo
 * Lưu thông tin vào bảng hoadon và cập nhật MaMomo khi thanh toán thành công
 */
function order_product_momo($nn, $dcnn, $sdtnn, $makh, $tt) {
    global $conn;

    // Kiểm tra và xử lý các giá trị đầu vào
    $nn = mysqli_real_escape_string($conn, $nn); // Xử lý tên người nhận
    $dcnn = mysqli_real_escape_string($conn, $dcnn); // Xử lý địa chỉ người nhận
    $sdtnn = mysqli_real_escape_string($conn, $sdtnn); // Xử lý số điện thoại người nhận
    $makh = (int)$makh; // Chuyển mã khách hàng thành số nguyên
    $tt = (float)str_replace(',', '', $tt); // Đảm bảo tổng tiền là số thực, bỏ dấu phẩy nếu có

    // Thực hiện câu lệnh SQL insert vào bảng hoadon
    $sql = "INSERT INTO `hoadon`(`MaKH`, `TinhTrang`, `TongTien`) VALUES ($makh, N'Chờ thanh toán', $tt)";
    $resulf = mysqli_query($conn, $sql);

    if ($resulf) {
        // Lấy mã hóa đơn mới nhất
        $sql2 = "SELECT MaHD FROM hoadon WHERE MaKH = $makh AND TongTien = $tt ORDER BY MaHD DESC LIMIT 1";
        $rs2 = mysqli_query($conn, $sql2);
        $kq2 = mysqli_fetch_array($rs2);
        $mahd = $kq2['MaHD'];

        // Duyệt qua các sản phẩm trong giỏ hàng và thêm vào bảng chi tiết hóa đơn
        foreach ($_SESSION['cart_product'] as $item) {
            $DonGia = str_replace(',', '', $item['DonGia']); // Xử lý giá trị đơn giá, bỏ dấu phẩy nếu có
            $ttt = ($item['SoLuong'] * $DonGia); // Tính thành tiền
            $masp = (int)$item['MaSP']; // Mã sản phẩm
            $sl = (int)$item['SoLuong']; // Số lượng
            $dg = (float)$DonGia; // Đảm bảo giá trị đơn giá là số thực
            $mamau = mysqli_real_escape_string($conn, $item['Mau']); // Mã màu
            $size = mysqli_real_escape_string($conn, $item['Size']); // Kích cỡ

            // Thêm chi tiết hóa đơn
            $sql3 = "INSERT INTO `chitiethoadon`(`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`)
                    VALUES ($mahd, $masp, $sl, $dg, $ttt, '$size', '$mamau')";
            $rs3 = mysqli_query($conn, $sql3);
        }

        // Thêm thông tin người nhận vào bảng nguoinhan
        $sql4 = "INSERT INTO `nguoinhan`(`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`)
                VALUES ($mahd, '$nn', '$dcnn', '$sdtnn')";
        $rs4 = mysqli_query($conn, $sql4);

        // Lưu ý: Không xóa giỏ hàng ngay, vì cần đợi thanh toán MoMo thành công

        // Trả về mã hóa đơn để sử dụng trong quá trình thanh toán MoMo
        return $mahd;
    }
    return false;
}

/**
 * Hàm cập nhật số lượng sản phẩm sau khi thanh toán MoMo thành công
 */
function update_product_quantity_after_momo($mahd) {
    global $conn;

    // Lấy thông tin chi tiết hóa đơn
    $sql = "SELECT * FROM chitiethoadon WHERE MaHD = $mahd";
    $result = mysqli_query($conn, $sql);

    while ($row = mysqli_fetch_array($result)) {
        $masp = $row['MaSP'];
        $sl = $row['SoLuong'];
        $size = $row['Size'];
        $mamau = $row['MaMau'];

        // Cập nhật số lượng sản phẩm trong kho
        $sql_sl = "UPDATE `chitietsanpham` SET `SoLuong` = `SoLuong` - '$sl'
                  WHERE `MaSP` = '$masp' AND `MaSize` = '$size' AND `MaMau` = '$mamau'";
        mysqli_query($conn, $sql_sl);
    }

    return true;
}

/**
 * Hàm xử lý khi nhận callback từ MoMo
 */
function process_momo_callback($momo_data) {
    global $conn;

    $orderId = $momo_data['orderId'];
    $resultCode = $momo_data['resultCode'];

    if ($resultCode == '0') {
        // Lấy MaMomo từ bảng momo
        $sql = "SELECT MaMomo FROM momo WHERE order_id = '$orderId' ORDER BY MaMomo DESC LIMIT 1";
        $result = mysqli_query($conn, $sql);

        if ($row = mysqli_fetch_array($result)) {
            $maMomo = $row['MaMomo'];

            // Cập nhật hoadon với MaMomo và trạng thái
            $update_hoadon = "
                UPDATE hoadon
                SET TinhTrang = 'Đã thanh toán',
                    MaMomo = '$maMomo'
                WHERE MaHD = '$orderId'
            ";
            mysqli_query($conn, $update_hoadon);

            // Cập nhật số lượng sản phẩm
            update_product_quantity_after_momo($maHD);

            // Xóa giỏ hàng
            unset($_SESSION['cart_product']);

            return true;
        }
    } else {
        // Nếu thanh toán thất bại, có thể cập nhật trạng thái hóa đơn hoặc xử lý khác
        $update_hoadon = "UPDATE hoadon SET TinhTrang = 'Thanh toán thất bại' WHERE MaHD = '$maHD'";
        mysqli_query($conn, $update_hoadon);
    }

    return false;
}
function order_product($nn, $dcnn, $sdtnn, $makh, $tt) {
  global $conn;

  // Kiểm tra và xử lý các giá trị đầu vào
  $nn = mysqli_real_escape_string($conn, $nn); // Xử lý tên người nhận
  $dcnn = mysqli_real_escape_string($conn, $dcnn); // Xử lý địa chỉ người nhận
  $sdtnn = mysqli_real_escape_string($conn, $sdtnn); // Xử lý số điện thoại người nhận
  $makh = (int)$makh; // Chuyển mã khách hàng thành số nguyên
  $tt = (float)str_replace(',', '', $tt); // Đảm bảo tổng tiền là số thực, bỏ dấu phẩy nếu có

  // Thực hiện câu lệnh SQL insert vào bảng hoadon
  $sql = "INSERT INTO `hoadon`(`MaKH`, `TinhTrang`, `TongTien`) VALUES ($makh, N'chưa duyệt', $tt)";
  $resulf = mysqli_query($conn, $sql);

  if ($resulf) {
      // Lấy mã hóa đơn mới nhất
      $sql2 = "SELECT MaHD FROM hoadon WHERE MaKH = $makh AND TongTien = $tt ORDER BY MaHD DESC LIMIT 1";
      $rs2 = mysqli_query($conn, $sql2);
      $kq2 = mysqli_fetch_array($rs2);
      $mahd = $kq2['MaHD'];

      // Duyệt qua các sản phẩm trong giỏ hàng và thêm vào bảng chi tiết hóa đơn
      foreach ($_SESSION['cart_product'] as $item) {
          $DonGia = str_replace(',', '', $item['DonGia']); // Xử lý giá trị đơn giá, bỏ dấu phẩy nếu có
          $ttt = ($item['SoLuong'] * $DonGia); // Tính thành tiền
          $masp = (int)$item['MaSP']; // Mã sản phẩm
          $sl = (int)$item['SoLuong']; // Số lượng
          $dg = (float)$DonGia; // Đảm bảo giá trị đơn giá là số thực
          $mamau = mysqli_real_escape_string($conn, $item['Mau']); // Mã màu
          $size = mysqli_real_escape_string($conn, $item['Size']); // Kích cỡ

          // Thêm chi tiết hóa đơn
          $sql3 = "INSERT INTO `chitiethoadon`(`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`)
                   VALUES ($mahd, $masp, $sl, $dg, $ttt, '$size', '$mamau')";
          $rs3 = mysqli_query($conn, $sql3);

          // Cập nhật số lượng sản phẩm trong kho
          $sql_sl = "UPDATE `chitietsanpham` SET `SoLuong` = `SoLuong` - '$sl'
                     WHERE `MaSP` = '$masp' AND `MaSize` = '$size' AND `MaMau` = '$mamau'";
          $rs_sl = mysqli_query($conn, $sql_sl);
      }

      if ($rs3 && $rs_sl) {
          // Thêm thông tin người nhận vào bảng nguoinhan
          $sql4 = "INSERT INTO `nguoinhan`(`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`)
                   VALUES ($mahd, '$nn', '$dcnn', '$sdtnn')";
          $rs4 = mysqli_query($conn, $sql4);

          if ($rs4) {
              // Xóa giỏ hàng nếu đơn hàng được đặt thành công
              unset($_SESSION['cart_product']);
              return true;
          } else {
              return false;
          }
      }
  }

  return false;
}



// -------------------------------------------------------------------------------
// ------------------------------------------ user MODEL----------------------
// đăng ký mới
function newUser($name, $email, $sdt, $address, $password) {
    global $conn;

    // Kiểm tra email đã tồn tại chưa
    $check_email = "SELECT * FROM `khachhang` WHERE `Email` = '$email'";
    $result = mysqli_query($conn, $check_email);

    if (mysqli_num_rows($result) > 0) {
        return "Tài khoản đã tồn tại"; // Trả về thông báo nếu email đã tồn tại
    }

    // Nếu email chưa tồn tại, tiến hành thêm mới
    $sql = "INSERT INTO `khachhang`(`TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`)
            VALUES ('$name','$email','$sdt','$address','$password')";
    $resulf = mysqli_query($conn, $sql);

    if ($resulf) {
        return true; // Thêm thành công
    } else {
        return false; // Thêm thất bại
    }

    mysqli_close($conn);
}
// -------------------------
// select khách hàng
function selectKH($id){
  global $conn;
  $sql="SELECT * FROM khachhang WHERE MaKH = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return mysqli_fetch_array($resulf);
    }     
  mysqli_close($conn);
}
// -------------------------

// update khách hàng
function update_user($id,$ten,$sdt,$dc,$matkhau){
  global $conn;
  $sql="UPDATE `khachhang` SET `TenKH`='$ten',`SDT`=$sdt,`DiaChi`='$dc',`MatKhau`='$matkhau' WHERE `MaKH`=$id";
  $resulf=mysqli_query($conn,$sql);
  return $resulf;
  mysqli_close($conn);
}
// -------------------------
// đơn hàng của khách hàng
function bill_user($id){
  global $conn;
  $sql="SELECT * FROM `hoadon` WHERE MaKH = $id ORDER BY NgayDat DESC";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return $resulf;
    }     
  mysqli_close($conn);
}

// phiếu giảm giá
// ------------------ PHIẾU GIẢM GIÁ MODEL ------------------

// 1. Lấy tất cả phiếu giảm giá
function couponAll() {
    global $conn;
    $sql = "SELECT * FROM phieugiamgia ORDER BY id DESC";
    $res = mysqli_query($conn, $sql);
    if (!$res || mysqli_num_rows($res) === 0) {
        return [];
    }
    $coupons = [];
    while ($row = mysqli_fetch_assoc($res)) {
        $coupons[] = $row;
    }
    return $coupons;
}

// 2. Lấy 1 phiếu theo id
function couponGet($id) {
    global $conn;
    $id   = intval($id);
    $sql  = "SELECT * FROM phieugiamgia WHERE id = $id";
    $res  = mysqli_query($conn, $sql);
    if ($res && mysqli_num_rows($res) === 1) {
        return mysqli_fetch_assoc($res);
    }
    return null;
}

// 3. Thêm mới phiếu giảm giá
function couponCreate($tenPhieu, $soTien) {
    global $conn;
    $ten    = mysqli_real_escape_string($conn, $tenPhieu);
    $st     = floatval($soTien);
    $sql    = "INSERT INTO phieugiamgia (TenPhieu, SoTien) VALUES ('$ten', $st)";
    return mysqli_query($conn, $sql);
}

// 4. Cập nhật phiếu giảm giá
function couponUpdate($id, $tenPhieu, $soTien) {
    global $conn;
    $id     = intval($id);
    $ten    = mysqli_real_escape_string($conn, $tenPhieu);
    $st     = floatval($soTien);
    $sql    = "UPDATE phieugiamgia
               SET TenPhieu = '$ten', SoTien = $st
               WHERE id = $id";
    return mysqli_query($conn, $sql);
}

// 5. Xóa phiếu giảm giá
function couponDelete($id) {
    global $conn;
    $id  = intval($id);
    $sql = "DELETE FROM phieugiamgia WHERE id = $id";
    return mysqli_query($conn, $sql);
}

// -------------------------------------------------------------------------------
// ------------------------------------------ admin  ----------------------
// chi tiết hóa đơn
function bill_detail($id){
  global $conn;
  $sql="SELECT * FROM chitiethoadon WHERE MaHD = $id" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return $resulf;
    }     
  mysqli_close($conn);
}

// -------------------------------------------------------------------------------

// Thêm các function sau vào cuối file database.php

function createMomoOrder($order_info) {
    global $conn;
    $sql = "INSERT INTO hoadonmomo (MaKH, NgayDat, TongTien, TinhTrang)
            VALUES (?, NOW(), ?, 'Chờ thanh toán')";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "id",
        $order_info['MaKH'],
        $order_info['TongTien']
    );

    if(mysqli_stmt_execute($stmt)) {
        return mysqli_insert_id($conn);
    }
    return false;
}

function updateMomoOrder($mahd, $mamomo) {
    global $conn;
    $sql = "UPDATE hoadonmomo SET
            MaMomo = ?,
            TinhTrang = 'Đã thanh toán'
            WHERE MaHD = ?";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "ii", $mamomo, $mahd);
    return mysqli_stmt_execute($stmt);
}

function getMomoOrder($mahd) {
    global $conn;
    $sql = "SELECT h.*, k.TenKH, k.Email, k.SDT
            FROM hoadonmomo h
            INNER JOIN khachhang k ON h.MaKH = k.MaKH
            WHERE h.MaHD = ?";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $mahd);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    return mysqli_fetch_assoc($result);
}
// Hàm áp dụng voucher với kiểm tra giá tối thiểu
function apply_coupon_to_total($total, $coupon_discount) {
    // Đảm bảo tổng tiền sau giảm không nhỏ hơn 0
    $final_total = $total - $coupon_discount;
    return max(0, $final_total);
}
// Hàm tính tổng giá trị giỏ hàng sau tất cả các giảm giá
function calculate_cart_total_with_discounts($cart_items, $coupon_code = '') {
    $total = 0;

    // Tính tổng giá trị giỏ hàng với khuyến mãi sản phẩm
    foreach ($cart_items as $item) {
        $original_price = floatval(str_replace(',', '', $item['DonGia']));
        $discounted_price = price_sale($item['MaSP'], $original_price);
        $total += $discounted_price * $item['SoLuong'];
    }

    // Áp dụng voucher nếu có
    if (!empty($coupon_code)) {
        $coupon_discount = check_coupon($coupon_code);
        if ($coupon_discount > 0) {
            $total = apply_coupon_to_total($total, $coupon_discount);
        }
    }

    return max(0, $total);
}
function validate_discount($original_price, $discount_amount, $discount_percent = 0) {
    $final_price = $original_price;

    // Áp dụng giảm giá theo số tiền
    if ($discount_amount > 0) {
        $final_price -= $discount_amount;
    }

    // Áp dụng giảm giá theo phần trăm
    if ($discount_percent > 0) {
        $final_price -= ($original_price * $discount_percent / 100);
    }

    // Đảm bảo giá không âm
    return max(0, $final_price);
}
// Hàm kiểm tra tính hợp lệ của phiếu giảm giá
function validate_coupon($coupon_code, $cart_total) {
    global $conn;

    if (empty($coupon_code)) {
        return ['valid' => false, 'message' => 'Mã giảm giá không được để trống'];
    }

    $coupon_code = mysqli_real_escape_string($conn, $coupon_code);
    $sql = "SELECT * FROM `phieugiamgia` WHERE `TenGG` = '$coupon_code'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 0) {
        return ['valid' => false, 'message' => 'Mã giảm giá không tồn tại'];
    }

    $coupon = mysqli_fetch_array($result);
    $discount_amount = floatval($coupon['TienGG']);

    if ($discount_amount >= $cart_total) {
        return [
            'valid' => true,
            'discount' => $cart_total,
            'message' => 'Áp dụng thành công! Đơn hàng được miễn phí.',
            'warning' => 'Giá trị giảm giá lớn hơn tổng đơn hàng'
        ];
    }

    return [
        'valid' => true,
        'discount' => $discount_amount,
        'message' => 'Áp dụng mã giảm giá thành công!'
    ];
}
// Hàm format tiền tệ an toàn
function safe_number_format($number, $decimals = 0) {
    if ($number < 0) {
        return '0';
    }
    return number_format($number, $decimals);
}
// Hàm hiển thị thông tin giảm giá chi tiết
function get_discount_info($product_id, $original_price) {
    global $conn;
    $discount_info = [
        'original_price' => $original_price,
        'final_price' => $original_price,
        'discount_amount' => 0,
        'discount_percent' => 0,
        'promotion_details' => []
    ];

    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $date = getdate();
    $ngay = $date['year'] . "-" . $date['mon'] . "-" . ($date['mday']);

    $total_discount_amount = 0;
    $total_discount_percent = 0;

    // Lấy thông tin khuyến mãi
    $km = "SELECT * FROM `sanphamkhuyenmai` WHERE `MaSP`=" . intval($product_id);
    $query_km = mysqli_query($conn, $km);

    while ($kq_km = mysqli_fetch_array($query_km)) {
        $km1 = "SELECT * FROM `khuyenmai` WHERE `MaKM`=" . $kq_km['MaKM'] .
               " and NgayBD <='" . $ngay . "' and NgayKT >='" . $ngay . "'";
        $query_km1 = mysqli_query($conn, $km1);

        while ($promotion = mysqli_fetch_array($query_km1)) {
            $promo_detail = [
                'name' => $promotion['TenKM'] ?? 'Khuyến mãi',
                'type' => '',
                'value' => 0
            ];

            if (isset($promotion['KM_PT']) && $promotion['KM_PT'] > 0) {
                $total_discount_percent += $promotion['KM_PT'];
                $promo_detail['type'] = 'percent';
                $promo_detail['value'] = $promotion['KM_PT'];
            }

            if (isset($promotion['TienKM']) && $promotion['TienKM'] > 0) {
                $total_discount_amount += $promotion['TienKM'];
                $promo_detail['type'] = 'amount';
                $promo_detail['value'] = $promotion['TienKM'];
            }

            $discount_info['promotion_details'][] = $promo_detail;
        }
    }

    // Tính giá cuối cùng
    $final_price = validate_discount($original_price, $total_discount_amount, $total_discount_percent);

    $discount_info['final_price'] = $final_price;
    $discount_info['discount_amount'] = $total_discount_amount;
    $discount_info['discount_percent'] = $total_discount_percent;
    $discount_info['total_saved'] = $original_price - $final_price;

    return $discount_info;
}

?>



