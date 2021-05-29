# Definiendo el metodo
def chart(valores)
	filtro = valores.map{|x| x.to_i} # Los datos ingresados por el usuario son almacenados en una variable
	filtro.each do |x| # Iterarando segun los valores ingresado
		i = 0
		while i < (x*2)
			if i == 0
				print '|'
			end
			print '*'
			i += 1
		end
        print "\n"
	end
end
# Presentando el metodo
print "\n"
chart(ARGV)
print "\n"