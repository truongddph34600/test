<div class="container-fluid">
    <div class="alert alert-primary">
        <h4 class="page-title">
            <span class="page-title-icon bg-gradient-primary text-white mr-2">
            </span> ADMIN &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Khuyến mãi
        </h4>
    </div>
    <div class="card card-body">
        <!-- Thêm phần hiển thị thông báo lỗi -->
        <?php if(isset($_GET['thongbao'])): ?>
            <div class="alert <?php echo $_GET['thongbao'] == 'them' ? 'alert-success' : 'alert-danger'; ?> mb-3">
                <?php
                    if($_GET['thongbao'] == 'trung') {
                        echo 'Tên khuyến mãi đã tồn tại!';
                    } elseif($_GET['thongbao'] == 'them') {
                        echo 'Thêm khuyến mãi thành công!';
                    } elseif($_GET['thongbao'] == 'loi') {
                        echo 'Có lỗi xảy ra!';
                    }
                ?>
            </div>
        <?php endif; ?>
    <div class="card card-body ">
        <form class="form-row " method="GET" action="khuyenmai/xuly.php" enctype="multipart/form-data">
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">Tên khuyến mãi</label><input type="text" class="form-control" name="tkm"
                    required>
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">Ngày bắt đầu</label><input type="date" class="form-control" name="nbd"
                    required>
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">Ngày kết thúc</label><input type="date" class="form-control" name="nkt"
                    required>
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">Tiền Giảm Giá</label><input type="text" class="form-control" name="t">
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">% Giảm Giá</label><input type="text" class="form-control" name="pt">
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="th">Mô Tả</label><textarea class="form-control" name="mt"
                    required></textarea>
            </div>

            <div class="form-group col-sm-4 "></div>
            <div class="form-group col-sm-3 "><label>&emsp;</label><input type="submit" class="form-control badge-info"
                    name="them" value="Thêm"></div>
            <hr>
        </form>
        <br>
        <hr>