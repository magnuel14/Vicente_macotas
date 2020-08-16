from django.db import models

class Cliente(models.Model):
   
    id = models.AutoField(primary_key = True)
    cedula = models.CharField(max_length=10, null = False, unique = True)
    nombres = models.CharField(max_length=70, null = False)
    apellidos = models.CharField(max_length=70, null = False)
    correo = models.EmailField(max_length=100, null = False)
    telefono = models.CharField(max_length=15, null = False)
    celular = models.CharField(max_length=15, null = False)
    correo = models.EmailField(max_length=100, null = False)
    clave = models.CharField(max_length=50, null = False)

    def __str__(self):
        return self.cedula

class Mascota(models.Model):
    
    mascota_id = models.AutoField(primary_key = True)
    numero_mas = models.CharField(max_length = 20, unique = True, null = False)
    nombres_mas = models.CharField(max_length=100, null = False)
    raza = models.CharField(max_length=50, null = False)
    edad = models.CharField(max_length=50, null = False)
    cliente = models.ForeignKey(Cliente, on_delete = models.CASCADE)

    def __str__(self):
        return numero_mas

class Turnos(models.Model):
    listaTipoTurno = (
        ('atencion', 'Atencion'),
        ('estilista', 'Estilista'),
    )

    turnos_id = models.AutoField(primary_key = True)
    fecha = models.DateTimeField(auto_now_add = True, null = False)
    tipo = models.CharField(max_length = 30, choices = listaTipoTurno, null = False)
    descripcion = models.TextField(default='descripción de la transacción')
    mascota = models.ForeignKey(Mascota, on_delete = models.CASCADE)

    def __str__(self):
       return self.turnos_id

