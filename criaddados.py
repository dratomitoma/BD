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
listapaises=[

    "Afeganistão",
    "África do Sul",
    "Akrotiri",
    "Albânia",
    "Alemanha",
    "Andorra",
    "Angola",
    "Anguila",
    "Antárctida",
    "Antígua e Barbuda",
    "Arábia Saudita",
    "Arctic Ocean",
    "Argélia",
    "Argentina",
    "Arménia",
    "Aruba",
    "Ashmore and Cartier Islands",
    "Atlantic Ocean",
    "Austrália",
    "Áustria",
    "Azerbaijão",
    "Baamas",
    "Bangladeche",
    "Barbados",
    "Barém",
    "Bélgica",
    "Belize",
    "Benim",
    "Bermudas",
    "Bielorrússia",
    "Birmânia",
    "Bolívia",
    "Bósnia e Herzegovina",
    "Botsuana",
    "Brasil",
    "Brunei",
    "Bulgária",
    "Burquina Faso",
    "Burúndi",
    "Butão",
    "Cabo Verde",
    "Camarões",
    "Camboja",
    "Canadá",
    "Catar",
    "Cazaquistão",
    "Chade",
    "Chile",
    "China",
    "Chipre",
    "Clipperton Island",
    "Colômbia",
    "Comores",
    "Congo-Brazzaville",
    "Congo-Kinshasa",
    "Coral Sea Islands",
    "Coreia do Norte",
    "Coreia do Sul",
    "Costa do Marfim",
    "Costa Rica",
    "Croácia",
    "Cuba",
    "Curacao",
    "Dhekelia",
    "Dinamarca",
    "Domínica",
    "Egipto",
    "Emiratos Árabes Unidos",
    "Equador",
    "Eritreia",
    "Eslováquia",
    "Eslovénia",
    "Espanha",
    "Estados Unidos",
    "Estónia",
    "Etiópia",
    "Faroé",
    "Fiji",
    "Filipinas",
    "Finlândia",
    "França",
    "Gabão",
    "Gâmbia",
    "Gana",
    "Gaza Strip",
    "Geórgia",
    "Geórgia do Sul e Sandwich do Sul",
    "Gibraltar",
    "Granada",
    "Grécia",
    "Gronelândia",
    "Guame",
    "Guatemala",
    "Guernsey",
    "Guiana",
    "Guiné",
    "Guiné Equatorial",
    "Guiné-Bissau",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungria",
    "Iémen",
    "Ilha Bouvet",
    "Ilha do Natal",
    "Ilha Norfolk",
    "Ilhas Caimão",
    "Ilhas Cook",
    "Ilhas dos Cocos",
    "Ilhas Falkland",
    "Ilhas Heard e McDonald",
    "Ilhas Marshall",
    "Ilhas Salomão",
    "Ilhas Turcas e Caicos",
    "Ilhas Virgens Americanas",
    "Ilhas Virgens Britânicas",
    "Índia",
    "Indian Ocean",
    "Indonésia",
    "Irão",
    "Iraque",
    "Irlanda",
    "Islândia",
    "Israel",
    "Itália",
    "Jamaica",
    "Jan Mayen",
    "Japão",
    "Jersey",
    "Jibuti",
    "Jordânia",
    "Kosovo",
    "Kuwait",
    "Laos",
    "Lesoto",
    "Letónia",
    "Líbano",
    "Libéria",
    "Líbia",
    "Listenstaine",
    "Lituânia",
    "Luxemburgo",
    "Macau",
    "Macedónia",
    "Madagáscar",
    "Malásia",
    "Malávi",
    "Maldivas",
    "Mali",
    "Malta",
    "Isle of Man",
    "Marianas do Norte",
    "Marrocos",
    "Maurícia",
    "Mauritânia",
    "México",
    "Micronésia",
    "Moçambique",
    "Moldávia",
    "Mónaco",
    "Mongólia",
    "Monserrate",
    "Montenegro",
    "Mundo",
    "Namíbia",
    "Nauru",
    "Navassa Island",
    "Nepal",
    "Nicarágua",
    "Níger",
    "Nigéria",
    "Niue",
    "Noruega",
    "Nova Caledónia",
    "Nova Zelândia",
    "Omã",
    "Pacific Ocean",
    "Países Baixos",
    "Palau",
    "Panamá",
    "Papua-Nova Guiné",
    "Paquistão",
    "Paracel Islands",
    "Paraguai",
    "Peru",
    "Pitcairn",
    "Polinésia Francesa",
    "Polónia",
    "Porto Rico",
    "Portugal",
    "Quénia",
    "Quirguizistão",
    "Quiribáti",
    "Reino Unido",
    "República Centro-Africana",
    "República Dominicana",
    "Roménia",
    "Ruanda",
    "Rússia",
    "Salvador",
    "Samoa",
    "Samoa Americana",
    "Santa Helena",
    "Santa Lúcia",
    "São Bartolomeu",
    "São Cristóvão e Neves",
    "São Marinho",
    "São Martinho",
    "São Pedro e Miquelon",
    "São Tomé e Príncipe",
    "São Vicente e Granadinas",
    "Sara Ocidental",
    "Seicheles",
    "Senegal",
    "Serra Leoa",
    "Sérvia",
    "Singapura",
    "Sint Maarten",
    "Síria",
    "Somália",
    "Southern Ocean",
    "Spratly Islands",
    "Sri Lanca",
    "Suazilândia",
    "Sudão",
    "Sudão do Sul",
    "Suécia",
    "Suíça",
    "Suriname",
    "Svalbard e Jan Mayen",
    "Tailândia",
    "Taiwan",
    "Tajiquistão",
    "Tanzânia",
    "Território Britânico do Oceano Índico",
    "Territórios Austrais Franceses",
    "Timor Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trindade e Tobago",
    "Tunísia",
    "Turquemenistão",
    "Turquia",
    "Tuvalu",
    "Ucrânia",
    "Uganda",
    "Uruguai",
    "Usbequistão",
    "Vanuatu",
    "Vaticano",
    "Venezuela",
    "Vietname",
    "Wake Island",
    "Wallis e Futuna",
    "West Bank",
    "Zâmbia",
    "Zimbabué"]
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
    "fase-de-grupos","oitavos-de-final","quartos-de-final","semi-final","final"
]
listapos=[
    "GR","DD","DC","DE","MDC","MC","MCO","MD","ME","AC","PL","ED","EE"
    ]
