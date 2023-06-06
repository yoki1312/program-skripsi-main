@extends('layouts.admin.template_view')
@section('konten')
@foreach($barang as $res)

<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Edit Barang</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Barang</a></li>
                    <li class="breadcrumb-item active">Edit</li>
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
                        <h3 class="card-title">Edit Barang</h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="from-group row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form action="{{ url('/barang/update') }}" method="POST" autocomplete="off"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="control-group after-add-more">
                                        <div class="container-fluid">
                                            <div class="card card-default">
                                                <div class="card-header ">
                                                    <div class="row">
                                                    <div class="col-lg-6 col-sm-12">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-sm-12">
                                                                    <label>Nama Barang</label>
                                                                    <input type="text" name="nama" id="nama_tanaman"
                                                                        class="form-control form-control-sm" value="{{ $res->nama_barang }}">
                                                                </div>

                                                                <div class="col-lg-6 col-sm-6">
                                                                    <label class="form-label">Kategori</label>
                                                                    <select class="select2 form-control form-control-sm"
                                                                        style="width:100%;" name="id_kategori">
                                                                        <option value="{{ $res->id_kategori }}" selected >{{ $res->nama_kategori }}</option>
                                                                        @foreach($kategori as $r)
                                                                        <option value="{{ $r->id_kategori }}">
                                                                            {{ $r->nama_kategori }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                 
                                                                <div class="col-lg-6 col-sm-12">
                                                                    <label>Harga Awal</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rm</div>
                                                                        </div>
                                                                        <input name="hargaAwal"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm" value="{{ $res->hargaAwal }}">

                                                                    </div>
                                                                </div>
                                                                <input hidden type="text" name="id_barang" value="{{ $res->id_barang }}" />
                                                                <div class="col-lg-6 col-sm-12">
                                                                    <label>Harga Jual</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rm</div>
                                                                        </div>
                                                                        <input name="hargaJual"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm" value="{{ $res->hargaJual }}">

                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-sm-12">
                                                                    <label>Harga Reseler</label>
                                                                    <div class="input-group mb-2">
                                                                        <div class="input-group-prepend">
                                                                            <div class="form-control form-control-sm"
                                                                                class="input-group-text">Rm</div>
                                                                        </div>
                                                                        <input name="hargaReseler"
                                                                            data-inputmask="'alias': 'currency', 'prefix': ''"
                                                                            type="text"
                                                                            class="rupiah form-control form-control-sm" value="{{ $res->hargaReseler }}">

                                                                    </div>
                                                                </div>
                                                                 
                                                                <div class="col-lg-6 col-sm-6">
                                                                    <label>Diskon </label><br>
                                                                    <div class="input-group">
                                                                        <input value="{{ $res->diskon }}" name="diskon" value="0"
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
                                                                <textarea name="deskripsi" id="keterangan"> {{ $res->deskripsi }}
                                                            </textarea>

                                                            </div>


                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>

                                                    <div class="col-lg-12 col-sm-12">
                                                        <div class="container-fluid">
                                                            <div class="card card-default">
                                                                <div class="card-header ">
                                                                        <label>Foto Sampul</label>
                                                                    <div class="row">
                                                                        <div class="col-sm-3 text-left"
                                                                            style="margin-right:100px;margin-bottom:20px;">
                                                                            @if(!empty($res->gambar_sampul))
                                                                            <img src="{{ url('/upload/img_barang/',$res->gambar_sampul) }}"
                                                                                class="img-rounded" alt="Cinque Terre"
                                                                                width="304" height="236"><br><br>
                                                                            <br>
                                                                            <button  width="100%" type="button" id="{{ $res->id_barang }}"
                                                                                class="btn btn-danger btn-sm hapus-foto-barang"><i
                                                                                    class="fa fa-trash"></i> Hapus</button>
                                                                            <input style="display:none" hidden name="gambar_old" value="{{ $res->gambar_sampul }}" class="foto_tips" />

                                                                            @else
                                                                            <input type="file" name="gambar_sampul" class="foto_tips" />
                                                                            @endif
                                                                        </div><br><br>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-sm-12">
                                                        <div class="container-fluid">
                                                            <div class="card card-default">
                                                                <div class="card-header ">
                                                                        <label>Detail Foto</label>
                                                                    <div class="row">
                                                                        @foreach($barang_detail as $dt)
                                                                        <div class="col-sm-3 text-left"
                                                                            style="margin-right:100px;margin-bottom:20px;">
                                                                            <img src="{{ url('/upload/img_detail_barang/',$dt->foto) }}"
                                                                                class="img-rounded" alt="Cinque Terre"
                                                                                width="304" height="236"><br><br>
                                                                            <a href="{{ url('hapus/foto/individu',$dt->id) }}"
                                                                                width="100%" type="button"
                                                                                class="btn btn-danger btn-sm"><i
                                                                                    class="fa fa-trash"></i> Hapus</a>
                                                                            <br>
                                                                        </div><br><br>

                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <br>
                                                    <label for="chkPassport">
                                                        <input type="checkbox" id="chkPassport" />
                                                        Tambah Foto?
                                                    </label>
                                                    <div id="dvPassport" style="display: none">
                                                        <label for="input">foto</label>
                                                        <div class="file-loading">
                                                            <input id="input" name="filename[]" type="file" multiple>
                                                        </div><br>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <a href="{{ url('barang') }}" type="button" class="btn btn-sm btn-danger"><i
                                            class="fa fa-ban" aria-hidden="true"></i> Kembali</a>
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
@endforeach
@endsection
