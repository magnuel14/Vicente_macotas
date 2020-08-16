<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Cliente;
use App\Mascota;
use App\Turno;
use DB;
class TurnosController  extends Controller{
  
    public function __construct()
    {
        //
    }

    //
    public function all(Request $request){
       $turnos = Turno::all();
       return response()->json($turnos,200);
    }
    public function createCite(Request $request){
        if($request->isJson()){
            $data = $request->json()->all();
            $turnos = Turno::create([
                'fecha' => $data['fecha'],
                'tipo' => $data['tipo'],
                'descripcion' => $data['descripcion'],
                'mascota_id' => $data['mascota_id'],


            ]);
            return response()->json($data['fecha'],200);
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }

    public function getTurnos(Request $request, $cedula){
        if($request->isJson()){
            $turnos = DB::select("SELECT modelos_cliente.cedula,modelos_cliente.nombres ,modelos_cliente.apellidos, modelos_mascota.numero_mas,modelos_mascota.nombres_mas,modelos_mascota.raza, modelos_turnos.fecha,modelos_turnos.tipo,modelos_turnos.descripcion  FROM   modelos_turnos INNER JOIN modelos_mascota  ON modelos_turnos.mascota_id = modelos_mascota.mascota_id          INNER JOIN modelos_cliente   ON modelos_mascota.cliente_id = modelos_cliente.id    WHERE modelos_cliente.cedula=". $cedula .";");
            return response()->json($turnos,200);
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }
   

    public function getall(Request $request){
        if($request->isJson()){
            $turnos = DB::select("SELECT modelos_cliente.cedula,modelos_cliente.nombres ,modelos_cliente.apellidos, modelos_mascota.numero_mas,modelos_mascota.nombres_mas,modelos_mascota.raza, modelos_turnos.fecha,modelos_turnos.tipo,modelos_turnos.descripcion  FROM modelos_cliente, modelos_mascota INNER JOIN modelos_turnos  ON modelos_turnos.mascota_id = modelos_mascota.mascota_id  where modelos_cliente.id = modelos_mascota.cliente_id;");

            return response()->json($turnos,200);
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }


}
