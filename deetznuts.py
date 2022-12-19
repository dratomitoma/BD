# -*- coding: utf-8 -*-
"""
Created on Thu Nov 17 22:50:25 2022

@author: tomas
"""

import random
import math

listanomes=[ "James","Mary"
,"Robert" ,"Patricia"
,"John" ,"Jennifer"
,"Michael" ,"Linda"
,"David" ,"Elizabeth"
,"William" ,"Barbara"
,"Richard" ,"Susan" 	
,"Joseph","Jessica" 	
,"Thomas" 	,"Sarah"
,"Charles"   ,"Karen"
,"Christopher"   ,"Lisa"
,"Daniel"   ,"Nancy"
,"Matthew"   ,"Betty"
,"Anthon"   ,"Margaret"
,"Mar"   ,"Sandra"
,"Donald" 	   ,"Ashley"
,"Steven" 	   ,"Kimberly"
,"Paul" 	   ,"Emily"
,"Andrew" 	   ,"Donna"
,"Joshua" 	   ,"Michelle"
,"Kenneth" 	  ,"Carol"
,"Kevin" 	   ,"Amanda"
,"Brian" 	  ,"Dorothy"
,"George" 	   ,"Melissa"
,"Timothy" 	   ,"Deborah"
,"Ronald" 	  ,"Stephanie"
,"Edward" 	   ,"Rebecca"
,"Jason" 	   ,"Sharon"
,"Jeffrey" 	   ,"Laura"
,"Ryan" 	   ,"Cynthia"
,"Jacob" 	   ,"Kathleen"
,"Gary"   ,"Amy"
,"Nicholas" 	   ,"Angela"
,"Eric" 	   ,"Shirley"
,"Jonathan"    ,"Anna"
,"Stephen" 	   ,"Brenda"
,"Larry" 	   ,"Pamela"
,"Justin"   ,"Emma"
,"Scott" 	   ,"Nicole"
,"Brand"    ,"Helen"
,"Benjamin" 	   ,"Samantha"
,"Samuel" 	   ,"Katherine"
,"Gregory" 	   ,"Christine"
,"Alexander" 	   ,"Debra"
,"Frank" 	   ,"Rachel"
,"Patrick" 	   ,"Carolyn"
,"Raymond" 	   ,"Janet"
,"Jack" 	   ,"Catherine"
,"Dennis" 	   ,"Maria"
,"Jerry" 	   ,"Heather"
,"Tyler" 	   ,"Diane"
,"Aaron"   ,"Ruth"
,"Jose" 	   ,"Julie"
,"Adam" 	   ,"Olivia"
,"Nathan" 	   ,"Joyce"
,"Henry" 	   ,"Virginia"
,"Douglas" 	   ,"Victoria"
,"Zachary" 	   ,"Kelly"
,"Peter" 	   ,"Lauren"
,"Kyle" 	   ,"Christina"
,"Ethan"   ,"Joan"
,"Walter" 	   ,"Evelyn"
,"Noah" 	   ,"Judith"
,"Jeremy" 	   ,"Megan"
,"Christian" 	   ,"Andrea"
,"Keith" 	   ,"Cheryl"
,"Roger" 	   ,"Hannah"
,"Terry" 	   ,"acqueline"
,"Gerald" 	   ,"Martha"
,"Harold" 	   ,"Gloria"
,"Sean" 	   ,"Teresa"
,"Austin"  ,"Ann"
,"Carl"    ,"Sara"
,"Arthur" 	   ,"Madison"
,"Lawrence" 	   ,"Frances"
,"Dylan" 	   ,"Kathryn"
,"Jesse" 	   ,"Janice"
,"Jordan"   ,"Jean"
,"Bryan" 	   ,"Abigail"
,"Billy" 	   ,"Alice"
,"Joe" 	   ,"Julia"
,"Bruce"    ,"Judy"
,"Gabriel" 	   ,"Sophia"
,"Logan" 	   ,"Grace"
,"Albert" 	   ,"Denise"
,"Willie" 	   ,"Amber"
,"Alan" 	   ,"Doris"
,"Juan" 	   ,"Marilyn"
,"Wayne" 	   ,"Danielle"
,"Elijah" 	   ,"Beverly"
,"Randy" 	   ,"Isabella"
,"Roy" 	   ,"Theresa"
,"Vincent" 	   ,"Diana"
,"Ralph" 	   ,"Natalie"
,"Eugene" 	   ,"Brittany"
,"Russell" ,"Charlotte"
,"Bobby" ,"Marie"
,"Mason" ,"Kayla"
,"Philip" ,"Alexis"
,"Louis" ,"Lori"]

