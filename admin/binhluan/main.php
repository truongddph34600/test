<?php
    include_once('../model/database.php');
    if(isset($_GET['view'])){
        $view=$_GET['view'];
        switch ($view) {
            case 'xoa':
                include_once('binhluan/xuly.php?view='.$view);
                break;
            default:
                break;
        }
    }
    else{
        include_once('binhluan/binhluan.php');
    }
?>