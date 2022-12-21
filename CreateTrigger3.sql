--Atualiza o número de pontos da ambas as equipas após um jogo durante a fase de groupos
CREATE TRIGGER updateGroupPoints
AFTER INSERT ON Jogo
FOR EACH ROW
BEGIN
    CREATE TABLE temp(pontos INT);

    INSERT INTO temp (pontos) values (
    SELECT
        CASE
            WHEN new.golosVisitada > new.golosVisitante THEN 3
            WHEN new.golosVisitada = new.golosVisitante THEN 1
            WHEN new.golosVisitada < new.golosVisitante THEN 0
        END;
    )

    UPDATE Equipa
    SET nPontos = nPontos + (SELECT pontos FROM temp)
    WHERE idEquipa = new.idEquipaVisitada;

    DELETE FROM temp;

    INSERT INTO temp (pontos) values (
    SELECT
        CASE
            WHEN new.golosVisitada > new.golosVisitante THEN 0
            WHEN new.golosVisitada = new.golosVisitante THEN 1
            WHEN new.golosVisitada < new.golosVisitante THEN 3
        END;
    )
   
    UPDATE Equipa
    SET nPontos = nPontos + (SELECT pontos FROM temp)
    WHERE idEquipa = new.idEquipaVisitante;

    DELETE FROM temp;
    Drop table temp;
END;

