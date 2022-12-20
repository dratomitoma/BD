.mode columns
.headers on
.nullvalue NULL

--Seleciona todos os jogadores que marcaram pelo menos 1 golo numa fase eliminatória num jogo arbitrado por um árbitro de nivel superior a 5

select Jogador.nomeJogador, sum(EstatisticasJogador.golosMarcados), Equipa.tipoEstado
from Jogador
join EstatisticasJogador
on Jogador.idJogador = EstatisticasJogador.idJogador
join Equipa
on Jogador.idEquipa = Equipa.idEquipa
join Jogo
on
case
    when Jogador.idEquipa = Jogo.idEquipaVisitada
    then Jogador.idEquipa = Jogo.idEquipaVisitada
    when Jogador.idEquipa = Jogo.idEquipaVisitante
    then Jogador.idEquipa = Jogo.idEquipaVisitante
end
