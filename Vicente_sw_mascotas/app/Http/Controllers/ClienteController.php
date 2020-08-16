<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Cliente;
use App\Mascota;
use App\Turno;
use DB;
use App\Http\Helper\ResponseBuilder;





class ClienteController extends Controller{
  
    public function __construct()
    {
        //
    }

    //
    public function all(Request $request){
        $clientes = Cliente::all();
        return response()->json($clientes,200);
    }

    public function allJson(Request $request){
        if($request->isJson()){
            $clientes = Cliente::all();
            return response()->json($clientes,200);
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }

    public function login(Request $request){
        $Username = $request->username;
        $Password = $request->password;

        $user = Cliente::where('correo', $Username)->first();
        if (!empty($user)) {
                        //reaizar veificar el passwod, comprobar si es corecto

            if ($Password == ($user->clave)) {
                $user-> api_token= Str::random(150);
                $user->save();
                $status = true;
                $info = "el usuario esta correcto bro";

            } else {
                $status = false;
                $info = "el usuario parece sospechoso,intente de nuevo ";
            }

        } else {
            $status = false;
            $info = "el usuaio parece sospechoso, intente de nuevo ";
        }
        return ResponseBuilder::result($status, $info);
    }
    public function salir(Request $request){
        $Username = $request->username;
        $user = Cliente::where('correo', $Username)->first();
        if (!empty($user)) {
            $user-> api_token= null;
                $user->save();
                $status = true;
                $info = "ha salido";
        }   
        return ResponseBuilder::result($status, $info);
    
            
    }
   
    

   

    public function create(Request $request){
        if($request->isJson()){
            $data = $request->json()->all();
            $cliente = Cliente::create([
                'cedula'=>$data["cedula"],
                'nombres' => $data['nombres'],
                'apellidos' => $data['apellidos'],
                'telefono' => $data['telefono'],
                'celular' => $data['celular'],
                "correo" => $data['correo'],
                "clave"=>$data['clave'],

            ]);
            return response()->json($data['cedula'],200);
        }
    }


}