<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Cliente;
use App\Mascota;
use App\Turno;
use DB;
class MascotasController  extends Controller{
  
    public function __construct()
    {
        //
    }

    //
   
    public function all(Request $request){
       $mascotas = Mascota::all();
       return response()->json($mascotas,200);
    }
    public function createMascota(Request $request){
        if($request->isJson()){
            $data = $request->json()->all();
            $mascotas = Mascota::create([
                'numero_mas' => $data['numero_mas'],
                'nombres_mas' => $data['nombres_mas'],
                'raza' => $data['raza'],
                'edad' => $data['edad'],
                'cliente_id' => $data['cliente_id'],


            ]);
            return response()->json($data['numero_mas'],200);
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }

}
