<?php
include_once('../../model/database.php');

if (isset($_GET['xoa'])) {
    $mabl = $_GET['MaBL'];
    $sql = "DELETE FROM `binhluan` WHERE MaBL = '$mabl'";
    $rs = mysqli_query($conn, $sql);

    if ($rs) {
        header('Location: ../index.php?action=binhluan&thongbao=xoa');
        exit();
    } else {
        echo "Lỗi khi xóa dữ liệu: " . mysqli_error($conn);
    }
}
?>