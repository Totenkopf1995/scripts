# clean_fish_history.rb

require 'rbconfig'

# Obtener el nombre del sistema operativo
os_name = RbConfig::CONFIG['host_os']

# Verificar si es Debian
if os_name =~ /linux/ && File.exist?('/etc/debian_version')
  puts "El sistema operativo es Debian."

  # Especifica la ruta del archivo
  ruta = "/home/pepe/.local/share/fish/fish_history"

  if File.exist?(ruta)
    # abre el archivo y elimina el contenido
    File.open(File.expand_path(ruta), "w") {}
    puts "clean history"
  else
    puts "el archivo no existe"
  end

  # Verificar si es Termux
elsif os_name =~ /linux/ && ENV['PREFIX'] == "/data/data/com.termux/files/usr"
  puts "El sistema operativo es Termux."

  # Especifica la ruta del archivo
  ruta = "/data/data/com.termux/files/home/.local/share/fish/fish_history"

  if File.exist?(ruta)
    # abre el archivo y elimina el contenido
    File.open(File.expand_path(ruta), "w") {}
    puts "clean history"
  else
    puts "el archivo no existe"
  end

else
  puts "Sistema operativo no reconocido: #{os_name}"
end