nacionalidades=[
"afegão",
"sul-africano",	
"albanês",	
"alemmão",
"andorrano",	
"angolano",	
"antiguano",	
"saudito",
"argelino",	
"argentino",	
"armênio",
"australiano",	
"austríaco",	
"azerbaijano",	
"bahamiano",	
"bareinita",	 
"bengalês",	
"barbadiano",	 
"bielo-russo",	
"belga",
"belizenho",	
"beninense",	 
"boliviano",	
"bósnio",
"bechuano",	
"brasileiro",	
"bruneano",	
"búlgaro",
"burquinense",	
"burundinês",	
"butanês",	
"caboverdiano",	
"camaronês",	 
"cambojano",	
"canadense",
"catariano",	
"cazaque",	
"chadiano",	
"chileno",
"chinês",
"cipriota",
"colombiano",
"congolês",
"norte-coreano",	
"sul-coreano",	
"costa-marfinense",
"costarriquenho",	
"croata",
"cubano",
"dinamarquês",
"djibutiano",	 
"dominicano",	
"egípcio",
"salvadorenho",	
"árabe",
"equatoriano",	
"eritreu",	
"eslovaco",	
"esloveno",	
"espanhol",	
"americano",	
"estoniano",	
"suazi",
"etíope",	
"fijiano",
"filipino",	
"finlandês",	
"francês",	
"gabonês",	
"gambiano",		
"ganês",
"georgiano",	
"granadino",	
"grego",
"guatemalteco",	
"guianês",	
"guineano",	
"guineense",	
"guinéu-equatoriano",	
"haitiano",	
"holandês",	
"hondurenho",	
"húngaro",
"iemenita",
"marshalino",	 
"mauriciano",	
"salomônico",	
"indiano",
"indonésio",	
"iraniano",	
"iraquiano",	
"irlandês",	
"islandês",	
"israelense",	
"italiano",	
"jamaicano",	
"japonês",	
"jordaniano",	
"kuwaitiano",		
"laosiano",	
"lesoto",
"letão",
"libanês",	
"liberiano",	
"líbio",
"liechtensteinense",
"lituano",
"luxemburguês",	
"macedônio",	
"malgaxe",	
"malai",
"malauiano",	
"maldivo",	
"malinês",	
"maltês",
"marroquino",	
"mauritano",	
"mexicano",	
"micronésio",	 
"moçambicano",	
"birmanês",	
"moldávio",	
"monegasco",	
"mongol",
"montenegrino",	
"namibiano",	
"nauruano",	
"nepalês",	
"nicaraguense",
"nigerino",	
"nigeriano",	
"norueguês",	 
"neozelandês",	
"omani",
"palauano",	
"palestino",	
"panamenho",	
"papuásio",	
"paquistanês",	
"paraguaio",	
"peruano",
"polaco",
"português",	
"queniano",	
"quiribatiano",	
"quirguiz",
"inglês",	 
"centro-africano",	
"dominicano",	
"tcheco",	
"romeno",	
"ruandês",	
"russo",	
"samoano",	 
"samarinês",
"santa-luciense",
"são-cristovense",
"são-tomense",	
"são-vicentino",
"seichelense",
"senegalês",	
"leonês",	 
"sérvio",	
"singapuriano",	
"sírio",	
"cingalês",	
"somali",	 
"sudanês",	
"sudanês",	
"suéco",	
"suíço",	
"surinamês",	
"tajique",	
"tailandês",	
"tanzaniano",	
"timorense",	
"togonês",	
"tongalês",	
"trinitino",	
"tunisiano",
"turco",	
"turcomeno",	
"tuvaluano",	
"ucraniano",	
"ugandense",	
"uruguaio",	
"usbeque",	
"vanuatuense",	
"venezuelano",	
"vietnamita",
"zambiano",	
"zimbabuano"	]
listaequipasxdddd=[
    "Palmeiras",
    "River Plate",
    "Boca Juniors",
    "Flamengo",
    "Nacional",
    "Peñarol",
    "Atlético Mineiro", 
    "Athletico Paranaense",
    "Cerro Porteño", 
    "Libertad", 
    "Independiente del Valle", 
    "Universidad Católica", 
    "Emelec", 
    "Corinthians", 
    "Colo-Colo", 
    "Vélez Sarsfield", 
    "Sporting Cristal", 
    "Deportivo Cali", 
    "Red Bull Bragantino", 
    "Deportivo Táchira", 
    "Alianza Lima", 
    "Deportes Tolima", 
    "Colón", 
    "Caracas", 
    "Always Ready", 
    "Talleres", 
    "Independiente Petrolero", 
    "Fortaleza", 
    "Olimpia",
    "Estudiantes", 
    "The Strongest",
    "América Mineiro"
]
listafase=[
    "pre-eliminatorias","fase-de-grupos","oitavos-de-final","quartos-de-final","semi-final","final"
]
listapos=[
    "GR","DD","DC","DE","MDC","MC","MCO","MD","ME","AC","PL","ED","EE"
    ]
