using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class frmSanPham : Form
    {
        public frmSanPham()
        {
            InitializeComponent();
        }

        private void frmSanPham_Load(object sender, EventArgs e)
        {
            //load list san pham khi an vao san pham thi gan hinh bang cach duoi
            // danh oi, xong chua, cam on m nha
            // pcbSanPham.Image = Image.FromFile("đường dẫn lưu ở database");
        }

        private void btnChonAnh_Click(object sender, EventArgs e)
        {
            DialogResult result =  openFileDialog1.ShowDialog();
            if(result == DialogResult.OK)
            {
                pcbSanPham.Image = Image.FromFile(openFileDialog1.FileName);
                pcbSanPham.SizeMode = PictureBoxSizeMode.StretchImage;
                MessageBox.Show(openFileDialog1.FileName.ToString());
            }    
        }
    }
}
