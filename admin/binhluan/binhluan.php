<?php
    $sql = "SELECT bl.*, sp.TenSP, kh.TenKH
            FROM binhluan bl
            LEFT JOIN sanpham sp ON bl.MaSP = sp.MaSP
            LEFT JOIN khachhang kh ON bl.MaKH = kh.MaKH
            ORDER BY bl.ThoiGian DESC";
    $rs = mysqli_query($conn, $sql);
?>

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Quản Lý Bình Luận</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-striped align-middle">
                            <thead class="table-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Sản phẩm</th>
                                    <th>Khách hàng</th>
                                    <th>Nội dung</th>
                                    <th>Thời gian</th>
                                    <th class="text-center">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                            if (mysqli_num_rows($rs) > 0) {
                                while ($row = mysqli_fetch_array($rs)) {
                            ?>
                                <tr>
                                    <td><?php echo htmlspecialchars($row['MaBL']); ?></td>
                                    <td><?php echo htmlspecialchars($row['TenSP']); ?></td>
                                    <td><?php echo htmlspecialchars($row['TenKH']); ?></td>
                                    <td><?php echo htmlspecialchars($row['NoiDung']); ?></td>
                                    <td><?php echo date('d/m/Y H:i', strtotime($row['ThoiGian'])); ?></td>
                                    <td>
                                        <div class="d-flex justify-content-center">
                                            <a href="javascript:void(0)" onclick="confirmDelete('<?php echo $row['MaBL']; ?>')"
                                               class="btn btn-danger btn-sm" data-bs-toggle="tooltip" title="Xóa">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            <?php
                                }
                            } else {
                            ?>
                                <tr>
                                    <td colspan="6" class="text-center">Không có bình luận nào</td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal xác nhận xóa -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title" id="deleteModalLabel">Xác nhận xóa</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Bạn có chắc chắn muốn xóa bình luận này không? Hành động này không thể hoàn tác.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                <a href="#" id="confirmDeleteBtn" class="btn btn-danger">Xóa</a>
            </div>
        </div>
    </div>
</div>

<script>
    // Khởi tạo tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })

    // Hàm xác nhận xóa
    function confirmDelete(MaBL) {
        var modal = new bootstrap.Modal(document.getElementById('deleteModal'));
        document.getElementById('confirmDeleteBtn').href = 'binhluan/xuly.php?xoa=xoa&MaBL=' + MaBL;
        modal.show();
    }
</script>