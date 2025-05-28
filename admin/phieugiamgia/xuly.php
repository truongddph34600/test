<?php
include_once('../../model/database.php');
	if(isset($_GET['them'])){
        $tengg = $_GET['tengg'];
        $tiengg = isset($_GET['tiengg']) ? (int)$_GET['tiengg'] : 0;

        // Kiểm tra tên voucher đã tồn tại chưa
        $check_sql = "SELECT COUNT(*) as count FROM phieugiamgia WHERE TenGG = '$tengg'";
        $check_result = mysqli_query($conn, $check_sql);
        $row = mysqli_fetch_assoc($check_result);

        if($row['count'] > 0) {
            header('location:../index.php?action=phieugiamgia&thongbao=trung');
            exit();
        }

        // Kiểm tra giá trị voucher không vượt quá 100.000
        if($tiengg > 100000) {
            header('location:../index.php?action=phieugiamgia&thongbao=vuotgioihan');
            exit();
        }

        $sql = "INSERT INTO `phieugiamgia`(`TenGG`, `TienGG`) VALUES ('$tengg',$tiengg)";
        $rs = mysqli_query($conn, $sql);

        if($rs){
            header('location:../index.php?action=phieugiamgia&thongbao=them');
        }
    }
	if (isset($_GET['xoa'])) {
        $magg = $_GET['MaGG'];
        $sql = "DELETE FROM `phieugiamgia` WHERE MaGG = '$magg'";
        $rs = mysqli_query($conn, $sql);

        if ($rs) {
            header('Location: ../index.php?action=phieugiamgia&thongbao=xoa');
            exit(); // tốt nên dừng sau khi redirect
        } else {
            echo "Lỗi khi xóa dữ liệu: " . mysqli_error($conn);
        }
    }

	if(isset($_GET['sua'])){
        $magg = $_GET['MaGG'];
        $tengg = $_GET['tengg'];
        $tiengg = isset($_GET['tiengg']) ? (int)$_GET['tiengg'] : 0;

        // Kiểm tra tên voucher đã tồn tại chưa (trừ voucher hiện tại)
        $check_sql = "SELECT COUNT(*) as count FROM phieugiamgia WHERE TenGG = '$tengg' AND MaGG != $magg";
        $check_result = mysqli_query($conn, $check_sql);
        $row = mysqli_fetch_assoc($check_result);

        if($row['count'] > 0) {
            header('location:../index.php?action=phieugiamgia&view=sua&id='.$magg.'&thongbao=trung');
            exit();
        }

        // Kiểm tra giá trị voucher không vượt quá 100.000
        if($tiengg > 100000) {
            header('location:../index.php?action=phieugiamgia&view=sua&id='.$magg.'&thongbao=vuotgioihan');
            exit();
        }

        $sql = "UPDATE `phieugiamgia` SET `TenGG`='$tengg',`TienGG`=$tiengg WHERE MaGG =$magg";
        $rs = mysqli_query($conn, $sql);

        if(isset($rs)){
            header('location:../index.php?action=phieugiamgia&thongbao=sua');
        }
    }

?>