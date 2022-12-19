.mode columns
.headers ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Estadio;
DROP TABLE IF EXISTS Arbitro;
DROP TABLE IF EXISTS EstatisticasJogador;
DROP TABLE IF EXISTS EstadoVisita;
DROP TABLE IF EXISTS EstatisticasEquipa;
DROP TABLE IF EXISTS EstatisticasDeJogo;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Grupo;



CREATE TABLE Grupo(
    idGrupo VARCHAR(1) PRIMARY KEY,

    CONSTRAINT check_idGrupo CHECK (idGrupo == 'A' OR idGrupo == 'B' OR idGrupo == 'C' OR idGrupo == 'D' OR idGrupo == 'E' OR idGrupo == 'F' OR idGrupo == 'G' OR idGrupo == 'H')
);

CREATE TABLE Estado(
    tipoEstado VARCHAR(255) PRIMARY KEY,

    CONSTRAINT check_tipoEstado CHECK (tipoEstado == 'pre-eliminatorias' OR tipoEstado == 'fase-de-grupos' OR tipoEstado == 'oitavos-de-final' OR tipoEstado == 'quartos-de-final' OR tipoEstado == 'semi-final' OR tipoEstado == 'final')
);

CREATE TABLE Treinador(
    idTreinador INT,
    nomeTreinador VARCHAR(255),
    estiloDeJogo VARCHAR(255),

    PRIMARY KEY (idTreinador,nomeTreinador)
);

CREATE TABLE Equipa(
    idEquipa INT,
    nomeEquipa VARCHAR(255),
    PRIMARY KEY (idEquipa,nomeEquipa),

    jogosJogados TINYINT NOT NULL,
    nPontos TINYINT NOT NULL,
    classificacao TINYINT NOT NULL,
    golosMarcados TINYINT NOT NULL,
    golosSofridos TINYINT NOT NULL,
    vitorias TINYINT NOT NULL,
    derrotas TINYINT NOT NULL,
    empates TINYINT NOT NULL,

    idGrupo VARCHAR(1),
    tipoEstado VARCHAR(255),
    idTreinador INT,
    nomeTreinador VARCHAR(255),
    FOREIGN KEY (idGrupo) REFERENCES Grupo(idGrupo) ON DELETE CASCADE,
    FOREIGN KEY (tipoEstado) REFERENCES Estado(tipoEstado) ON DELETE CASCADE,
    FOREIGN KEY (idTreinador,nomeTreinador) REFERENCES Treinador(idTreinador,nomeTreinador) ON DELETE CASCADE,

    CHECK (idEquipa >= 1),
    CHECK (jogosJogados >= 0),
    CHECK (golosTotais >= 0),
    CHECK (nPontos >= 0),
    CONSTRAINT check_classificacao CHECK (classificacao <= 4 AND classificacao >= 1),
    CHECK (golosMarcados >= 0),
    CHECK (golosSofridos >= 0),
    CHECK (vitorias >= 0),
    CHECK (derrotas >= 0),
    CHECK (empates >= 0)
);


CREATE TABLE Jogador(
    idJogador INT PRIMARY KEY,
    nomeJogador VARCHAR(255) NOT NULL,
    nGolos TINYINT NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    numero TINYINT NOT NULL,
    jogosJogados TINYINT NOT NULL,
    tempoJogado TINYINT NOT NULL,
    posicao VARCHAR(255) NOT NULL,
    idade TINYINT NOT NULL,

    idEquipa INT,
    nomeEquipa VARCHAR(255),
    FOREIGN KEY (idEquipa,nomeEquipa) REFERENCES Equipa(idEquipa,nomeEquipa) ON DELETE CASCADE,


    CHECK (idJogador >= 1),
    CHECK (nGolos >= 0),
    CONSTRAINT check_numero CHECK (numero >=1 AND numero<=99),
    CHECK (jogosJogados >= 0),
    CONSTRAINT check_tempoJogado CHECK (tempoJogado >= jogosJogados * 1 AND tempoJogado <= jogosJogados * 90),
    CONSTRAINT check_posicao CHECK (posicao == 'GR' OR posicao == 'DD' OR posicao == 'DC' OR posicao == 'DE' OR posicao == 'MDC' OR posicao == 'MC' OR posicao == 'MCO' OR posicao == 'MD' OR posicao == 'ME' OR posicao == 'AC' OR posicao == 'PL' OR posicao == 'ED' OR posicao == 'EE'),
    CHECK (idade >= 14 AND idade <= 40)
);


