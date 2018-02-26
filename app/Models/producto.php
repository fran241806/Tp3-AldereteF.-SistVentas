<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class producto
 * @package App\Models
 * @version February 24, 2018, 3:44 am UTC
 */
class producto extends Model
{
    use SoftDeletes;

    public $table = 'productos';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'nombre',
        'descripcion',
        'stock',
        'precio',
        'categoria_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'nombre' => 'string',
        'descripcion' => 'string',
        'stock' => 'integer',
        'categoria_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

public function categoria(){
        return $this->belongsTo('App\Models\categoria');
    }

public function detalleVenta(){
        return $this->hasMany('App\Models\detalleVenta');
    }

    
}
