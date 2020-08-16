<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Hashing\BcrypHasher;
use Illuminate\Support\Str;
use App\User;
use App\Http\Helper\ResponseBuilder;



class UserController extends Controller
{
  
    public function __construct()
    {
        //
    }

    //
    public function all(Request $request){
        $users = User::all();
        return response()->json($users,200);
    }
   

    
    public function login(Request $request){
        $Username = $request->username;
        $Password = $request->password;

        $user = User::where('username', $Username)->first();
        error_log($this->django_password_verify($Password, $user->password));
        error_log($user->password);
        if (!empty($user)) {
                        //reaizar veificar el passwod, comprobar si es corecto

            if ($this->django_password_verify($Password, $user->password)) {
                $user-> api_token= Str::random(150);
                $user->save();
                $status = true;
                $info = "el usuario esta correcto bro";

            } else {
                $status = false;
                $info = "el usuaio parece sospechoso,intente de nuevo ";
            }

        } else {
            $status = false;
            $info = "el usuaio parece sospechoso, intente de nuevo ";
        }
        return ResponseBuilder::result($status, $info);
    }
    public function salir(Request $request){
        $Username = $request->username;
        $user = User::where('username', $Username)->first();
        if (!empty($user)) {
            $user-> api_token= null;
                $user->save();
                $status = true;
                $info = "ha salido";
        }   
        return ResponseBuilder::result($status, $info);
    
            
    }
 

    public function django_password_verify(string $password, string $djangoHash): bool
    {
        $pieces = explode('$', $djangoHash);
        if (count($pieces) !== 4) {
            throw new Exception("Illegal hash format");
        }
        list($header, $iter, $salt, $hash) = $pieces;
        // Get the hash algorithm used:
        if (preg_match('#^pbkdf2_([a-z0-9A-Z]+)$#', $header, $m)) {
            $algo = $m[1];
        } else {
            throw new Exception(sprintf("Bad header (%s)", $header));
        }
        if (!in_array($algo, hash_algos())) {
            throw new Exception(sprintf("Illegal hash algorithm (%s)", $algo));
        }
        //formato PBKDF2
        $calc = hash_pbkdf2(
            //ALGO =MD5,SHA256, haval1604
            //salt = generar valores aletorios
            $algo,
            $password,
            $salt,
            (int) $iter,
            32,
            true
        );
        return hash_equals($calc, base64_decode($hash));
    }

   


}
