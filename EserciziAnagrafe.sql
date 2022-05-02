select persona.Nome, città.Regione
from persona join città on persona.CittàNascita = città.Nome
where persona.Età >= 18
