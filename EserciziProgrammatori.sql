--1
select p.codice
from  programmatore p join autore a on p.codice = a.codice join programma 
    on a.id = programma.id
where programma.anno > 2000 and programma.linguaggio = "Java"
--2
select p.nome, p.categoria
from  programmatore p join autore a on p.codice = a.codice join programma 
    on a.id = programma.id
where programma.linguaggio != "Python"
order by p.nome