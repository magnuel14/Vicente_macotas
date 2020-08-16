<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Turno extends Model 
{
    protected $table='modelos_turnos';
    public $timestamps = false;

    

    protected $fillable = [
        'fecha',
        'tipo',
        'descripcion',
        'mascota_id',
        
    ];
   
  
    protected $hidden = [
        'turnos_id',
    ];
}
