<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class venta
 * @package App\Models
 * @version February 24, 2018, 3:49 am UTC
 */
class venta extends Model
{
    use SoftDeletes;

    public $table = 'ventas';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'fecha',
        'cliente_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'fecha' => 'date',
        'cliente_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    public function detalleVenta(){
        return $this->hasMany('App\Models\detalleVenta');
    }

public function cliente(){
        return $this->belongsTo('App\Models\cliente');
    }


    
}
