@extends('v2.index')
@section('konten_area')
<main class="bg_gray" style="transform: none; margin-top:70px;">
    <div class="container margin_60_20">
        <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-8">
                <div class="theiaStickySidebar"
                    style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none; top: 0px; left: 810px;">
                    <div class="box_order">
                        <div class="head">
                            <h3>Detail Barang</h3>
                        </div>
                        <!-- /head -->
                        <div class="main">
                            <div class="review_card">
                                <div class="row">
                                    <div class="col-md-10 review_content">

                                        <h4>"{{ $data->nama_barang }}"</h4>
                                        <small><b>{{ $data->nama_kategori }}</b></small>
                                        <p>{{ $data->deskripsi }}</p>
                                        <div class="clearfix add_bottom_15">
                                            <span class="rating">Rm. {{ number_format($data->hargaJual,0) }}</span>
                                        </div>
                                        <div class="clearfix add_bottom_15">
                                            <label class="form-label">Rating Barang</label><br>
                                            <span data-star="1" class="rating-glob-barang rating-glob-row-1 fa fa-star"></span>
                                            <span data-star="2" class="rating-glob-barang rating-glob-row-2 fa fa-star"></span>
                                            <span data-star="3" class="rating-glob-barang rating-glob-row-3 fa fa-star"></span>
                                            <span data-star="4" class="rating-glob-barang rating-glob-row-4 fa fa-star"></span>
                                            <span data-star="5" class="rating-glob-barang rating-glob-row-5 fa fa-star"></span>
                                            <hr>
                                        </div>
                                        <ul style="">
                                            <!-- <li
                                                style="display: inline-block;/* background: green; */border-radius: 12px;border: 1px green solid;font-c: white;">
                                                <button class="btn btn-sm btn-default"><i class="icon_like"></i>
                                                    &nbsp;<span>Like</span></button></li>
                                            <li
                                                style="display: inline-block;/* background: green; */border-radius: 12px;border: 1px green solid;font-c: white;">
                                                <button class="btn btn-sm btn-default"><i class="icon_dislike"></i>
                                                    &nbsp;<span>Not Like</span></button>
                                            </li> -->
                                            <li
                                                style="display: inline-block;/* background: green; */border-radius: 12px;border: 1px green solid;font-c: white;">
                                                <button class="btn btn-sm btn-default btn-add-komentar"><i
                                                        class="arrow_back"></i>
                                                    &nbsp;<span>Tambah komentar</span></button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                                <!-- /row -->
                            </div>
                            <div class="review_card add-komentar-section"
                                style="padding: 10px 25px 10px 25px; display:none">
                                <label>Tambah Komentar Anda</label>
                                <div class="row">
                                    <div class="col-sm-12">
                                            <label class="form-label">Rating Barang : </label>
                                            <span data-star-barang="1" class="rating-barang fa fa-star"></span>
                                            <span data-star-barang="2" class="rating-barang fa fa-star"></span>
                                            <span data-star-barang="3" class="rating-barang fa fa-star"></span>
                                            <span data-star-barang="4" class="rating-barang fa fa-star"></span>
                                            <span data-star-barang="5" class="rating-barang fa fa-star"></span>
                                    </div>
                                    <div class="col-sm-12">
                                        <textarea cols="3" class="form-control komentar-user"></textarea>

                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <button produk-id="{{ $data->id_barang }}" width="100%"
                                        class="btn btn-info" onclick="postKoment()">Kirim Komentar</button>
                                </div>
                                <!-- /row -->
                            </div>

                        </div>
                    </div>
                    <br>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4">
                <div class="theiaStickySidebar"
                    style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none; top: 0px; left: 810px;">

                    <div class="box_order text-center">
                        <div class="head">
                            <div class="title">
                                <h3>Foto Barang</h3>
                            </div>
                        </div>
                        <!-- /head -->
                        <div class="main">
                            <div class="row">
                                <img id="zoom1" src="{{ asset('upload/img_barang/'.$data->gambar_sampul) }}"
                                    data-zoom-image="{{ asset('upload/img_barang/'.$data->gambar_sampul) }}"
                                    alt="big-1">
                            </div>
                            <br>
                            <br>
                            <div class="row text-center">
                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="buttons clearfix">
                                        <span class="magnific-gallery">
                                            <a href="{{ asset('upload/img_barang/'.$data->gambar_sampul) }}"
                                                class="btn_hero" title="Photo title" data-effect="mfp-zoom-in"><i
                                                    class="icon_image"></i>Lihat Detail Foto</a>
                                            @foreach($detail as $d)
                                            <a href="{{ asset('upload/img_detail_barang/'.$d->foto) }}"
                                                title="Photo title" data-effect="mfp-zoom-in"></a>
                                            @endforeach
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row text-center">
                        <div class="col-sm-12">
                            <button produk-id="{{ $data->id_barang }}" width="100%" class="btn btn-info add-to-cart"
                                n>Tambah Pesanan</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="container margin_30_20">
        <div class="col-xl-8 col-lg-8">
            <div class="theiaStickySidebar"
                style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none; top: 0px; left: 810px;">

                <div class="box_order">
                    <div class="head">
                        <div class="title">
                            <h3>Komentar</h3>
                        </div>
                    </div>
                    <!-- /head -->
                    <div class="main">
                        <div id="reviews">

                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
