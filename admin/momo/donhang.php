<?php
include_once('../model/database.php');
$date = getdate();
$thang = $date['year'].'-'.$date['mon'];

// Lấy tham số từ URL
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$status_filter = isset($_GET['status']) ? $_GET['status'] : 'all';
$limit = 10; // Số đơn hàng mỗi trang
$offset = ($page - 1) * $limit;

// Xây dựng điều kiện WHERE dựa trên bộ lọc
$where_clause = "WHERE 1=1";
$status_name = "Tất cả đơn hàng";

switch($status_filter) {
    case 'cho_duyet':
        $where_clause .= " AND h.TrangThai = 'Chưa duyệt' AND h.TinhTrang = 'Đã thanh toán'";
        $status_name = "Đơn hàng chờ duyệt";
        break;
    case 'da_duyet':
        $where_clause .= " AND h.TrangThai = 'Đã duyệt'";
        $status_name = "Đơn hàng đã duyệt";
        break;
    case 'hoan_thanh':
        $where_clause .= " AND h.TrangThai = 'Hoàn thành'";
        $status_name = "Đơn hàng hoàn thành";
        break;
    case 'da_huy':
        $where_clause .= " AND h.TrangThai = 'Đã hủy'";
        $status_name = "Đơn hàng đã hủy";
        break;
    case 'cho_thanh_toan':
        $where_clause .= " AND h.TinhTrang = 'Chờ thanh toán'";
        $status_name = "Đơn hàng chờ thanh toán";
        break;
}

// Đếm tổng số đơn hàng theo bộ lọc
$count_sql = "SELECT COUNT(*) as total FROM hoadonmomo h INNER JOIN khachhang k ON h.MaKH = k.MaKH $where_clause";
$count_result = mysqli_query($conn, $count_sql);
$total_records = mysqli_fetch_assoc($count_result)['total'];
$total_pages = ceil($total_records / $limit);

// Đếm tổng đơn hàng MOMO trong tháng
$sql32 = "SELECT COUNT(*) as total FROM hoadonmomo WHERE NgayDat BETWEEN '$thang-01' AND '$thang-31'";
$rs132 = mysqli_query($conn, $sql32);
$row_count = mysqli_fetch_assoc($rs132);
$total_orders = $row_count['total'];

// Đếm đơn chưa duyệt
$sql_pending = "SELECT COUNT(*) as pending FROM hoadonmomo WHERE TrangThai = 'Chưa duyệt' AND TinhTrang = 'Đã thanh toán'";
$rs_pending = mysqli_query($conn, $sql_pending);
$row_pending = mysqli_fetch_assoc($rs_pending);
$pending_orders = $row_pending['pending'];

// Đếm theo từng trạng thái
$sql_stats = "SELECT
    COUNT(CASE WHEN TrangThai = 'Đã duyệt' THEN 1 END) as da_duyet,
    COUNT(CASE WHEN TrangThai = 'Hoàn thành' THEN 1 END) as hoan_thanh,
    COUNT(CASE WHEN TrangThai = 'Đã hủy' THEN 1 END) as da_huy,
    COUNT(CASE WHEN TinhTrang = 'Chờ thanh toán' THEN 1 END) as cho_thanh_toan
    FROM hoadonmomo";
$rs_stats = mysqli_query($conn, $sql_stats);
$stats = mysqli_fetch_assoc($rs_stats);
?>

