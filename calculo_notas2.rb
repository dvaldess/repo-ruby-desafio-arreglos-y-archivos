data = (File.open("notas.data")).read.split("\n")
data.map!{|x| x.split(",")}

def nota_mas_alta(arr)
    b = arr.map do |a|
        [a[0], a.map{|e| e.to_i}.max]
    end
end

pp nota_mas_alta(data)

# O

data = (File.open("notas.data")).read.split("\n")
data.map!{|x| x.split(",")}

def nota_mas_alta(arr)
    b = arr.map do |a|
        [a[0], a.map(&:to_i).max]
    end
end

pp nota_mas_alta(data)