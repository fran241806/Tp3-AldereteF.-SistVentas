<!-- Tipo Field -->
<div class="form-group col-sm-6">
    {!! Form::label('tipo', 'Tipo:') !!}
    {!! Form::text('tipo', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Guardar Categoria', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('categorias.index') !!}" class="btn btn-default">Cancelar</a>
</div>