<div class="container-fluid">
    <div class="alert alert-primary">
        <h4 class="page-title">
            <span class="page-title-icon bg-gradient-primary text-white mr-2">
            </span> ADMIN &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Đơn Hàng MOMO
        </h4>
    </div>
    <br>

    <!-- Thống kê -->
    <div class="row">
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Đơn Hàng Chờ Duyệt
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?php echo $pending_orders; ?>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-clock fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Tổng Đơn Hàng (Tháng)
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?php echo $total_orders; ?>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Đã Duyệt
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?php echo $stats['da_duyet']; ?>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-check fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                Đã Hủy
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <?php echo $stats['da_huy']; ?>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-times fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bộ lọc trạng thái -->
    <div class="card mb-4">
        <div class="card-header">
            <h6 class="m-0 font-weight-bold text-primary">Lọc theo trạng thái</h6>
        </div>
        <div class="card-body">
            <div class="btn-group flex-wrap" role="group">
                <a href="?action=momo&status=all"
                   class="btn btn-sm <?php echo $status_filter == 'all' ? 'btn-primary' : 'btn-outline-primary'; ?>">
                    <i class="fas fa-list"></i> Tất cả (<?php echo $total_records; ?>)
                </a>
                <a href="?action=momo&status=cho_duyet"
                   class="btn btn-sm <?php echo $status_filter == 'cho_duyet' ? 'btn-warning' : 'btn-outline-warning'; ?>">
                    <i class="fas fa-clock"></i> Chờ duyệt (<?php echo $pending_orders; ?>)
                </a>
                <a href="?action=momo&status=da_duyet"
                   class="btn btn-sm <?php echo $status_filter == 'da_duyet' ? 'btn-info' : 'btn-outline-info'; ?>">
                    <i class="fas fa-check-circle"></i> Đã duyệt (<?php echo $stats['da_duyet']; ?>)
                </a>
                <a href="?action=momo&status=hoan_thanh"
                   class="btn btn-sm <?php echo $status_filter == 'hoan_thanh' ? 'btn-success' : 'btn-outline-success'; ?>">
                    <i class="fas fa-check-double"></i> Hoàn thành (<?php echo $stats['hoan_thanh']; ?>)
                </a>
                <a href="?action=momo&status=da_huy"
                   class="btn btn-sm <?php echo $status_filter == 'da_huy' ? 'btn-danger' : 'btn-outline-danger'; ?>">
                    <i class="fas fa-times-circle"></i> Đã hủy (<?php echo $stats['da_huy']; ?>)
                </a>
                <a href="?action=momo&status=cho_thanh_toan"
                   class="btn btn-sm <?php echo $status_filter == 'cho_thanh_toan' ? 'btn-secondary' : 'btn-outline-secondary'; ?>">
                    <i class="fas fa-credit-card"></i> Chờ thanh toán (<?php echo $stats['cho_thanh_toan']; ?>)
                </a>
            </div>
        </div>
    </div>

    <!-- Bảng đơn hàng -->
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h6 class="m-0 font-weight-bold text-primary"><?php echo $status_name; ?></h6>
            <span class="badge badge-primary"><?php echo $total_records; ?> đơn hàng</span>
        </div>
        <div class="card-body">
            <?php if ($total_records > 0) { ?>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead class="table-info">
                            <tr class="text-center">
                                <th>#</th>
                                <th>Mã ĐH</th>
                                <th>Mã Momo</th>
                                <th>Khách hàng</th>
                                <th>Ngày đặt</th>
                                <th>Tổng tiền</th>
                                <th>Tình Trạng</th>
                                <th>Trạng Thái</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Truy vấn với phân trang và bộ lọc
                            $sql = "SELECT h.*, k.TenKH
                                   FROM hoadonmomo h
                                   INNER JOIN khachhang k ON h.MaKH = k.MaKH
                                   $where_clause
                                   ORDER BY h.NgayDat DESC
                                   LIMIT $limit OFFSET $offset";
                            $rs = mysqli_query($conn, $sql);
                            $i = $offset + 1;
                            while($row = mysqli_fetch_assoc($rs)) {
                            ?>
                            <tr>
                                <td class="text-center"><?php echo $i++; ?></td>
                                <td class="text-center"><?php echo $row['MaHD']; ?></td>
                                <td class="text-center"><?php echo $row['MaMomo']; ?></td>
                                <td><?php echo $row['TenKH']; ?></td>
                                <td class="text-center"><?php echo date('d/m/Y H:i', strtotime($row['NgayDat'])); ?></td>
                                <td class="text-right"><?php echo number_format($row['TongTien']); ?>đ</td>
                                <td class="text-center">
                                    <span class="badge badge-<?php echo get_status_class($row['TinhTrang']); ?>">
                                        <?php echo $row['TinhTrang']; ?>
                                    </span>
                                </td>
                                <td class="text-center">
                                    <span class="badge bg-<?php echo get_order_status_class($row['TrangThai']); ?>">
                                        <?php echo $row['TrangThai']; ?>
                                    </span>
                                </td>
                                <td class="text-center">
                                    <a href="index.php?action=momo&view=chitiet&mahd=<?php echo $row['MaHD']; ?>"
                                       class="btn btn-info btn-sm">
                                        <i class="fas fa-eye"></i> Chi tiết
                                    </a>
                                    <?php if ($row['TrangThai'] == 'Chưa duyệt' && $row['TinhTrang'] == 'Đã thanh toán') { ?>
                                        <a href="momo/xuly.php?action=duyet&mahd=<?php echo $row['MaHD']; ?>"
                                           class="btn btn-success btn-sm"
                                           onclick="return confirm('Xác nhận duyệt đơn hàng này?')">
                                            <i class="fas fa-check"></i> Duyệt
                                        </a>
                                        <a href="momo/xuly.php?action=huy&mahd=<?php echo $row['MaHD']; ?>"
                                           class="btn btn-danger btn-sm"
                                           onclick="return confirm('Xác nhận hủy đơn hàng này?')">
                                            <i class="fas fa-times"></i> Hủy
                                        </a>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>

                <!-- Phân trang -->
                <?php if ($total_pages > 1) { ?>
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center">
                            <!-- Nút Previous -->
                            <?php if ($page > 1) { ?>
                                <li class="page-item">
                                    <a class="page-link" href="?action=momo&status=<?php echo $status_filter; ?>&page=<?php echo ($page - 1); ?>">
                                        <i class="fas fa-chevron-left"></i> Trước
                                    </a>
                                </li>
                            <?php } else { ?>
                                <li class="page-item disabled">
                                    <span class="page-link"><i class="fas fa-chevron-left"></i> Trước</span>
                                </li>
                            <?php } ?>

                            <!-- Các số trang -->
                            <?php
                            $start_page = max(1, $page - 2);
                            $end_page = min($total_pages, $page + 2);

                            if ($start_page > 1) {
                                echo '<li class="page-item"><a class="page-link" href="?action=momo&status='.$status_filter.'&page=1">1</a></li>';
                                if ($start_page > 2) {
                                    echo '<li class="page-item disabled"><span class="page-link">...</span></li>';
                                }
                            }

                            for ($i = $start_page; $i <= $end_page; $i++) {
                                if ($i == $page) {
                                    echo '<li class="page-item active"><span class="page-link">'.$i.'</span></li>';
                                } else {
                                    echo '<li class="page-item"><a class="page-link" href="?action=momo&status='.$status_filter.'&page='.$i.'">'.$i.'</a></li>';
                                }
                            }

                            if ($end_page < $total_pages) {
                                if ($end_page < $total_pages - 1) {
                                    echo '<li class="page-item disabled"><span class="page-link">...</span></li>';
                                }
                                echo '<li class="page-item"><a class="page-link" href="?action=momo&status='.$status_filter.'&page='.$total_pages.'">'.$total_pages.'</a></li>';
                            }
                            ?>

                            <!-- Nút Next -->
                            <?php if ($page < $total_pages) { ?>
                                <li class="page-item">
                                    <a class="page-link" href="?action=momo&status=<?php echo $status_filter; ?>&page=<?php echo ($page + 1); ?>">
                                        Sau <i class="fas fa-chevron-right"></i>
                                    </a>
                                </li>
                            <?php } else { ?>
                                <li class="page-item disabled">
                                    <span class="page-link">Sau <i class="fas fa-chevron-right"></i></span>
                                </li>
                            <?php } ?>
                        </ul>
                    </nav>

                    <!-- Thông tin phân trang -->
                    <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted">
                            Hiển thị <?php echo $offset + 1; ?> - <?php echo min($offset + $limit, $total_records); ?>
                            của <?php echo $total_records; ?> đơn hàng
                        </small>
                        <small class="text-muted">
                            Trang <?php echo $page; ?> / <?php echo $total_pages; ?>
                        </small>
                    </div>
                <?php } ?>

            <?php } else { ?>
                <div class="text-center py-4">
                    <i class="fas fa-inbox fa-3x text-muted mb-3"></i>
                    <h5 class="text-muted">Không có đơn hàng nào</h5>
                    <p class="text-muted">Chưa có đơn hàng nào với trạng thái này.</p>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

<?php
function get_status_class($status) {
    switch($status) {
        case 'Chờ thanh toán':
            return 'warning';
        case 'Đã thanh toán':
            return 'info';
        case 'Hoàn thành':
            return 'success';
        case 'Đã hủy':
            return 'danger';
        default:
            return 'secondary';
    }
}

function get_order_status_class($status) {
    switch($status) {
        case 'Chưa duyệt':
            return 'warning';
        case 'Đã duyệt':
            return 'info';
        case 'Hoàn thành':
            return 'success';
        case 'Đã hủy':
            return 'danger';
        default:
            return 'secondary';
    }
}
?>