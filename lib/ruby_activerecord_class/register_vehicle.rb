class RegisterVehicle(user)
  puts "Indique las siguientes caracteristicas para registrar su Vehiculo"
  puts "Marca:"
  brand = gets.chomp
  puts "Modelo"
  model = gets.chomp
  puts "Año"
  year = gets.chomp
  puts "Color"
  color = gets.chomp
  puts "Placa"
  vin = gets.chomp

  Vehicle.create(brand: brand, model: model, year: year, color: color, vin: vin, user_id: user.id)
  self

  Puts "Su vehiculo fue registrado con exito"
end
