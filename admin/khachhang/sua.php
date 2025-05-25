<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Thông Tin Khách Hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .card-header {
            background-color: #36b9cc;
            color: white;
            border-radius: 10px 10px 0 0;
            padding: 15px 20px;
            font-weight: 600;
            font-size: 1.2rem;
        }
        .form-label {
            font-weight: 500;
            color: #5a5c69;
        }
        .form-control {
            border-radius: 5px;
            padding: 10px 15px;
            border: 1px solid #d1d3e2;
            transition: border-color 0.2s;
        }
        .form-control:focus {
            border-color: #36b9cc;
            box-shadow: 0 0 0 0.2rem rgba(54, 185, 204, 0.25);
        }
        .btn-submit {
            background-color: #36b9cc;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            font-weight: 600;
            transition: all 0.3s;
            color: white;
        }
        .btn-submit:hover {
            background-color: #2c9faf;
            transform: translateY(-2px);
            box-shadow: 0 5px 10px rgba(44, 159, 175, 0.3);
        }
        .btn-cancel {
            background-color: #e74a3b;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            font-weight: 600;
            transition: all 0.3s;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #d52a1a;
            transform: translateY(-2px);
            box-shadow: 0 5px 10px rgba(213, 42, 26, 0.3);
        }
        .input-group-text {
            background-color: #36b9cc;
            color: white;
            border: none;
        }
        .divider {
            height: 0;
            margin: 1.5rem 0;
            overflow: hidden;
            border-top: 1px solid #e3e6f0;
        }
        .form-floating > .form-control {
            padding-top: 1.625rem;
            padding-bottom: 0.625rem;
        }
        .form-floating > label {
            padding: 1rem 0.75rem;
        }
        .avatar-wrapper {
            text-align: center;
            margin-bottom: 20px;
        }
        .avatar {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 5px solid #36b9cc;
            padding: 3px;
            background-color: #fff;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 48px;
            color: #36b9cc;
        }
        .employee-id {
            background-color: #f2f7fb;
            border-radius: 20px;
            padding: 5px 15px;
            font-weight: 600;
            color: #36b9cc;
            display: inline-block;
            margin-top: 10px;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<?php
    $makh = $_GET['makh'];
    $sql_sua = "SELECT * FROM `khachhang` WHERE MaKH='$makh'";
    $rs_sua = mysqli_query($conn, $sql_sua);
    $kq_sua = mysqli_fetch_array($rs_sua);
    $sql1 = "select * from quyen";
    $rs1 = mysqli_query($conn, $sql1);
?>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="form-container">
                <div class="card-header d-flex justify-content-between align-items-center mb-4">
                    <span><i class="fas fa-user-edit me-2"></i>Chỉnh Sửa Thông Tin Khách Hàng</span>
                </div>

                <!-- Avatar và mã nhân viên -->
                <div class="avatar-wrapper">
                    <div class="avatar">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="employee-id mt-2">
                        <i class="fas fa-id-badge me-1"></i>Mã KH: <?php echo $kq_sua['MaKH']; ?>
                    </div>
                </div>

                <form method="POST" action="khachhang/xuly.php" enctype="multipart/form-data">
                    <input type="hidden" name="makh" value="<?php echo $kq_sua['MaKH']; ?>">

                    <div class="row g-3">
                        <!-- Thông tin cá nhân -->
                        <div class="col-12 mb-3">
                            <h5 class="text-muted"><i class="fas fa-id-card me-2"></i>Thông tin cá nhân</h5>
                            <hr class="mt-0">
                        </div>

                        <div class="col-md-4 mb-3">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="tenkh" name="tenkh" value="<?php echo $kq_sua['TenKH']; ?>" autofocus>
                                <label for="tenkh"><i class="fas fa-user me-2"></i>Họ Tên</label>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3">
                            <div class="form-floating">
                                <input type="email" class="form-control" id="email" name="email" value="<?php echo $kq_sua['Email']; ?>">
                                <label for="email"><i class="fas fa-envelope me-2"></i>Email</label>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3">
                            <div class="form-floating">
                                <input type="tel" class="form-control" id="sdt" name="sdt" value="<?php echo $kq_sua['SDT']; ?>">
                                <label for="sdt"><i class="fas fa-phone me-2"></i>Số Điện Thoại</label>
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="dc" name="dc" value="<?php echo $kq_sua['DiaChi']; ?>">
                                <label for="dc"><i class="fas fa-map-marker-alt me-2"></i>Địa Chỉ</label>
                            </div>
                        </div>

                        <!-- Thông tin đăng nhập -->
                        <div class="col-12 mt-3 mb-3">
                            <h5 class="text-muted"><i class="fas fa-lock me-2"></i>Thông tin đăng nhập</h5>
                            <hr class="mt-0">
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="form-floating">
                                <input type="password" class="form-control" id="mk" name="mk" value="<?php echo $kq_sua['MatKhau']; ?>">
                                <label for="mk"><i class="fas fa-key me-2"></i>Mật Khẩu</label>
                                <div class="form-text"><a href="#" class="text-decoration-none" id="togglePassword"><i class="fas fa-eye me-1"></i>Hiện/ẩn mật khẩu</a></div>
                            </div>
                        </div>
                        <div class="col-12 mt-4 d-flex justify-content-center gap-3">
                            <a href="javascript:history.back()" class="btn btn-cancel">
                                <i class="fas fa-times me-2"></i>Hủy bỏ
                            </a>
                            <button type="submit" name="sua" class="btn btn-submit">
                                <i class="fas fa-save me-2"></i>Cập nhật thông tin
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Toggle password visibility
        const togglePassword = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('mk');

        togglePassword.addEventListener('click', function(e) {
            e.preventDefault();
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);

            // Toggle icon
            const eyeIcon = this.querySelector('i');
            eyeIcon.classList.toggle('fa-eye');
            eyeIcon.classList.toggle('fa-eye-slash');
        });

        // Form validation
        const form = document.querySelector('form');
        form.addEventListener('submit', function(event) {
            const tennv = document.getElementById('tenkh').value;
            const email = document.getElementById('email').value;
            const sdt = document.getElementById('sdt').value;

            if (!tennv || !email || !sdt) {
                event.preventDefault();
                alert('Vui lòng điền đầy đủ thông tin cá nhân!');
            }
        });
    });
</script>
</body>
</html>