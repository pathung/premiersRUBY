#chars prends une string crée un array avec une lettre par instance
# map permet de modifier les valeurs d'un array, cela marche avec (&ord)
# ord donne l'asci d'une lettre
#& passage par référence

text = 'xest'
nbr = 3

def text_to_ascii(text)
    text_ascii = text.chars.map(&:ord)
    return(text_ascii)
end
#print text_to_ascii(text)

def shift(array, number)
    i = 0
    shifted=Array.new

    while i < array.size
        if array[i] >= 122 - number
            shifted[i] = array[i] + number - 25
        else
            shifted[i] = array[i] + number  
        end        
        i+=1
    end
    return(shifted)
end
#print shift(text_to_ascii(text), 3)

def ascii_to_text(array)
    text = array.map { |x| x.chr }.join
    return(text)
end

#puts ascii_to_text(shift(text_to_ascii(text), 3))

def cesar(text, nbr)
    ascii_to_text(shift(text_to_ascii(text), nbr))
end

#puts cesar(text, nbr)

puts "Quel message voulez-vous coder ?"
    string = gets.chomp
puts "Quel est votre code entre 1 et 2"
    code = gets.chomp.to_i
puts "Votre message codé est : " + cesar(string, code)
# a.chr
#.join réuni plusieurs string en unes
#.chr est l'inverse de ord
#rotated_string = shifted.map { |a| a.chr }.join

#puts rotated_string


