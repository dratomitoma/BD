--Seleciona todos os treinadores e organiza-os por número de vitórias descendentemente
select Treinador.nomeTreinador, equipa.vitorias
from Treinador
join Equipa
on treinador.idEquipa = Equipa.idEquipa
order by 2 desc