listaresultados=[
    "0-0","0-1","1-0","1-1","2-0","2-1","0-2","1-2","2-2","3-0","3-1","3-2","0-3","1-3","2-3","3-3","4-0","4-1","4-2","4-3","0-4","1-4","2-4","3-4","4-4","5-0","5-1","5-2","5-3","5-4","0-5","1-5","2-5","3-5","4-5","5-5"
]
grupos=["A","B","C","D","E","F","G","H"]
file = open('deetznuts.txt','a')
for i in range (17*len(listaequipasxdddd)):
    randindex=random.randrange(len(listanomes))
    nome=listanomes[randindex]+' '
    randindex=random.randrange(len(listanomes))
    nome+=listanomes[randindex]
    randindex=random.randrange(len(listaequipasxdddd))
    nomequipa=listaequipasxdddd[randindex]
    randpaises=random.randrange(len(nacionalidades))
    pais=nacionalidades[randpaises]
    jgosjogados=random.randint(0,14)
    ncamisola=random.randint(1,99)
    tmpjogado=random.randint(1*jgosjogados,90*jgosjogados)
    ngolos=random.randint(0,math.ceil(1.5*jgosjogados))
    randindex=random.randrange(len(listapos))
    pos=listapos[randindex]
    idade=random.randint(17,40)
    file.write(f'INSERT INTO Jogador VALUES({i+1},"{nome}","{nomequipa}",{ngolos},"{pais}",{ncamisola},{jgosjogados},{tmpjogado},"{pos}",{idade});\n')
for i in range (len(listaequipasxdddd)):
    nome=listaequipasxdddd[i]
    jogosjogados=random.randint(1,14)
    nPontos=random.randint(0,18)
    classificacao=random.randint(1,4)
    golosMarcados=random.randint(0,25)
    golosSofridos=random.randint(0,25)
    vitorias=random.randint(0,14)
    derrotas=random.randint(0,14-vitorias)
    empates=random.randint(0,14-vitorias-derrotas)
    file.write(f'INSERT INTO Equipa VALUES({i+1},"{nome}",{jogosjogados},{nPontos},{classificacao},{golosMarcados},{golosSofridos},{vitorias},{derrotas},{empates});\n')   
for grupid in grupos:
    file.write(f'INSERT INTO Grupo VALUES("{grupid}");\n')
for tipo in listafase:
    file.write(f'INSERT INTO Estado VALUES("{tipo}");\n')
for i in range (40):
    nFaltasVisitada=random.randint(0,15)
    nFaltasVisitante=random.randint(0,15)
    posseDeBolaVisitada=random.randint(20,100)
    posseDeBolaVisitante=100-posseDeBolaVisitada
    cantosVisitada=random.randint(0,10)
    cantosVisitante=random.randint(0,10)
    rematesVisitada=random.randint(0,15)
    rematesVisitante=random.randint(0,15)
    passesCompletosVisitada=random.randint(0,800)
    passesCompletosVisitante=random.randint(0,800)
    rematesABalizaVisitada=random.randint(0,7)
    rematesABalizaVisitante=random.randint(0,7)
    golosVisitada=random.randint(0,10)
    golosVisitante=random.randint(0,10)
    file.write(f'INSERT INTO EstatisticasDeJogo VALUES({nFaltasVisitada},{nFaltasVisitante},{posseDeBolaVisitada},{posseDeBolaVisitante},{cantosVisitada},{cantosVisitante},{rematesVisitada},{rematesVisitante},{passesCompletosVisitada},{passesCompletosVisitante},{rematesABalizaVisitada},{rematesABalizaVisitante},{golosVisitada},{golosVisitante});\n')
#apartir daqui tive menos cuidado
for i in range (40):
    golosMarcados=random.randint(0,5)
    assistencias=random.randint(0,5)
    passesRealizados=random.randint(0,150)
    cortesRealizados=random.randint(0,40)
    cartoesAmarelos=random.randint(0,2)
    cartoesVermelhos=random.randint(0,1)
    faltasCometidas=random.randint(0,6)
    golosDefendidos=random.randint(0,20)
    file.write(f'INSERT INTO EstatisticasJogador VALUES({golosMarcados},{assistencias},{passesRealizados},{cortesRealizados},{cartoesAmarelos},{cartoesVermelhos},{faltasCometidas},{golosDefendidos});\n')
for i in range (40):
    idArbitro = i
    randindex=random.randrange(len(listanomes))
    nomeArbitro=listanomes[randindex]+' '
    nomeArbitro+=listanomes[randindex]
    idade=random.randint(17,85)
    nivel=random.randint(1,9)
    file.write(f'INSERT INTO Arbitro VALUES({idArbitro + 1},"{nomeArbitro}",{idade},{nivel});\n')
for i in range (40):
    randindex3 = random.randrange(len(listaequipasxdddd))
    randindex4 = random.randrange(len(listaequipasxdddd))
    idJogo = str(listaequipasxdddd[randindex3]) + '-' + str(listaequipasxdddd[randindex4])
    randindex1=random.randrange(len(listafase))
    eliminatoria=listafase[randindex1]
    dataJogo=str(random.randint(1,28))+"/"+str(random.randint(1,12))+"/"+str(random.randint(2021,2022))
    file.write(f'INSERT INTO Jogo VALUES("{idJogo}","{eliminatoria}""{dataJogo}");\n')
file.close()

    



