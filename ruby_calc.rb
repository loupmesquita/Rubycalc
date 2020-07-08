#!/usr/bin/env ruby
##
## EPITECH PROJECT, 2020
## calc
## File description:
## calc
##

## definition of calculations

def addition(x, y)
    x + y
end

def soustraction(x, y)
    x - y
end

def multiplication(x, y)
    x * y
end

def division(x, y)
    x / y
end

def modulo(x, y)
    x % y
end

##Function to verify if the string is a number

def is_number? string
    true if Float(string) rescue false
end

def is_operator? string 
    true if Check_operator(string) rescue false 
end 

def Check_operator string
    if string[0] == ('*')
        true
    elsif string[0] == '-'
        true
    elsif string[0] == '/'
        true
    elsif string[0] == '%'
        true
    elsif string[0] == '+' 
        true  
    else
        false
    end
end 
##
## Algorythm

puts "Veuillez entrer le premier nombre\n\n"
one_f = gets.chomp
if !is_number?(one_f)
    puts "Error synthax"
    exit
else
    puts "\nVeuillez entrer l'opérateur\n\n"
    operator = gets.chomp
    if !is_operator?(operator)
        puts "error operator"
        exit
    end
    puts "\nVeuillez entrer votre second nombre\n\n"  
    two_f = gets.chomp
    if !is_number?(two_f)
        puts "Error synthax"
        exit
    end
end

one = one_f.to_f
two = two_f.to_f
puts "\n=\n\n"

if operator == '+'
    puts addition(one, two)

elsif operator == '*'
    puts multiplication(one, two)

elsif operator == '/'
    puts division(one, two)

elsif operator == '-'
    puts soustraction(one, two)

elsif operator == '%'
    puts modulo(one, two)

else
    puts "Error wrong operator"
    exit
end