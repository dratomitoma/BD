--Seleciona todos os árbritos que oficializaram jogos em estádios com capacidade maior do que 50000 e que resultaram num empate
select Arbitro.idArbitro, Arbitro.nomeArbitro, Estadio.nomeEstadio, eq1.nomeEquipa, eq2.nomeEquipa
from Arbitro
join Jogo
on Jogo.idArbitro = Arbitro.idArbitro
join Estadio
on Jogo.idEstadio = Estadio.idEstadio
join Equipa eq1
on Jogo.idEquipaVisitada = eq1.idEquipa
join Equipa eq2
on Jogo.idEquipaVisitante = eq2.idEquipa
where Estadio.capacidade >= 50000
AND
Jogo.golosVisitada = Jogo.golosVisitante
order by 1 asc