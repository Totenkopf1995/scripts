# clean_fish_history.rb

# Especifica la ruta del archivo
ruta = "~/.local/share/fish/fish_history"

if File.exist?(ruta)
  # abre el archivo y elimina el contenido
  File.open(File.expand_path(ruta), "w") {}
  puts "clean history"
else
  puts "el archivo no existe"
end