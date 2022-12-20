--Atualiza o número de pontos da ambas as equipas após um jogo durante a fase de groupos
CREATE TRIGGER updateGroupPoints
after insert on Jogo
For each row
Begin
    case 
    when Jogo.eliminatoria = 'Fase-de-grupos'
    then DECLARE pontosCasa, pontosFora INT;
        case
        when new.golosVisitada > new.golosVisitante
        then set pontosCasa = 3;
        when new.golosVisitada = new.golosVisitante
        then set pontosCasa = 1;
        when new.golosVisitada < new.golosVisitante
        then set pontosCasa = 0;
        end

        case
        when new.golosVisitada > new.golosVisitante
        then set pontosFora = 0;
        when new.golosVisitada = new.golosVisitante
        then set pontosFora = 1;
        when new.golosVisitada < new.golosVisitante
        then set pontosFora = 3;
        end

        update Equipa
        set Equipa.nPontos = Equipa.nPontos + pontosCasa
        where Equipa.idEquipa = new.idEquipaVisitada

        update Equipa
        set Equipa.nPontos = Equipa.nPontos + pontosFora
        where Equipa.idEquipa = new.idEquipaVisitante
    end
end;
