--Seleciona todos os árbritos que oficializaram jogos em estádios com capacidade maior do que 50000 e que resultaram num empate
select Arbitro.idArbitro, Arbitro.nomeArbitro
from Arbitro
join Jogo
on Jogo.idArbitro = Arbitro.idArbitro
join Estadio
on Jogo.idEstadio = Estadio.idEstadio
where Estadio.capacidade >= 50000
AND
Jogo.golosVisitada = Jogo.golosVisitante
order by 1 asc