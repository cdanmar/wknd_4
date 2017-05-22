a = "opqrsuv"
b = "opqrsuvt"

p a = a.split("")
p b = b.split("")

p (a-b) | (b-a)