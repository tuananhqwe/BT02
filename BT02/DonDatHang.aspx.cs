using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BT02
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlbanh.Items.Add(new ListItem("Pha lau", "01"));
                ddlbanh.Items.Add(new ListItem("Pho", "02"));
                ddlbanh.Items.Add(new ListItem("Hu tieu", "03"));

            }
        }

        protected void btnin_Click(object sender, EventArgs e)
        {
            string orderInfo = "Thông tin đơn hàng:<br />";
            orderInfo += "Khách hàng: " + txtHoTen.Text + "<br />";
            orderInfo += "Địa chỉ: " + txtDiaChi.Text + "<br />";
            orderInfo += "Mã số thuế: " + txtThue.Text + "<br />";
            orderInfo += "Loại bánh đã đặt:<br />";
            foreach (ListItem item in lstbanh.Items)
            {
                orderInfo += "- " + item.Text + "<br />";
            }

            
            orderDetails.InnerHtml = orderInfo;
        }

        protected void btnchuyen_Click(object sender, EventArgs e)
        {
            string item = ddlbanh.SelectedItem.Text;
            int soluong = int.Parse(txtsoluong.Text);
            string thongtin = item + "(" + soluong + ")";
            lstbanh.Items.Add(new ListItem(thongtin));
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            for (int i = lstbanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstbanh.Items[i].Selected)
                {
                    // Nếu mục được chọn, loại bỏ nó khỏi ListBox
                    lstbanh.Items.RemoveAt(i);
                }
            }
        }
    }
}