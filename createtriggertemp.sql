CREATE TRIGGER temp
after insert on Jogo
For each row
Begin
    case 
    when Jogo.eliminatoria = 'Fase-de-grupos'
    then /*
        BEGIN;
        PRAGMA temp_store = 2;
        CREATE TEMP TABLE variavel(Name TEXT PRIMARY KEY, IntegerValue INTEGER);

        /* Declaring a variable 
        INSERT INTO variavel(Name) VALUES ('pontosCasa');
        Insert into variavel(Name) values ('pontosFora');

        /* Assigning a variable (pick the right storage class) 
        UPDATE _Variables SET IntegerValue = ... WHERE Name = 'VariableName';

        /* Getting variable value (use within expression) 
        ... (SELECT coalesce(RealValue, IntegerValue, BlobValue, TextValue) FROM _Variables WHERE Name = 'VariableName' LIMIT 1) ...
        */
    
        case
            when new.golosVisitada > new.golosVisitante
            then update Equipa set Equipa.nPontos = Equipa.nPontos + 3 where Equipa.idEquipa = new.idEquipaVisitada
            when new.golosVisitada = new.golosVisitante
            then update Equipa set Equipa.nPontos = Equipa.nPontos + 1 where Equipa.idEquipa = new.idEquipaVisitada
        end

        case
            when new.golosVisitada = new.golosVisitante
            then update Equipa set Equipa.nPontos = Equipa.nPontos + 1 where Equipa.idEquipa = new.idEquipaVisitante
            when new.golosVisitada < new.golosVisitante
            then update Equipa set Equipa.nPontos = Equipa.nPontos + 3 where Equipa.idEquipa = new.idEquipaVisitante
        end



        --DROP TABLE variavel;
       -- END;
    end
end;