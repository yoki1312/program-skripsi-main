<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubKategori extends Model
{
    use HasFactory;
    
    protected $guarded = [];
    protected $table ='subkategori';
    protected $primaryKey ='id_subKategori';
}
