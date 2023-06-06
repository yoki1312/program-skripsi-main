@extends('layouts.admin.template_view')
@section('konten')
<div role="dialog" class="modal fade bd-example-modal-lg" id="bankdata" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="padding:20px;">
            <table id="sbdata" class="table table-sm table-bordered table-striped table-hover" style="width:100%; ">
                <thead>
                    <tr class="text-center">
                        <th width="15px">No</th>
                        <th>Nama Tanaman</th>
                        <th>Nama Latin</th>
                        <th>Kategori Tanaman</th>
                        <th>Jenis Tanaman</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Tambah Barang</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Barang</a></li>
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
                        <h3 class="card-title">Tambah Barang</h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="from-group row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form action="{{ url('/barang/store') }}" method="POST" autocomplete="off"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <input type="text" class="id_bankdata" name="id_bankdata" hidden/>
                                    <div class="control-group after-add-more">
                                        <div class="container-fluid">
                                            <div class="card card-default">
                                                <div class="card-header ">
                                                    <div class="row">
                                                        <div class="col-lg-6 col-sm-12 form-group">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-sm-12 form-group">
                                                                    <label>Nama Barang</label>
                                                                    <input type="text" name="nama" id="nama_tanaman"
                                                                        class="form-control form-control-sm">
                                                                    <input hidden type="text" id="id_kategori"
                                                                        class="form-control form-control-sm">
                                                                </div>
                                                                <div class="col-lg-6 col-sm-6 form-group">
                                                                    <label class="form-label">Kategori</label>
                                                                    <select class="select2 form-control form-control-sm"
                                                                        style="width:100%;" name="id_kategori">
                                                                        <option value="" selected disabled>Pilih
                                                                            Kategori</option>
                                                                        @foreach($kategori as $r)
                                                                        <option value="{{ $r->id_kategori }}">
                                                                            {{ $r->nama_kategori }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                
                                                                <div class="col-lg-6 col-sm-12 form-group">
                                                                    <label>Harga Beli</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rp</div>
                                                                        </div>
                                                                        <input name="hargaAwal"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm">

                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-sm-12 form-group">
                                                                    <label>Harga Jual</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rp</div>
                                                                        </div>
                                                                        <input name="hargaJual"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm">

                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-sm-12 form-group">
                                                                    <label>Harga Reseler</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rp</div>
                                                                        </div>
                                                                        <input name="hargaReseler"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm">

                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-sm-12 form-group">
                                                                    <label>Harga Satuan</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rp</div>
                                                                        </div>
                                                                        <input name="hargaPersonal"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm">

                                                                    </div>
                                                                </div>
                                                                 
                                                                <div class="col-lg-6 col-sm-6">
                                                                    <label>Diskon <input type="checkbox"
                                                                            id="trigger"></label><br>
                                                                    <div class="input-group">
                                                                        <input id="diskon" name="diskon" value="0"
                                                                            type="number"
                                                                            class="form-control form-control-sm"
                                                                            required>
                                                                        <div class="input-group-prepend">
                                                                            <span
                                                                                class="input-group-text form-control form-control-sm"
                                                                                id="inputGroupPrepend2">%</span>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                 
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 col-sm-6">
                                                            <div class="col-12">
                                                                <label>Keterangan</label><br>
                                                                <textarea name="deskripsi" id="keterangan">
                                                               Keterangan
                                                            </textarea>
                                                            </div>
                                                            < 


                                                        </div>
                                                    </div>
                                                    <br>

                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <label for="input">Gambar Sampul</label>
                                                            <div class="file-loading">
                                                                <input id="inputss" name="sampul" type="file" multiple>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <label for="input">foto</label>
                                                            <div class="file-loading">
                                                                <input id="input" name="filename[]" type="file"
                                                                    multiple>
                                                            </div><br>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <a href="{{ url('barang') }}" type="button" class="btn btn-sm btn-danger"><i
                                            class="fa fa-ban" aria-hidden="true"></i> Cancel</a>
                                    <button class="btn btn-sm btn-success" type="submit"><i class="fa fa-floppy-o"
                                            aria-hidden="true"></i>
                                        Simpan</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@if (session('status'))
<script>
  Swal.fire(
            'Data Gagal Tersimpan!',
            'Lengkapi semua form !!',
            'error'
        )
</script>
<?php unset($notif) ?>
@endif

@endsection
