--Seleciona todos os treinadores e organiza-os por número de vitórias descendentemente
select Treinador.nomeTreinador, equipa.vitorias
from Treinador
join Equipa
on Equipa.idTreinador = Treinador.idTreinador
order by 2 desc
