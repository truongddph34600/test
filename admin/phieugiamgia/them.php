<div class="container-fluid">
    <div class="alert alert-primary">
        <h4 class="page-title">
            <span class="page-title-icon bg-gradient-primary text-white mr-2">
            </span> ADMIN &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Voucher
        </h4>
    </div>
    <div class="card card-body">
        <!-- Thêm div để hiển thị thông báo lỗi -->
        <div id="error-message" class="alert alert-danger" style="display: none;"></div>

        <form class="form-row" method="GET" action="phieugiamgia/xuly.php" enctype="multipart/form-data" id="voucherForm" onsubmit="return validateForm()">
            <div class="form-group col-sm-4">
                <label class="m-auto" for="tengg">Tên Voucher</label>
                <input type="text" class="form-control" name="tengg" id="tengg" required>
            </div>
            <div class="form-group col-sm-4">
                <label class="m-auto" for="tiengg">Tiền Giảm Giá</label>
                <input type="number" class="form-control" name="tiengg" id="tiengg" min="0" max="100000">
            </div>
            <div class="form-group col-sm-4"></div>
            <div class="form-group col-sm-3">
                <label>&emsp;</label>
                <input type="submit" class="form-control badge-info" name="them" value="Thêm">
            </div>
            <hr>
        </form>
        <br>
        <hr>
    </div>
</div>

<script>
function validateForm() {
    const tiengg = document.getElementById('tiengg').value;
    const errorDiv = document.getElementById('error-message');

    // Kiểm tra giá trị tiền giảm giá
    if (tiengg > 100000) {
        errorDiv.style.display = 'block';
        errorDiv.innerHTML = 'Tiền giảm giá không được vượt quá 100.000đ';
        return false;
    }

    if (tiengg < 0) {
        errorDiv.style.display = 'block';
        errorDiv.innerHTML = 'Tiền giảm giá không được âm';
        return false;
    }

    return true;
}

// Thêm xử lý hiển thị thông báo lỗi từ URL parameters
window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    const thongbao = urlParams.get('thongbao');
    const errorDiv = document.getElementById('error-message');

    if (thongbao === 'trung') {
        errorDiv.style.display = 'block';
        errorDiv.innerHTML = 'Tên voucher đã tồn tại!';
    } else if (thongbao === 'vuotgioihan') {
        errorDiv.style.display = 'block';
        errorDiv.innerHTML = 'Tiền giảm giá không được vượt quá 100.000đ';
    }
}
</script>