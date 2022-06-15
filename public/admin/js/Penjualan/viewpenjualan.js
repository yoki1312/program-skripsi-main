$(document).ready(function () {
    closeSidebar();
    $(document).on('click', '.btn-edit-harga', function () {
        $(this).closest('tr').find('.harga').removeAttr("readonly");
    })
    $(document).on('change', '.diskon-checked', function(){
        if($(this).is(':checked')){
            $('.diskon-row').show()
            $('.diskon').attr('readonly', false);
        }else{
            $('.diskon').attr('readonly', true);
            $('.diskon-row').hide()
        }
    })
    $('#sbdata').DataTable({
        "searching": true,
        "autoWidth": true,
        "responsive": true,
        "processing": true,
        "serverSide": false,
        "displayLength": 10,
        "paginate": true,
        "lengthChange": true,
        "filter": true,
        "bInfo": false,
        "select": true,
        ajax: {
            url: base_url + 'barangAll',
            data: function (d) {
                d.id_induk = (($('.id_induk').val() != null ? $('.id_induk').val() : null))
            }
        },
        columns: [{
                data: 'blank',
            },
            {
                data: 'nama_barang',
                render: function (data, type, row) {
                    return data + "<br><span class='badge badge-primary'>Kode Barang " + row.kode + "</span>";
                }
            },

            {
                data: null,
                class: 'text-right rupiah',
                render: function (data, type, row) {
                    var jenisCust = $('.jenisCustomer').val();
                    return (jenisCust == '1' ? row.hargaReseler : row.hargaPersonal);
                }

            },
            {
                data: 'diskon',
                class: 'text-right',
                render: $.fn.dataTable.render.number(',', '.', 2, 'Rp ')
            },
        ],
        rowGroup: {
            dataSrc: 'nama_kategori',
            startRender: function (rows, group) {
                return group + ' <button type="button" class=" text-right btn btn-xs btn-info"> Stock <span class="badge badge-light">' + rows.count() + ' Pcs </span></button>';
            }
        },
        orderFixed: [
            [2, 'asc']
        ],
    });
    $('.select2').select2({});
    $('.id_induk').on('change', function () {
        $('#sbdata').DataTable().ajax.reload();
    });
    $('.jenisCustomer').on('change', function () {
        $('#sbdata').DataTable().ajax.reload();
    });



    $('.datepicker').datepicker({
        format: 'mm-dd-yyyy',
    });


    $('table').on('click', 'tr .btn-hapus', function (e) {
        e.preventDefault();
        $(this).closest('tr').remove();
        summHarga();
    });
    $(".total-pembelian").inputmask({
        removeMaskOnSubmit: true,
        autoUnmask: true,
        unmaskAsNumber: true
    });

});

$('#sbdata tbody').on('click', 'td', function () {
    var cust = $('.jenisCustomer').val();
    var data = $('#sbdata').DataTable().row($(this).parents('tr')).data();
    console.log(data);
    var td = '';
    var hargaRedy;
    if (cust == "0") {
        hargaRedy = data.hargaPersonal;
    } else {
        hargaRedy = data.hargaReseler;
    }
    td += '<tr>'
    td += '<td><input disabled value="' + data.nama_barang + '" type="text" class="form-control form-control-sm namabarang" /></td>'
    td += '<td><input onchange="summHarga()" value="' + hargaRedy + '" type="text" class=" input-mask form-control form-control-sm harga-barang" name="harga[]" /></td>'
    td += '<td><input readonly onchange="summHarga()" value="' + data.diskon + '" class=" input-mask form-control form-control-sm diskon text-right" type="text" name="diskon[]" /></td>'
    td += '<td><input value="' + (data.diskon != 0 ? parseFloat(data.hargaJual - data.diskon) : hargaRedy) + '" class=" input-mask form-control form-control-sm sub-total" type="text" /></td>'
    td += '<td><button type="button" class="btn btn-hapus btn-circle btn-default"><i class="fa fa-trash"></i></button> <button type="button" class="btn btn-edit-harga btn-circle btn-success"><i class="fa fa-edit"></i></button><input value="' + data.id_barang + '" class="form-control form-control-sm id_barang" type="hidden" name="id_barang[]" /></td>'
    td += '</tr>';
    var lasttd = $('#assa').find('tbody');
    lasttd.append(td);
    let lastElement = $('#assa').find('tbody').find('tr').last();
    lastElement.find('.input-mask')
        .attr("data-inputmask", "'alias': 'currency', 'prefix': '', 'digits': '0', 'max': '" + hargaRedy + "'")
        .inputmask({
            removeMaskOnSubmit: true
        }).on('focus', function () {
            $(this).select();
        });
    summHarga();
    $('.bd-example-modal-lg').modal('hide')
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
});

function reset() {
    $('#sbdata').DataTable().ajax.reload();
}

function summHarga() {
    var subtotal = 0;
    var total_after_diskon = 0;
    var total_before_diskon = 0;
    let tipe_diskon = $('.type-diskon:checked').val();
    $('#assa').find('tbody').find('tr').each(function () {
        let harga = parseFloat($(this).find('.harga-barang').inputmask('unmaskedvalue') || 0);
        let valueDiskon = parseFloat($(this).find('.diskon').inputmask('unmaskedvalue') || 0)
        if (valueDiskon > 0) {
            if (tipe_diskon == 1) {
                subtotal = harga - parseFloat((valueDiskon / 100) * harga)
            } else {
                subtotal = harga - valueDiskon
            }
        } else {
            subtotal = harga
        }
        $(this).find('.sub-total').val(subtotal);
        total_after_diskon += subtotal;
        total_before_diskon += harga;
        $('.total-after-diskon').val(total_after_diskon);
        $('.total-before-diskon').val(total_before_diskon);
    })

    var hemat = total_before_diskon - total_after_diskon ;
    if(hemat > 0){
        $('#hemat').text('Anda Hemat Rp ' + hemat + ' Bro');
    }

}
