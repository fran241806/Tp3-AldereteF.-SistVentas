<!-- Cliente Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('venta_id', 'Numero de venta:') !!}
    {!! Form::text('venta_id', $ventas->id, ['class' => 'form-control','readonly'=>'readonly']) !!}
    {!! Form::label('fecha', 'Fecha:') !!}
    {!! Form::date('fecha', $ventas->fecha, ['class' => 'form-control','readonly'=>'readonly']) !!}
    {!! Form::label('cliente_id', 'Cliente:') !!}
    {!! Form::text('cliente', $ventas->cliente->nombre, ['class' => 'form-control','readonly'=>'readonly']) !!}
    
</div>


<!-- Producto Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('producto_id', 'Seleccione el Producto:') !!}
    {!! Form::select('producto_id', $productos, null, ['class' => 'form-control']) !!}
        {!! Form::label('Cantidad', 'Cantidad:') !!}
    {!! Form::text('cantidad', null, ['class' => 'form-control','placeholder'=>'ingrese cantidad']) !!}
    
</div>




<!-- Submit Field -->
<div class="form-group col-sm-12">
   {!! Form::submit('Agregar a la venta', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('detalleVentas.index') !!}" class="btn btn-default">Cancelar venta</a>
     
<div class="table-responsive">
    <table class="table table-hover" id="table">
        <thead>
            <tr>
               
        <th>Producto</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Subtotal</th>
        <th>Cliente</th>
        
            </tr>
        </thead>
        <tbody>
          @foreach($ventas->detalleVenta as $detalleVenta) 
        <tr>
            <td>{!!$detalleVenta->producto_id!!} - {!!$detalleVenta->producto->nombre!!}</td>
            <td>{!!$detalleVenta->producto->precio!!}</td>
            <td>{!!$detalleVenta->cantidad!!}</td>
            <td>{!!$detalleVenta->subtotal!!}</td>
            <td>{!!$ventas->cliente->nombre!!}</td>
            
        </tr>
         @endforeach
        </tbody>
    </table>
</div>
</div>





