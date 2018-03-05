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
using QLCafe.DAO;

namespace QLCafe
{
    public partial class frmCaiDatThongTin : DevExpress.XtraEditors.XtraForm
    {
        public frmCaiDatThongTin()
        {
            InitializeComponent();
        }

        private void linkLienHe_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://gpm.vn/");
        }

        private void frmCaiDatThongTin_Load(object sender, EventArgs e)
        {
            DanhSachMayIn();
            ThongTinCuaHang();
        }

        public void DanhSachMayIn()
        {
            foreach (string printer in System.Drawing.Printing.PrinterSettings.InstalledPrinters)
            {
                cmbMayIn.Properties.Items.Add(printer.ToString());
            }
        }

        private void btnLuuLai_Click(object sender, EventArgs e)
        {
            bool KT = DAO_Setting.CapNhatMayInBill(cmbMayIn.Text.ToString(), cmbKhoGiay.Text.ToString(), txtCuaHang.Text.ToString(), txtDiaChi.Text.ToString(), txtSoDienThoai.Text.ToString(), cmbGiaoDien.SelectedIndex.ToString());
            if (KT == true)
            {
                MessageBox.Show("Cập nhật thông tin thành công.", "Thông báo");
                this.Close();
            }

        }

        public void ThongTinCuaHang()
        {
            DataTable thongtin = DAO_Setting.ThongTinCuaHang();
            DataRow dr = thongtin.Rows[0];
            txtCuaHang.Text = dr["CongTy"].ToString();
            txtSoDienThoai.Text = dr["SDT"].ToString();
            txtDiaChi.Text = dr["DiaChi"].ToString();
            int GiaoDienApDung = Int32.Parse(dr["GiaoDienApDung"].ToString());
            switch (GiaoDienApDung)
            {
                case 0:
                    cmbGiaoDien.SelectedIndex = 0;
                    break;
                case 1:
                    cmbGiaoDien.SelectedIndex = 1;
                    break;
                default:
                    cmbGiaoDien.SelectedIndex = 0;
                    break;
            }
            string MayIn = dr["MayIn"].ToString();
            cmbMayIn.EditValue = MayIn;

            int ReportBill = Int32.Parse(dr["ReportBill"].ToString());
            switch (ReportBill)
            {
                case 58:
                    cmbKhoGiay.SelectedIndex = 0;
                    break;
                case 80:
                    cmbKhoGiay.SelectedIndex = 1;
                    break;
                default:
                    cmbKhoGiay.SelectedIndex = 0;
                    break;
            }
        }

    
    }
}