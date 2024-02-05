<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Colleague extends Model
{
    use HasFactory;

    protected $fillable = ['office_id','colleague_name', 'colleague_mobile', 'colleague_address'];

    public function office()
    {
        return $this->belongsTo(Office::class);
    }
}
