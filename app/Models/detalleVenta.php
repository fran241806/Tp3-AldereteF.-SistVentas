<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class detalleVenta
 * @package App\Models
 * @version February 24, 2018, 3:53 am UTC
 */
class detalleVenta extends Model
{
    use SoftDeletes;

    public $table = 'detalle_ventas';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'cantidad',
        'subtotal',
        'venta_id',
        'producto_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'cantidad' => 'integer',
        'subtotal' => 'integer',
        'venta_id' => 'integer',
        'producto_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

     public function producto(){
        return $this->belongsTo('App\Models\producto');
    } 

public function Venta(){
        return $this->belongsTo('App\Models\venta');
    }
   

    
}
