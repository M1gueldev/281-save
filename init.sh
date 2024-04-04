rails generate scaffold Persona name:string identification:string phone:string email:string address:string  
rails generate scaffold Voluntario persona:references     
rails generate scaffold Producto name:string description:text quantity:integer     
rails generate scaffold Alimento name:string description:text quantity:integer  
rails generate scaffold Economica description:text amount:decimal      
rails generate scaffold Organizacion_Benefica nombre:string tipo:string latitud:long longitud:long email:string CI:string economica:references nro_de_cuenta:string
rails generate scaffold Solicitud voluntario:references organizacion_benefica:references inventario:references user:references    
rails generate scaffold Almacen name:string description:text location:string    
rails generate scaffold Inventario elementos:string cantidad:int ubicacion:string fecha:date
rails generate scaffold Donacion producto:references alimento:references solicitud:references     
rails generate scaffold Responsable name:string identification:string phone:string email:string address:string  
rails generate scaffold Establecimiento name:string description:text location:string     
rails generate scaffold CuentaBancaria number:string bank:string user:
