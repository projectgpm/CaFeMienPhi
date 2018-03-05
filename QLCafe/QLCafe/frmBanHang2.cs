using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using QLCafe.BUS;
using QLCafe.DTO;
using DevExpress.SpreadsheetSource.Implementation;
using DevExpress.XtraTreeList.Nodes;
using DevExpress.XtraTreeList.Columns;
using QLCafe.DAO;
using DevExpress.XtraBars;
using DevExpress.XtraTab;
using DevExpress.XtraTab.ViewInfo;
using System.Globalization;
using QLCafe.Report;
using DevExpress.XtraReports.UI;
using DevExpress.DataAccess.Sql;

namespace QLCafe
{
    public partial class frmBanHang2 : DevExpress.XtraEditors.XtraForm
    {
        public frmBanHang2()
        {
            InitializeComponent();
        }
        public static int IDBan = 0;
        public static int TabActive = 0;
        public static string NameTabActive = null;
        public static string TenKhuVuc = null;
        private void frmBanHang2_Load(object sender, EventArgs e)
        {
            timer1.Start();
            DanhSachBan();
            
            lblNgay.Text = "Ngày hôm nay: " + DateTime.Now.ToString("dd/MM/yyyy");
            lblTenCongTy.Text = DAO_Setting.TenCongTy();
            lblDiaChi.Text = DAO_Setting.DiaChiCongTy();
            lblDienThoai.Text = DAO_Setting.DienThoaiCongTy();
            txtTongTien.ReadOnly = true;
            txtKhachCanTra.ReadOnly = true;
            txtTienThoi.ReadOnly = true;
            txtKhachThanhToan.ReadOnly = true;
            txtTenDangNhap.Text = "Nhân viên: " + frmDangNhap.NguoiDung.Tennguoidung;
        }
        /// <summary>
        /// xóa tab củ
        /// </summary>
        public void ClearTabControl()
        {
            xtraTabControlDanhSach.TabPages.Clear();
        }
        /// <summary>
        /// danh sách bàn
        /// </summary>
        public void DanhSachBan()
        {
            ClearTabControl();
            string IDChiNhanh = frmDangNhap.NguoiDung.Idchinhanh;
            DataTable dt = BUS_KhuVuc.DanhSachBanTheoKhuVuc(IDChiNhanh);
            if (dt.Rows.Count > 0)
            {
                ThongKe(dt);
            }
            else
            {
                MessageBox.Show("Danh sách bàn trống", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            foreach (DataRow dr in dt.Rows)
            {
                string TenKhuVucNull = dr["TenKhuVuc"].ToString();
                string IDKhuVucNull = dr["ID"].ToString();
                FlowLayoutPanel layout = new FlowLayoutPanel();
                layout.Dock = DockStyle.Fill;
                layout.AutoScroll = true;
                AddTabControl(TenKhuVucNull, IDKhuVucNull, layout);
                BanKhuVuc(IDKhuVucNull, layout);
            }
            xtraTabControlDanhSach.SelectedTabPageIndex = TabActive;
        }
        /// <summary>
        /// danh sách bàn theo khu vực
        /// </summary>
        /// <param name="IDKhuVuc"></param>
        /// <param name="layout"></param>
        public void BanKhuVuc(string IDKhuVuc, FlowLayoutPanel layout)
        {
            List<DTO_BAN> tablelist = DAO_BAN.Instance.LoadTableList(IDKhuVuc);
            foreach (DTO_BAN item in tablelist)
            {
                int TrangThai = item.Trangthai;
                string TenBan = item.Tenban;
                SimpleButton btn = new SimpleButton();
                btn.Width = 80;
                btn.Height = 80;
                btn.Text = TenBan;
                btn.Click += btn_Click;
               
                btn.MouseDown += btn_MouseDown;
                btn.KeyDown += btn_KeyDown;
                btn.Appearance.Font = new Font("Tahoma", 13, FontStyle.Regular);
                btn.Tag = item;
                switch (TrangThai)
                {
                    case 0:
                        layout.Controls.Add(btn);
                        btn.ToolTip = "Bàn trống";
                        break;
                    case 1:
                        btn.ForeColor = Color.OrangeRed;
                        btn.StyleController = null;
                        btn.LookAndFeel.UseDefaultLookAndFeel = false;
                        List<DTO_DatBan> thongtinnguoidat = DAO_DatBan.Instance.LoadTableList(item.Id);
                        foreach (DTO_DatBan dr1 in thongtinnguoidat)
                        {
                            btn.ToolTip = dr1.TenKhachHang + Environment.NewLine + dr1.DienThoai + Environment.NewLine + dr1.GioDat;
                        }
                        btn.ImageToTextAlignment = ImageAlignToText.TopCenter;
                        btn.Image = System.Drawing.Image.FromFile("cafe4.png");
                        layout.Controls.Add(btn);
                        break;
                    case 2:
                        btn.ForeColor = Color.Red;
                        btn.StyleController = null;
                        btn.LookAndFeel.UseDefaultLookAndFeel = false;
                        btn.ToolTip = "Bàn có người";
                        btn.ImageToTextAlignment = ImageAlignToText.TopCenter;
                        btn.Image = System.Drawing.Image.FromFile("cafe3.png");
                        layout.Controls.Add(btn);
                        break;
                }
            }
        }
        /// <summary>
        /// phím tắt
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btn_KeyDown(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case Keys.F1:
                    InTamHoaDon();
                    break;
                case Keys.F2:
                    TachBill();
                    break;
                case Keys.F3:
                    ThanhToanTien();
                    break;
                case Keys.F5:
                    frmGoiMon fr = new frmGoiMon();
                    fr.MyGetData = new frmGoiMon.GetKT(GetValueGoiMon);
                    fr.ShowDialog();
                    break;
                default:
                    break;
            }
        }
        public void GetValueGoiMon(int KT, int IDHoaDon)
        {
            if (KT == 1)
            {
                TinhTongTien(IDHoaDon);
                HienThiHoaDon(IDBan);
                DanhSachBan();
            }
            else
            {
                MessageBox.Show("Gọi Món Thất Bại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DanhSachBan();
            }
        }
        private void btn_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                IDBan = 0;
                IDBan = ((sender as SimpleButton).Tag as DTO_BAN).Id;
                menuBan.ShowPopup(Control.MousePosition);
            }
        }
        private void btn_Click(object sender, EventArgs e)
        {
            IDBan = ((sender as SimpleButton).Tag as DTO_BAN).Id;
            HienThiHoaDon(IDBan);
            txtKhachThanhToan.ReadOnly = false;
        }
        public void HienThiHoaDon(int IDBan)
        {
            gridView1.ViewCaption = "DANH SÁCH MÓN ĂN BÀN " + DAO_BAN.LenTenBan(IDBan);
            List<DTO_DanhSachMenu> MonAnThuong = DAO_DanhSachMonAn.Instance.GetMonAnThuong(DAO_BanHang.IDHoaDon(IDBan));
            List<DTO_DanhSachMenu> MonAnTuChon = DAO_DanhSachMonAn.Instance.GetMonAnTuChon(DAO_BanHang.IDHoaDon(IDBan));

            DataTable db = new DataTable();
            db.Columns.Add("MaHangHoa", typeof(string));
            db.Columns.Add("TenHangHoa", typeof(string));
            db.Columns.Add("DonViTinh", typeof(string));
            db.Columns.Add("TrongLuong", typeof(float));
            db.Columns.Add("SoLuong", typeof(int));
            db.Columns.Add("DonGia", typeof(float));
            db.Columns.Add("ThanhTien", typeof(float));
            db.Columns.Add("ID", typeof(int));
            foreach (DTO_DanhSachMenu item in MonAnThuong)
            {
                db.Rows.Add(

                                 item.MaHangHoa,
                                 item.TenHangHoa,
                                 item.DonViTinh,
                                 item.TrongLuong,
                                 item.SoLuong,
                                 item.DonGia,
                                 item.ThanhTien,
                                 item.ID
                            );

            }
            foreach (DTO_DanhSachMenu item in MonAnTuChon)
            {
                db.Rows.Add(

                                 item.MaHangHoa,
                                 item.TenHangHoa,
                                 item.DonViTinh,
                                 item.TrongLuong,
                                 item.SoLuong,
                                 item.DonGia,
                                 item.ThanhTien,
                                 item.ID
                            );

            }
            gridView1.OptionsSelection.EnableAppearanceFocusedRow = false;// Ẩn dòng đầu...
            gridControlCTHD.DataSource = null;
            //gridControlCTHD.Refresh();
            gridControlCTHD.DataSource = db;
            lblTenBan.Text = "Tên bàn: " + DAO_BAN.LenTenBan(IDBan);
            LoadTongTien();
        }
        /// <summary>
        /// Tính lại tổng tìền
        /// </summary>
        public void LoadTongTien()
        {
            cmbHinhThucGiamGia.Text = DAO_HoaDon.HinhThucGiamGia(DAO_BanHang.IDHoaDon(IDBan)).ToString();
            txtGiamGia.Text = DAO_HoaDon.GiamGia(DAO_BanHang.IDHoaDon(IDBan)).ToString();
            txtTienSauGiamGia.Text = DAO_HoaDon.TienGiamGia(DAO_BanHang.IDHoaDon(IDBan)).ToString();
            txtTongTien.Text = DAO_HoaDon.TongTienHoaDon(DAO_BanHang.IDHoaDon(IDBan)).ToString();
            txtKhachCanTra.Text = (DAO_HoaDon.KhachCanTra(DAO_BanHang.IDHoaDon(IDBan))).ToString();
            txtKhachThanhToan.Text = (DAO_HoaDon.KhachCanTra(DAO_BanHang.IDHoaDon(IDBan))).ToString();
        }
        /// <summary>
        /// thêm tab khu vực
        /// </summary>
        /// <param name="name"></param>
        /// <param name="ID"></param>
        /// <param name="layout"></param>
        public void AddTabControl(string name, string ID, FlowLayoutPanel layout)
        {
            //kiểm tra tabtrung
            bool KT = false;
            foreach (XtraTabPage tabitem in xtraTabControlDanhSach.TabPages)
            {
                if (tabitem.Name == ID)
                {
                    KT = true;
                    xtraTabControlDanhSach.SelectedTabPage = tabitem;
                }
            }
            if (KT == false)
            {
                xtraTabControlDanhSach.AppearancePage.HeaderActive.Font = new System.Drawing.Font("Colibri", 11, System.Drawing.FontStyle.Bold);
                xtraTabControlDanhSach.AppearancePage.Header.Font = new System.Drawing.Font("Tahoma", 10, System.Drawing.FontStyle.Regular);
                DAO_BanHang.AddTabControll(xtraTabControlDanhSach, name, ID, layout);

            }
        }
        /// <summary>
        /// Thống kê số bàn đang sử dụng
        /// </summary>
        /// <param name="tblThongTin"></param>
        public void ThongKe(DataTable tblThongTin)
        {
            DataRow dr11 = tblThongTin.Rows[0];
            btnTrong.Text = "Trống (" + BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 0) + ")";
            btnDatTruoc.Text = "Đã Đặt (" + BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 1) + ")";
            btnDatTruoc.ForeColor = Color.OrangeRed;
            btnDatTruoc.StyleController = null;
            btnDatTruoc.LookAndFeel.UseDefaultLookAndFeel = false;
            btnDatTruoc.LookAndFeel.Style = DevExpress.LookAndFeel.LookAndFeelStyle.Skin;
            btnCoNguoi.Text = "Có Người (" + BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 2) + ")";
            btnCoNguoi.ForeColor = Color.Red;
            btnCoNguoi.StyleController = null;
            btnCoNguoi.LookAndFeel.UseDefaultLookAndFeel = false;
            btnCoNguoi.LookAndFeel.Style = DevExpress.LookAndFeel.LookAndFeelStyle.Office2003;
            float SLPhucVu = BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 2);
            float TongSLBan = BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 2) + BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 0) + BUS_BAN.DanhSachThongKe(dr11["IDChiNhanh"].ToString(), 1);
            float TyLePhucVu = SLPhucVu / (float)TongSLBan;
            txtTyLyPhucVu.Text = "Tỷ lệ phục vụ: " + Math.Round(TyLePhucVu, 2) * 100 + "%";
        }
        /// <summary>
        /// In tam hóa đơn
        /// </summary>
        public void InTamHoaDon()
        {
            int IDBanHT = IDBan;
            int IDHoaDonHT = DAO_BanHang.IDHoaDon(IDBanHT);
            if (IDBanHT == 0)
            {
                MessageBox.Show("Vui lòng chọn bàn để in phiếu tạm tín.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (DAO_BanHang.IDHoaDon(IDBanHT) == 0)
            {
                MessageBox.Show("Bàn chưa có hóa đơn để in phiếu tạm.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                //if (MessageBox.Show("In tạm tính", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
                //{
                int KT = DAO_BanHang.KiemTraLayIDGioBatDau(IDHoaDonHT, IDBanHT);// kiểm tra xem có giờ kết thúc hay không
                if (KT == 0)
                {
                    int IDNhanVien = frmDangNhap.NguoiDung.Id;
                    double KhachThanhToan = double.Parse(txtKhachThanhToan.Text.ToString());
                    double TienThua = double.Parse(txtTienThoi.Text.ToString());
                    double GiamGia = double.Parse(txtTienSauGiamGia.Text.ToString());
                    double KhachCanTra = double.Parse(txtKhachCanTra.Text.ToString());
                    double TienGiamGia = double.Parse(txtTienSauGiamGia.Text.ToString());
                    double TyLeGiamGia = double.Parse(txtGiamGia.Text.ToString());
                    string HinhThucThanhToan = cmbHinhThucGiamGia.Text.ToString();
                    DAO_ChiTietHoaDonChinh.CapNhatHoaDonChinh2(IDHoaDonHT, IDBanHT, IDNhanVien, KhachThanhToan, TienThua, KhachCanTra, HinhThucThanhToan, GiamGia, TienGiamGia, TyLeGiamGia);
                    //List<DTO_ChiTietHoaDon> DanhSachHoaDon = DAO_ChiTietHoaDon.Instance.ChiTietHoaDon(IDHoaDonHT);
                    // in hóa đớn, cập nhật hóa đơn
                    DAO_ConnectSQL connect = new DAO_ConnectSQL();
                    // Tên máy in
                    string NamePrinter = DAO_Setting.LayTenMayInBill();
                    DAO_Setting.CapNhatBillInTemp(IDHoaDonHT + "");

                    // Lấy máy in bill..
                    int IDBill = DAO_Setting.ReportBill();
                    if (IDBill == 58)
                    {
                        rpHoaDonBanHang_581_Temp rp = new rpHoaDonBanHang_581_Temp();
                        SqlDataSource sqlDataSource = rp.DataSource as SqlDataSource;
                        sqlDataSource.Connection.ConnectionString += connect.ConnectString();

                        rp.Parameters["ID"].Value = IDHoaDonHT;
                        rp.Parameters["ID"].Visible = false;
                        //rp.ShowPreviewDialog();
                        rp.Print(NamePrinter);
                    }
                    else
                    {
                        rpHoaDonBanHang1_Temp rp = new rpHoaDonBanHang1_Temp();
                        SqlDataSource sqlDataSource = rp.DataSource as SqlDataSource;
                        sqlDataSource.Connection.ConnectionString += connect.ConnectString();

                        rp.Parameters["ID"].Value = IDHoaDonHT;
                        rp.Parameters["ID"].Visible = false;
                        //rp.ShowPreviewDialog();
                        rp.Print(NamePrinter);
                    }
                }
                else
                {
                    MessageBox.Show("Bàn chưa có giờ kết thúc.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                //}
            }
        }
        /// <summary>
        /// Tách hóa đơn
        /// </summary>
        public void TachBill()
        {
            int IDBanHT = IDBan;
            if (IDBanHT == 0)
            {
                MessageBox.Show("Vui lòng chọn bàn để thanh toán.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (DAO_BanHang.IDHoaDon(IDBanHT) == 0)
            {
                MessageBox.Show("Bàn chưa có hóa đơn để thanh toán.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                frmTachBill fr = new frmTachBill();
                fr.MyGetData = new frmTachBill.GetString(GetTachBill);
                fr.ShowDialog();
            }
        }
        private void GetTachBill(int KT, int IDHoaDon, int IDBan)
        {
            if (KT == 1)
            {
                HienThiHoaDon(IDBan);
                TinhTongTien(IDHoaDon);
                LoadTongTien();
            }
        }
        /// <summary>
        /// Tính tổng tiền
        /// </summary>
        /// <param name="IDHoaDon"></param>
        public static void TinhTongTien(int IDHoaDon)
        {
            List<DTO_ChiTietHoaDon> danhsach = DAO_ChiTietHoaDon.Instance.ChiTietHoaDon(IDHoaDon);
            double TongTien = 0, TienGio = 0;
            foreach (DTO_ChiTietHoaDon item in danhsach)
            {
                TongTien = TongTien + item.ThanhTien;
            }
            List<DTO_ChiTietGio> DanhSachGio = DAO_DanhSachGioChuaThanhToan.Instance.GetDanhSachGio(IDHoaDon, IDBan);
            foreach (DTO_ChiTietGio item in DanhSachGio)
            {
                TienGio = TienGio + item.ThanhTien;
            }
            DAO_HoaDon.CapNhatTongTien(IDHoaDon, TongTien.ToString(), TongTien.ToString(), TienGio.ToString());

        }
        /// <summary>
        /// Thanh toán
        /// </summary>
        public void ThanhToanTien()
        {
            int IDBanHT = IDBan;
            int IDHoaDonHT = DAO_BanHang.IDHoaDon(IDBanHT);
            if (IDBanHT == 0)
            {
                MessageBox.Show("Vui lòng chọn bàn để thanh toán.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (DAO_BanHang.IDHoaDon(IDBanHT) == 0)
            {
                MessageBox.Show("Bàn chưa có hóa đơn để thanh toán.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (float.Parse(txtKhachThanhToan.Text.ToString()) < float.Parse(txtKhachCanTra.Text.ToString()))
            {
                txtKhachThanhToan.Focus();
                MessageBox.Show("Khách thanh toán không đủ số tiền.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                if (MessageBox.Show("Thanh Toán", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
                {

                    bool insert = true;
                    List<DTO_ChiTietHoaDon> DanhSachHoaDon = DAO_ChiTietHoaDon.Instance.ChiTietHoaDon(IDHoaDonHT);
                    // đổi trạng thái hóa đơn + thêm vào CTHD chính, xóa tạm + Chi tiết giờ
                    foreach (DTO_ChiTietHoaDon item in DanhSachHoaDon)
                    {
                        //thêm vào chi tiết hóa đơn chính
                        int IDHangHoa = item.IDHangHoa;
                        int SoLuong = item.SoLuong;
                        double DonGia = item.DonGia;
                        double ThanhTien = item.ThanhTien;
                        string MaHangHoa = item.MaHangHoa;
                        int IDDonViTinh = item.IDDonViTinh;
                        float TrongLuong = item.TrongLuong;
                        //thêm chi tiết hóa đơn chính, - nguyên liệu hàng hóa
                        if (DAO_ChiTietHoaDonChinh.ThemChiTietHoaDonChinh(IDHoaDonHT, IDHangHoa, SoLuong, DonGia, ThanhTien, IDBanHT, MaHangHoa, IDDonViTinh, TrongLuong) == false)
                        {
                            insert = false;
                        }
                        else
                        {
                            if (TrongLuong == 0)
                            {
                                // trừ tồn kho nguyên liệu chế biến
                                List<DTO_NguyenLieu> ListNguyenLieu = DAO_NguyenLieu.Instance.LoadNguyenLieu(IDHangHoa);
                                if (ListNguyenLieu.Count > 0)
                                {
                                    foreach (DTO_NguyenLieu itemNL in ListNguyenLieu)
                                    {
                                        double SLTru = (itemNL.TrongLuong * SoLuong);
                                        DAO_Setting.TruTonKho(itemNL.IDNguyenLieu, frmDangNhap.NguoiDung.Idchinhanh, SLTru);
                                        // trừ tồn kho
                                    }
                                }
                            }
                            else if (TrongLuong > 0)
                            {
                                //trừ nguyên liệu tự chọn
                                DAO_Setting.TruTonKho(IDHangHoa, frmDangNhap.NguoiDung.Idchinhanh, SoLuong * TrongLuong);
                            }
                        }
                    }
                    if (insert == true)
                    {
                        // xóa chi tiết hóa đơn temp, cập nhật chi tiết giờ thanh toán  = 1,
                        if (DAO_ChiTietHoaDonChinh.XoaChiTietHoaDonTemp(IDHoaDonHT) == true && DAO_ChiTietHoaDonChinh.CapNhatChiTietGio(IDHoaDonHT, IDBanHT) == true)
                        {
                            // cập nhật trạng thái hóa đơn đã thanh toán, đổi trạng thái bàn
                            int IDNhanVien = frmDangNhap.NguoiDung.Id;
                            double KhachThanhToan = double.Parse(txtKhachThanhToan.Text.ToString());
                            double TienThua = double.Parse(txtTienThoi.Text.ToString());
                            double GiamGia = double.Parse(txtTienSauGiamGia.Text.ToString());
                            double KhachCanTra = double.Parse(txtKhachCanTra.Text.ToString());
                            string HinhThucThanhToan = cmbHinhThucGiamGia.Text.ToString();
                            double TienGiamGia = double.Parse(txtTienSauGiamGia.Text.ToString());
                            double TyLeGiamGia = double.Parse(txtGiamGia.Text.ToString());
                            if (DAO_ChiTietHoaDonChinh.CapNhatHoaDonChinh(IDHoaDonHT, IDBanHT, IDNhanVien, KhachThanhToan, TienThua, KhachCanTra, HinhThucThanhToan, GiamGia, TyLeGiamGia, TienGiamGia) == true && DAO.DAO_BAN.XoaBanVeMatDinh(IDBanHT) == true)// thành công
                            {
                                txtKhachThanhToan.Text = "0";
                                txtTienThoi.Text = "0";
                                cmbHinhThucGiamGia.SelectedIndex = 0;
                                txtTienSauGiamGia.Text = "0";
                                txtKhachCanTra.Text = "0";
                                DanhSachBan();
                                HienThiHoaDon(IDBanHT);

                                if (MessageBox.Show("In hóa đơn", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
                                {
                                    // in hóa đớn, cập nhật hóa đơn
                                    DAO_ConnectSQL connect = new DAO_ConnectSQL();
                                    // Tên máy in
                                    string NamePrinter = DAO_Setting.LayTenMayInBill();
                                    // Lấy máy in bill..
                                    int IDBill = DAO_Setting.ReportBill();
                                    //for (int i = 1; i <= 2; i++)
                                    //{
                                    if (IDBill == 58)
                                    {
                                        rpHoaDonBanHang_581 rp = new rpHoaDonBanHang_581();
                                        SqlDataSource sqlDataSource = rp.DataSource as SqlDataSource;
                                        sqlDataSource.Connection.ConnectionString += connect.ConnectString();

                                        rp.Parameters["ID"].Value = IDHoaDonHT;
                                        rp.Parameters["ID"].Visible = false;
                                        //rp.ShowPreviewDialog();
                                        rp.Print(NamePrinter);
                                    }
                                    else
                                    {
                                        rpHoaDonBanHang1 rp = new rpHoaDonBanHang1();
                                        SqlDataSource sqlDataSource = rp.DataSource as SqlDataSource;
                                        sqlDataSource.Connection.ConnectionString += connect.ConnectString();

                                        rp.Parameters["ID"].Value = IDHoaDonHT;
                                        rp.Parameters["ID"].Visible = false;
                                        //rp.ShowPreviewDialog();
                                        rp.Print(NamePrinter);
                                    }
                                }
                                //}
                            }
                        }
                    }
                }
            }
        }

        private void btnKetCa_Click(object sender, EventArgs e)
        {
            frmKetCa fr = new frmKetCa();
            fr.ShowDialog();
        }

        private void btnInTam_Click(object sender, EventArgs e)
        {
            InTamHoaDon();
        }

        private void btnTachHoaDon_Click(object sender, EventArgs e)
        {
            TachBill();
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            ThanhToanTien();
        }

        private void txtGiamGia_EditValueChanged(object sender, EventArgs e)
        {
            if (cmbHinhThucGiamGia.Text == "$")
            {
                double TienGiam = double.Parse(txtGiamGia.Text.ToString());
                double TongTien = double.Parse(txtTongTien.Text.ToString());
                if (TienGiam > TongTien)
                {
                    txtGiamGia.Text = "0";
                    MessageBox.Show("Tiền giảm giá không thể lớn hơn tiền khách cần trả !!.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    txtKhachCanTra.Text = (TongTien - TienGiam).ToString();
                    txtKhachThanhToan.Text = (TongTien - TienGiam).ToString();
                    txtTienSauGiamGia.Text = TienGiam.ToString();
                }
            }
            else if (cmbHinhThucGiamGia.Text == "%")
            {
                double TyLeGiamGia = double.Parse(txtGiamGia.Text.ToString());
                if (TyLeGiamGia <= 100 && TyLeGiamGia >= 0)
                {
                    double TongTien = double.Parse(txtTongTien.Text.ToString());
                    double TienGiamGia = TongTien * (TyLeGiamGia / (double)100);
                    txtKhachCanTra.Text = (TongTien - TienGiamGia).ToString();
                    txtKhachThanhToan.Text = (TongTien - TienGiamGia).ToString();
                    txtTienSauGiamGia.Text = TienGiamGia + "";
                }
                else
                {
                    txtGiamGia.Text = "0";
                    MessageBox.Show("Giảm giá theo phần trăm trong khoảng 0% đến 100% !!.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void barButtonChonMon_ItemClick(object sender, ItemClickEventArgs e)
        {
            frmGoiMon fr = new frmGoiMon();
            fr.MyGetData = new frmGoiMon.GetKT(GetValueGoiMon);
            fr.ShowDialog();
        }

        private void barButtonDatBan_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DAO_BAN.TrangThaiBan(IDBan) == 0)
            {
                frmDatBan fr = new frmDatBan();
                fr.MyGetData = new frmDatBan.GetString(GetValue);
                fr.ShowDialog();
            }
            else if (DAO_BAN.TrangThaiBan(IDBan) == 1)
            {
                MessageBox.Show("Bàn đã có người đặt.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MessageBox.Show("Bàn đã có người ngồi.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public void GetValue(String str1, String str2, DateTime a)
        {
            string TenKhachHang = str1;
            string DienThoai = str2;
            DateTime GioDat = a;
            bool KT = DAO_BAN.ThemKhachDatBan(TenKhachHang, DienThoai, GioDat, IDBan);
            if (KT == true)
            {
                DAO_BAN.DoiTrangThaiDatBan(IDBan);
                DanhSachBan();
                //MessageBox.Show("Đặt bàn thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            else
            {
                DanhSachBan();
                MessageBox.Show("Đặt bàn Thất Bại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void barButtonXoaBan_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (MessageBox.Show("Chuyển trạng thái bàn về mặc định? Dữ liệu trước sẽ không được lưu lại.", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
            {
                bool KT = DAO_BAN.XoaBanVeMatDinh(IDBan);
                if (KT == true)
                {
                    DAO_HoaDon.XoaDatBan(IDBan);
                    DAO_DatBan.XoaKhachDat(IDBan);
                    DanhSachBan();
                    HienThiHoaDon(IDBan);
                }
                else
                {
                    DanhSachBan();
                    MessageBox.Show("Cập Nhật Thất Bại.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void barButtonChuyenBan_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DAO_BAN.TrangThaiBan(IDBan) == 2)
            {
                frmChuyenBan fr = new frmChuyenBan();
                fr.MyGetData = new frmChuyenBan.GetKT(GetChuyenBan);
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Bàn chưa có món ăn. Không thể chuyển bàn?", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public void GetChuyenBan(int KT, int IDBanChuyen, int IDBanNhan, int IDHoaDon)
        {
            if (KT == 1)
            {
                TinhTongTien(IDHoaDon);
                HienThiHoaDon(IDBanNhan);
                DanhSachBan();
            }
            else
            {
                MessageBox.Show("Chuyển bàn không thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DanhSachBan();
            }
        }
        private void barButtonTachBan_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DAO_BAN.TrangThaiBan(IDBan) == 2)
            {
                frmTachBan fr = new frmTachBan();
                fr.MyGetDataTachBan = new frmTachBan.GetKT(GetTachBan);
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Bàn chưa có món ăn. Không thể tách bàn?", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public void GetTachBan(int KT, int IDHoaDonA, int IDHoaDonB)
        {
            if (KT == 1)
            {
                DanhSachBan();
                TinhTongTien(IDHoaDonA);
                TinhTongTien(IDHoaDonB);
                gridControlCTHD.DataSource = null;
                gridControlCTHD.Refresh();
                // MessageBox.Show("Tách bàn thành Công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            else
            {
                MessageBox.Show("Tách bàn không thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DanhSachBan();
            }
        }
        private void barButtonGopBan_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DAO_BAN.TrangThaiBan(IDBan) == 2)
            {
                frmGopBan fr = new frmGopBan();
                fr.MyGetDataGopBan = new frmGopBan.GetKT(GetGopBan);
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Bàn chưa có món ăn. Không thể gộp bàn?", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public void GetGopBan(int KT, int IDBanA, int IDBanB, int IDHoaDon)
        {
            if (KT == 1)
            {
                DanhSachBan();
                TinhTongTien(IDHoaDon);
                gridControlCTHD.DataSource = null;
                gridControlCTHD.Refresh();
                //MessageBox.Show("Gộp bàn thành Công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            else
            {
                MessageBox.Show("Gộp bàn không thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                DanhSachBan();
            }
        }
    }
}