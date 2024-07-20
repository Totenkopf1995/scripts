# clean_tmp.rb

require 'fileutils'

# Especifica las rutas de los dos directorios
ruta1 = '/home/pepe/tmp'
ruta2 = '/home/pepe/Descargas/tmp'

# Función para eliminar el contenido de un directorio
def eliminar_contenido(directorio)
  Dir.foreach(directorio) do |item|
    next if item == '.' || item == '..' # Ignora los directorios especiales
    ruta_item = File.join(directorio, item)
    FileUtils.rm_rf(ruta_item) # Elimina archivos y subdirectorios, sin eliminar el directorio
  end
end

# Verifica si los directorios existen
if Dir.exist?(ruta1) && Dir.exist?(ruta2)
  puts "las rutas existen"
  eliminar_contenido(ruta1)
  eliminar_contenido(ruta2)
  puts "clean tmp"
else
  puts "Uno o ambos directorios no existen."
end
