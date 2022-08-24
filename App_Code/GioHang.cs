using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class GioHang
{
    public GioHang()
    {
    }
    private string hinh;

    public string Hinh
    {
        get { return hinh; }
        set { hinh = value; }
    }

    private int msp;

    public int MSP
    {
        get { return msp; }
        set { msp = value; }
    }
    private string tenSP;

    public string TenSP
    {
        get { return tenSP; }
        set { tenSP = value; }
    }

    private int gia;

    public int Gia
    {
        get { return gia; }
        set { gia = value; }
    }

    private int soLuong;

    public int SoLuong
    {
        get { return soLuong; }
        set { soLuong = value; }
    }

    private int thanhTien;

    public int ThanhTien
    {
        get { return soLuong * gia; }

    }
}

