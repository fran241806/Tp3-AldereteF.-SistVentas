<?php

namespace App\Repositories;

use App\Models\detalleVenta;
use InfyOm\Generator\Common\BaseRepository;

class detalleVentaRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'cantidad',
        'subtotal',
        'venta_id',
        'producto_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return detalleVenta::class;
    }
}
