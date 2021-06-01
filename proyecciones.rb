ventas = open("ventas_base.db").readlines.reject{|x| x.empty?} # Abriendo archivo y lo guardo en una variable.
ventas1 = ventas[0].split(',') # Aqui divido la cadena recibida segun el caracter ",", y se guarda en otra variable.
ventas2 = ventas1.map {|x| x.to_f} # Aqui transformo los datos a decimales, y utilizo inline (todo en una linea).
primersemestre = ventas2[0..5] # Aqui guardo los primeros 6 meses
segundosemestre = ventas2[6..11]  # Aqui guardo los ultimos 6 meses
resultado1 = primersemestre.map {|x| x*1.1} # Calculo el 10%
resultado1 = resultado1+segundosemestre
resultado1 = resultado1.sum.round(2) # Solo dejo 2 decimales
resultado2 = segundosemestre.map {|x| x*1.2} # Calculo el 20%
resultado2 = resultado2+primersemestre
resultado2 = resultado2.sum.round(2) # Solo dejo 2 decimales
output = File.open('resultados.data', 'w') # Genero el archivo
output.write(resultado1) # Escribo el primer resultado
output.write("\n") # Escribo un salto de linea
output.write(resultado2) # Escribo el segundo resultado
output.close # Cierro el archivo

# Solucion Profesor

data = open('ventas_base.db').read.split(",")
array = []
data.map!{|e| e.to_i}
def simulacion(array, aum1, aum2)
    sem1 = array[0..5].sum
    sem2 = array[6..11].sum
    (sem1 * aum1 + sem2 * aum2).round(2)
end
output = File.open('resultados.data', 'w')
output.write("#{simulacion(data, 1.1, 1)}\n")
output.write(simulacion(data, 1, 1.2))
output.close