<input hidden type="text" class="rating-val" value="0" />
</main>
@endsection
@section('js')
<script>
    $(document).on('click', '.rating-barang', function(){
            let index = $(this).attr('data-star-barang');
            let ratingStart = 1;
            $('.rating-barang').removeClass('checked-rating')
            for(i=ratingStart; i<=index; i++){
                $("[data-star-barang='" + i + "']").addClass('checked-rating')
            }
            $('.rating-val').val(index)
        })
    $(document).on('click', '.add-to-cart', function () {
        var auth = $('meta[name="auth"]').attr('content');
        if (auth != null) {
            axios.post('{{ url("add-to-cart") }}', {
                produk_id: $(this).attr('produk-id')
            }).then((response) => {
                var params = response.data;
                console.log(params)
                if (params.status == 200) {
                    Swal.fire(
                        'Berhasil',
                        'Barang ditambahan kedalam keranjang belanja',
                        'success'
                    )
                } else {
                    Swal.fire('Barang Sudah Ada dikeranjang')
                }
                getPreOrder();
            }).catch((error) => {
                console.log(error.response)
            });
        } else {
            Swal.fire('Silahkan Login')
        }
    });
    $(document).on('click', '.btn-add-komentar', function () {
        $('.add-komentar-section').show();
    });
    $(document).on('click', '.btn-hapus-komentar', function () {
        var id_komentar = this.id;
        $.ajax({
            type: "POST",
            url: '{{ url("produk-v2/removeKoment") }}',
            data: {
                "_token": $('meta[name="csrf-token"]').attr('content'),
                "id_komentar": id_komentar
            },
            success: function (response) {
                getKomentProduk();
            }
        });
    });
    getKomentProduk();
    function getKomentProduk() {
        var section = $('#reviews');
        $.ajax({
            type: "POST",
            url: '{{ url("produk-v2/getKomentar/".$data->id_barang) }}',
            data: {
                "_token": $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                var i = 0;
                section.empty();
                var rp_order = 0;
                var templateKosong = `
                        <div class="review_card">
                            <div class="row">
                                <div class="col-md-12 review_content text-center">
                                    <p>Belum Ada Komentar Pada Produk Ini</p>
                                </div>
                                
                            </div>
                        </div>`;
                if(response.length != 0){
                    var nilai_rating = 0;
                    for (i = 0; i < response.length; i++) {
                        var data = response[i];
                        nilai_rating += data['rating'];
                        var template = `
                            <div class="review_card">
                                <div class="row">
                                    <div class="col-md-2 user_info">
                                        <figure> 
                                            <img class="img-koment" src="`+ (data['foto_profile'] == null ? 'https://sman93jkt.sch.id/wp-content/uploads/2018/01/765-default-avatar.png' : `/upload/foto_profile/` + data['foto_profile'] ) +`" alt="...">
                                        </figure>
                                    </div>
                                    <div class="col-md-10 review_content">
                                        <div class="clearfix add_bottom_15">
                                            <em>Komentar pada ` + data['created_at'] + ` Oleh <b>` + data['name'] + `</b></em>
                                        </div>
                                        <div class="clearfix add_bottom_15">
                                        <label class="form-label">Rating Barang : </label>
                                            <span data-star-barang="1" class="` + ( data['rating'] >= 1 ? 'checked-rating' : ''  ) + ` fa fa-star"></span>
                                            <span data-star-barang="2" class="` + ( data['rating'] >= 2 ? 'checked-rating' : ''  ) + ` fa fa-star"></span>
                                            <span data-star-barang="3" class="` + ( data['rating'] >= 3 ? 'checked-rating' : ''  ) + ` fa fa-star"></span>
                                            <span data-star-barang="4" class="` + ( data['rating'] >= 4 ? 'checked-rating' : ''  ) + ` fa fa-star"></span>
                                            <span data-star-barang="5" class="` + ( data['rating'] >= 5 ? 'checked-rating' : ''  ) + ` fa fa-star"></span>
                                        </div>
                                        <p>` + (data['koment'] == null ? '' : data['koment']) + `</p>
                                        <ul>
                                                <li><a type="button" class="btn-hapus-komentar" id="`+data['id_koment']+`"><span>Hapus Komentar</span></a></li>
                                        </ul>
                                    </div>
                                    
                                </div>
                            </div>`;
                            section.append(template);
                    }

                    let total_rating_produk = Math.floor(nilai_rating/ response.length);
                    $('.rating-glob-barang').removeClass('checked-rating');
                    console.log(total_rating_produk);
                    for(i=1; i<=total_rating_produk; i++){
                        $(".rating-glob-row-" + i).addClass('checked-rating');
                    }
                }else{
                        section.append(templateKosong);
                }
            }
        });
    };
    function postKoment(){
        let id_user = "{{ (isset(Auth::user()->id) ? Auth::user()->id : null) }}";
        console.log(id_user);
        if(id_user == ''){
            return  Swal.fire('Silahkan Login')
        }
        $.ajax({
            type: "POST",
            url: '{{ url("produk-v2/postKoment") }}',
            data: {
                "_token": $('meta[name="csrf-token"]').attr('content'),
                "komentar": $('.komentar-user').val(),
                "produk_id": "{{ $data->id_barang }}",
                "rating" : $('.rating-val').val()
            },
            success: function (response) {
                getKomentProduk();
                $('.komentar-user').val('');
                $('.add-komentar-section').hide();
            }
        });
    }

</script>
@endsection
