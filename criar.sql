.mode columns
.headers ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Arbitro;
DROP TABLE IF EXISTS EstatisticasJogador;
DROP TABLE IF EXISTS EstadoVisita;
DROP TABLE IF EXISTS EstatisticasEquipa;
DROP TABLE IF EXISTS EstatisticasDeJogo;
DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Grupo;
DROP TABLE IF EXISTS Jogador;

CREATE TABLE Jogador(
    idJogador INT PRIMARY KEY,
    nomeJogador VARCHAR(255) NOT NULL,
    equipa VARCHAR(255) REFERENCES Equipa(nomeEquipa),
    nGolos TINYINT NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    numero TINYINT NOT NULL,
    jogosJogados TINYINT NOT NULL,
    tempoJogado TINYINT NOT NULL,
    posicao VARCHAR(255) NOT NULL,
    idade TINYINT NOT NULL

    CHECK (idJogador >= 1),
    CHECK (nGolos >= 0),
    CONSTRAINT check_numero CHECK (numero >=1 AND numero<=99),
    CHECK (jogosJogados >= 0),
    CONSTRAINT check_posicao CHECK (posicao == 'GR' OR posicao == 'DD' OR posicao == 'DC' OR posicao == 'DE' OR posicao == 'MDC' OR posicao == 'MC' OR posicao == 'MCO' OR posicao == 'MD' OR posicao == 'ME' OR posicao == 'AC' OR posicao == 'PL' OR posicao == 'ED' OR posicao == 'EE'),
    CHECK (idade >= 14 AND idade <= 40)
);

CREATE TABLE Grupo(
    idGrupo VARCHAR(1) PRIMARY KEY,

    CONSTRAINT check_idGrupo CHECK (idGrupo == 'A' OR idGrupo == 'B' OR idGrupo == 'C' OR idGrupo == 'D' OR idGrupo == 'E' OR idGrupo == 'F' OR idGrupo == 'G' OR idGrupo == 'H')
);

CREATE TABLE Equipa(
    idEquipa INT PRIMARY KEY,
    nomeEquipa VARCHAR(255) NOT NULL,
    jogosJogados TINYINT NOT NULL,
    golosTotais TINYINT NOT NULL,
    idGrupo VARCHAR(1) REFERENCES Grupo(idGrupo)
);


CREATE TABLE Estado(
    tipoEstado VARCHAR(255) PRIMARY KEY,

    CONSTRAINT check_tipoEstado CHECK (tipoEstado == 'pre-eliminatorias' OR tipoEstado == 'fase-de-grupos' OR tipoEstado == 'oitavos-de-final' OR tipoEstado == 'quartos-de-final' OR tipoEstado == 'semi-final' OR tipoEstado == 'final')
);

CREATE TABLE EstatisticasDeJogo(
    tipoJogo VARCHAR(255) REFERENCES Estado(tipoEstado),
    resultado VARCHAR(255) NOT NULL,
    nFaltas VARCHAR(255) NOT NULL,
    posseDeBola VARCHAR(255) NOT NULL,
    cantos VARCHAR(255) NOT NULL,
    remates VARCHAR(255) NOT NULL,
    passesCompletos VARCHAR(255) NOT NULL,
    rematesABaliza VARCHAR(255) NOT NULL
);

CREATE TABLE EstatisticasEquipa(
    nPontos TINYINT NOT NULL,
    classificacao TINYINT NOT NULL,
    golosMarcados TINYINT NOT NULL,
    golosSofridos TINYINT NOT NULL,
    vitorias TINYINT NOT NULL,
    derrotas TINYINT NOT NULL,
    empates TINYINT NOT NULL

    CHECK (nPontos >= 0),
    CONSTRAINT check_classificacao CHECK (classificacao <= 4 AND classificacao >= 1)
    CHECK (golosMarcados >= 0)
    CHECK (golosSofridos >= 0)
    CHECK (vitorias >= 0)
    CHECK (derrotas >= 0)
    CHECK (empates >= 0)
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
    idArbitro INT PRIMARY KEY,
    nomeArbitro VARCHAR(255) NOT NULL,
    idade TINYINT NOT NULL,
    nivel TINYINT NOT NULL,

    CHECK (idArbitro >= 1),
    CONSTRAINT check_idade CHECK (idade >= 17 AND idade <= 85),
    CONSTRAINT check_nivel CHECK (nivel>=1 AND nivel<=9)
);

CREATE TABLE Jogo(
    idJogo VARCHAR(255) PRIMARY KEY,
    eliminatoria VARCHAR(255) NOT NULL REFERENCES Estado(tipoEstado),
    nGolosVisitada TINYINT NOT NULL,
    nGolosVisitante TINYINT NOT NULL,
    dataJogo VARCHAR(255) NOT NULL,

    CHECK (nGolosVisitada >= 0),
    CHECK (nGolosVisitante >= 0)
);

.read povoar.sql

SELECT * FROM Jogador;
SELECT * FROM Grupo;
SELECT * FROM Equipa;
SELECT * FROM Estado;
SELECT * FROM EstatisticasDeJogo;
SELECT * FROM EstatisticasEquipa;
SELECT * FROM EstadoVisita;
SELECT * FROM EstatisticasJogador;
SELECT * FROM Arbitro;
SELECT * FROM Jogo;
