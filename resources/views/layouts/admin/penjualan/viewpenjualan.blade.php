@extends('layouts.admin.template_view')
@section('konten')
<style>
    .select2-selection__rendered {
        margin-top: -9px !important;
    }

</style>
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Penjualan</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Transaksi</a></li>
                    <li class="breadcrumb-item active">Tambah</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<section class="content">
    <div class="container-fluid">
        <div class="card card-default">
            <div class="card-header">
                <div class="row">
                    <div class="col-12">
                        <h3 class="card-title">Penjualan </h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="from-group row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form action="{{ url('penjualan/store') }}" method="POST" autocomplete="off"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="control-group ">
                                        <div class="form-row">

                                            <div class="col-lg-6 col-sm-12" id="wrapper">
                                                <label>Nama Customer</label>
                                                <input required class="form-control form-control-sm" type="text"
                                                    name="nama_customer" class="form-control ">
                                                <input readonly class="form-control form-control-sm jumlah_barang"
                                                    type="text" name="jumlah_barang" value="<?= count($barang) ?>"
                                                    hidden class="form-control ">
                                            </div>
                                            <div class="col-lg-6 col-sm-12">
                                                <label>Alamat</label>
                                                <input required class="form-control form-control-sm" type="text"
                                                    name="alamat_customer" class="form-control ss" id="ss">
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-6 col-sm-6">
                                                <label>Catatan</label><br>
                                                <textarea name="catatan" class="form-control"
                                                    id="exampleFormControlTextarea1"
                                                    style="height: 30px !important;">#plantshop.id</textarea>

                                            </div>
                                            <div class="col-lg-3 col-sm-6">
                                                <label>Tanggal Pembelian</label>
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <div class="form-control form-control-sm"
                                                            class="input-group-text">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </div>
                                                    </div>
                                                    <input name="tanggal_penjualan" value="<?= date('d-m-Y') ?>"
                                                        class="datepicker form-control form-control-sm ">

                                                </div>
                                            </div>

                                            <div class="col-lg-3 col-sm-6">
                                                <label>Customer</label>
                                                <select name="jenis_customer" style="width:100%"
                                                    class="jenisCustomer select2">
                                                    <option value="0">Personal</option>
                                                    <option value="1">Reseller</option>
                                                </select>
                                            </div>
                                        </div>
                                        <hr>
                                        <p style="font-size:20px;">Detail Barang</p>
                                        <hr>
                                        <div id="ayaa" class="form-row">
                                            <div class="col-12">
                                                <div class="table-responsive">
                                                    <table id="assa" class="table table-sm table-condensed text-center"
                                                        width="100%">
                                                        <thead>
                                                            <tr class="table-info">
                                                                <th>Nama Barang</th>
                                                                <th>Harga</th>
                                                                <th>Diskon <input type="checkbox" class="diskon-checked">
                                                                    <div style="display:none;" class="diskon-row">
                                                                        <input type="radio" onchange="summHarga()" name="bedStatus" class="type-diskon" id="persen"
                                                                            value="1">Persen
                                                                        <input checked="checked" type="radio"
                                                                            name="bedStatus" onchange="summHarga()" id="rupiah" class="type-diskon" value="2">
                                                                        Rupiah
                                                                    </div>

                                                                </th>
                                                                <th>Total Harga </th>
                                                                <th width="80px"><button data-toggle="modal"
                                                                        data-target=".bd-example-modal-lg" type="button"
                                                                        class="btn btn-danger btn-circle"><i
                                                                            class="fa fa-plus"></i></button></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <td>Total</td>
                                                                <td class="text-right"><input readonly
                                                                        style="border:none;"
                                                                        data-inputmask="'alias': 'currency', 'prefix': '', 'digits': '0'"
                                                                        type="text" name="total"
                                                                        class="total-pembelian total-before-diskon">
                                                                </td>
                                                                <td></td>
                                                                <td class="text-right"><input readonly
                                                                        style="border:none;"
                                                                        data-inputmask="'alias': 'currency', 'prefix': '', 'digits': '0'"
                                                                        type="text" name="total"
                                                                        class="total-pembelian total-after-diskon">
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="1" class="text-right"></td>
                                                                <td> </td>
                                                                <td> </td>
                                                                <td colspan="1"><b>
                                                                        <p style="font-size:16px;" id="hemat"></p>
                                                                    </b>
                                                                </td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                        </div>
                    </div>
                </div>
                <hr>
                <a href="{{ url('barang') }}" type="button" class="btn btn-sm btn-danger"><i class="fa fa-ban"
                        aria-hidden="true"></i> Cancel</a>
                <button class="btn btn-sm btn-success" type="submit"><i class="fa fa-floppy-o" aria-hidden="true"></i>
                    Simpan</button>
                </form>
            </div>
        </div>
    </div>
</section>
<div class="modal fade bd-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <label>&nbsp;</label>
                        <button onclick="reset()" type="button" class="reset btn-sm btn btn-info">
                            <i class="fa fa-refresh" aria-hidden="true"></i> Reset
                        </button>
                        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                    <div class="col-md-6">
                        <label>Jenis Barang </label>
                        <select width="100%" class="id_induk select2">
                            <option selected disabled>Pilih..</option>
                            <option value="1">Tanaman</option>
                            <option value="2">Non Tanaman</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="sbdata" class="table table-sm table-bordered table-striped table-hover"
                            style="width:100%;">
                            <thead>
                                <tr class="text-center">
                                    <th></th>
                                    <th>Nama Tanaman</th>
                                    <th>Harga</th>
                                    <th>Diskon</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
