<?php

namespace App\Http\Controllers;

use App\Models\PenjualanBarang;
use Illuminate\Http\Request;
use DB;
use Auth;
use Session;
class TransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id_user = Auth::user()->id;
        $data = DB::select("SELECT
        te.keterangan,
        tf.no_resi,
        tf.id_ongkir,
        te.keterangan as status_transaksi,
        ta.*,
        CONCAT( '[', GROUP_CONCAT( json_object( 'nama_barang', tc.nama_barang, 'harga', tc.hargaAwal, 'kategori', td.nama_kategori , 'gambar_sampul',tc.gambar_sampul)), ']' ) AS detail_barang 
    FROM
        penjualan ta
        LEFT JOIN detail_penjualan tb ON ta.id_penjualan = tb.id_penjualan
        LEFT JOIN barang tc ON tb.id_barang = tc.id_barang
        LEFT JOIN kategori td ON tc.id_kategori = td.id_kategori
        LEFT JOIN status_penjualan te ON ta.id_status_penjualan = te.id_status
        LEFT JOIN tbl_ongkir tf ON ta.id_penjualan = tf.id_penjualan 
    WHERE ta.id_users = '$id_user'
    GROUP BY
        ta.id_penjualan");

        $dataPending = DB::select($this->getPembelian(0));
        return view('v2.transaksi',compact('data','dataPending'));
    }
    
    function getPembelian($id_pembelian){
        $id_user = Auth::user()->id;
        $sql = "SELECT
        ta.*,
        CONCAT( '[', GROUP_CONCAT( json_object( 'nama_barang', tc.nama_barang, 'harga', tc.hargaAwal,'kategori',td.nama_kategori,'gambar_sampul',tc.gambar_sampul )), ']' ) AS detail_barang 
    FROM
        penjualan ta
        LEFT JOIN detail_penjualan tb ON ta.id_penjualan = tb.id_penjualan
        LEFT JOIN barang tc ON tb.id_barang = tc.id_barang 
        LEFT JOIN kategori td ON tc.id_kategori = td.id_kategori
    WHERE ta.id_users = '$id_user' and ta.id_status_penjualan = '$id_pembelian'
    GROUP BY
        ta.id_penjualan";
        return $sql;
    }

    public function pembatalanTransaksi($id){
        DB::table('penjualan')->where('id_penjualan',$id)->delete();
        return redirect()->back()->with(['success' => 'Pembatalan transaksi berhasil']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    public function uploadBukti(Request $request)
    {
         //mengambil data file yang diupload
         $file           = $request->file('foto_pembayaran'); 
         $nama_file      = $file->getClientOriginalName(); 
         $file->move('bukti_pembayaran',$file->getClientOriginalName());

        PenjualanBarang::where('id_penjualan', $request->id_penjualan)->update([
            'file_pembayaran' => $nama_file,
            'id_status_penjualan' => 7
        ]);

        Session::flash('success','Upload bukti berhasil');
        return redirect('transaksi-v2');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