CREATE TABLE EstatisticasDeJogo(
    nFaltasVisitada INT NOT NULL,
    nFaltasVisitante INT NOT NULL,
    posseDeBolaVisitada INT NOT NULL,
    posseDeBolaVisitante INT NOT NULL,
    cantosVisitada INT NOT NULL,
    cantosVisitante INT NOT NULL,
    rematesVisitada INT NOT NULL,
    rematesVisitante INT NOT NULL,
    passesCompletosVisitada INT NOT NULL,
    passesCompletosVisitante INT NOT NULL,
    rematesABalizaVisitada INT NOT NULL,
    rematesABalizaVisitante INT NOT NULL,
    golosVisitada INT NOT NULL,
    golosVisitante INT NOT NULL
);


CREATE TABLE EstadoVisita(
    tipoEstadoVisita VARCHAR(255) NOT NULL,

    CONSTRAINT check_tipoEstadoVisita CHECK (tipoEstadoVisita == 'visitada' OR tipoEstadoVisita == 'visitante')
);

CREATE TABLE EstatisticasJogador(
    golosMarcados TINYINT NOT NULL,
    assistencias TINYINT NOT NULL,
    passesRealizados INT NOT NULL,
    cortesRealizados INT NOT NULL,
    cartoesAmarelos TINYINT NOT NULL,
    cartoesVermelhos TINYINT NOT NULL,
    faltasCometidas TINYINT NOT NULL,
    golosDefendidos INT NOT NULL

    CHECK (golosMarcados >= 0),
    CHECK (assistencias >= 0),
    CHECK (passesRealizados >= 0),
    CHECK (cortesRealizados >= 0),
    CHECK (cartoesAmarelos >= 0),
    CHECK (cartoesVermelhos >= 0),
    CHECK (faltasCometidas >= 0),
    CHECK (golosDefendidos >= 0)
);

CREATE TABLE Arbitro(
    idArbitro INT,
    nomeArbitro VARCHAR(255),
    idade TINYINT NOT NULL,
    nivel TINYINT NOT NULL,

    PRIMARY KEY(idArbitro, nomeArbitro),

    CHECK (idArbitro >= 1),
    CONSTRAINT check_idade CHECK (idade >= 17 AND idade <= 85),
    CONSTRAINT check_nivel CHECK (nivel>=1 AND nivel<=9)
);

CREATE TABLE Estadio(
    idEstadio INT,
    nomeEstadio VARCHAR(255)
);

CREATE TABLE Jogo(
    idJogo VARCHAR(255) PRIMARY KEY,
    eliminatoria VARCHAR(255),
    dataJogo VARCHAR(255) NOT NULL,
    idArbitro INT,
    nomeArbitro VARCHAR(255),
    idEstadio INT,
    nomeEstadio VARCHAR(255),

    FOREIGN KEY (eliminatoria) REFERENCES Estado(tipoEstado) ON DELETE CASCADE,
    FOREIGN KEY (idArbitro,nomeArbitro) REFERENCES Arbitro(idArbitro,nomeArbitro) ON DELETE CASCADE,
    FOREIGN KEY (idEstadio,nomeEstadio) REFERENCES Estadio(idEstadio,nomeEstadio) ON DELETE CASCADE,

    CHECK (nGolosVisitada >= 0),
    CHECK (nGolosVisitante >= 0)
);

.read povoar.sql


SELECT * FROM Grupo;
SELECT * FROM Estado;
SELECT * FROM Equipa;
SELECT * FROM Jogador;
SELECT * FROM EstatisticasDeJogo;
SELECT * FROM EstatisticasEquipa;
SELECT * FROM EstadoVisita;
SELECT * FROM EstatisticasJogador;
SELECT * FROM Arbitro;
SELECT * FROM Jogo;
