<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Barang;

class DetailBarang extends Model
{
    use HasFactory;
    protected $table='detail_barang';

    public function barang(){
        return $this->belongsTo(Barang::class);
    }
}
