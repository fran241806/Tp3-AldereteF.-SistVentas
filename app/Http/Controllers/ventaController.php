<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateventaRequest;
use App\Http\Requests\UpdateventaRequest;
use App\Repositories\ventaRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;
use App\Models\cliente;

class ventaController extends AppBaseController
{
    /** @var  ventaRepository */
    private $ventaRepository;

    public function __construct(ventaRepository $ventaRepo)
    {
        $this->ventaRepository = $ventaRepo;
    }

    /**
     * Display a listing of the venta.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->ventaRepository->pushCriteria(new RequestCriteria($request));
        $ventas = $this->ventaRepository->all();

        return view('ventas.index')
            ->with('ventas', $ventas);
    }

    /**
     * Show the form for creating a new venta.
     *
     * @return Response
     */
    public function create()
    {
        $clientes = cliente::pluck('nombre','id');
        return view('ventas.create',compact('clientes'));
    }

    /**
     * Store a newly created venta in storage.
     *
     * @param CreateventaRequest $request
     *
     * @return Response
     */
    public function store(CreateventaRequest $request)
    {
        $input = $request->all();

        $venta = $this->ventaRepository->create($input);

        Flash::success('Venta saved successfully.');

        return redirect(route('detalleVentas.create',['id'=>$venta->id]));
    }

    /**
     * Display the specified venta.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $venta = $this->ventaRepository->findWithoutFail($id);

        if (empty($venta)) {
            Flash::error('Venta not found');

            return redirect(route('ventas.index'));
        }

        return view('ventas.show')->with('venta', $venta);
    }

    /**
     * Show the form for editing the specified venta.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $venta = $this->ventaRepository->findWithoutFail($id);
 $clientes = cliente::pluck('nombre','id');
        if (empty($venta)) {
            Flash::error('Venta not found');

            return redirect(route('ventas.index'));
        }

        return view('ventas.edit',compact('clientes'))->with('venta', $venta);
    }

    /**
     * Update the specified venta in storage.
     *
     * @param  int              $id
     * @param UpdateventaRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateventaRequest $request)
    {
        $venta = $this->ventaRepository->findWithoutFail($id);

        if (empty($venta)) {
            Flash::error('Venta not found');

            return redirect(route('ventas.index'));
        }

        $venta = $this->ventaRepository->update($request->all(), $id);

        Flash::success('Venta updated successfully.');

        return redirect(route('ventas.index'));
    }

    /**
     * Remove the specified venta from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $venta = $this->ventaRepository->findWithoutFail($id);

        if (empty($venta)) {
            Flash::error('Venta not found');

            return redirect(route('ventas.index'));
        }

        $this->ventaRepository->delete($id);

        Flash::success('Venta deleted successfully.');

        return redirect(route('ventas.index'));
    }
}