listaresultados=[
    "0-0","0-1","1-0","1-1","2-0","2-1","0-2","1-2","2-2","3-0","3-1","3-2","0-3","1-3","2-3","3-3","4-0","4-1","4-2","4-3","0-4","1-4","2-4","3-4","4-4","5-0","5-1","5-2","5-3","5-4","0-5","1-5","2-5","3-5","4-5","5-5"
]
#randequip=random.randrange(len(listaequipasxdddd))
#equipa=listaequipasxdddd[randequip]
for i in range (100):
    randindex=random.randrange(len(listanomes))
    nome=listanomes[randindex]+listanomes[randindex]
    randpaises=random.randrange(len(listapaises))
    pais=listapaises[randpaises]
    jgosjogados=random.randint(0,14)
    ncamisola=random.randint(1,99)
    tmpjogado=random.randint(0,90*jgosjogados)
    ngolos=random.randint(0,math.ceil(1.5*jgosjogados))
    print(f'INSERT INTO Jogador VALUES("{nome}",{ngolos},"{pais}",{ncamisola},{jgosjogados},{tmpjogado})')
for i in range(100):
    eqind=random.randrange(len(listaequipasxdddd))
    nomeequ=listaequipasxdddd[eqind]
    jogosjogados=random.randint(1,14)
    golostotais=random.randint(0,51)
    print(f'INSERT INTO EQUIPA VALUES("{nomeequ}",{jogosjogados},{golostotais})')

    



