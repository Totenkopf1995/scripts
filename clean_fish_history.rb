# clean_fish_history.rb

# Especifica la ruta del archivo
ruta = "~/.local/share/fish/fish_history"

# abre el archivo y elimina el contenido
File.open(File.expand_path(ruta), "w") {}
puts "clean history"