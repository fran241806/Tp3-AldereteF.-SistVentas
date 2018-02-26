<!-- Cliente Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('cliente_id', 'Cliente:') !!}
    {!! Form::select('cliente_id', $clientes, null, ['class' => 'form-control']) !!}
</div>

<div class="form-group col-sm-6">
    {!! Form::label('fecha', 'Fecha:') !!}
    {!! Form::date('fecha', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Agregar Nueva Venta', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('ventas.index') !!}" class="btn btn-default">Cancelar</a>
</div>
