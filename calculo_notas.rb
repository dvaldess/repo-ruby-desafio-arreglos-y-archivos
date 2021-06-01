captura = open("notas.data").readlines.reject{|x| x.empty?} # Abriendo archivo y lo guardo en una variable.
filtro = captura.map{|x| x.split(',')} # Aqui divido la cadena recibida segun el caracter ",", y se guarda en otra variable.
# Definiendo el metodo solicitado
def nota_mas_alta(filtro)
    filtro01 = filtro.reject{|x| x == filtro[0]}
	filtro02 = filtro01.map{|x| x.to_i} # Aqui convierto los datos en entero.
    return filtro02.max # Aqui obtengo el numero mas alto.
end
# Llamando al metodo, el cual recibirá una dato entregado por el usuario y lo convertirá a entero.
print "\n"
print nota_mas_alta(filtro[ARGV[0].to_i])
print "\n" "\n"

# Solucion Profesor

data = (File.open("notas.data")).read.split("\n")
data.map!{|x| x.split(",")}

def nota_mas_alta(arr)
    [arr[0], arr.map{|e| e.to_i}.max]
end

pp nota_mas_alta(data[1])