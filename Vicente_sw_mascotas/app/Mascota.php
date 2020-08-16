<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Mascota extends Model 
{
    protected $table='modelos_mascota';
    public $timestamps = false;


    protected $fillable = [
        'numero_mas',
        'nombres_mas',
        'raza',
        'edad',
        'cliente_id',

    ];
    
  
    protected $hidden = [
        'mascota_id',
        
        
    ];
}
