<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model {
    protected $table='modelos_cliente';
    public $timestamps = false;

    

    protected $fillable = [
        'cedula',
        'nombres',
        'apellidos',
        'telefono',    
        'celular',
        'correo',
        'clave',
        'api_token',

    ];

  
    protected $hidden = [
        'id',
    ];
}
