waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["Registro","Registro"];
player createDiarySubject ["Reglas de Server","Reglas de Server"];
player createDiarySubject ["Reglas policias","Reglas policias"];
player createDiarySubject ["Zonas seguras","Zonas seguras (No matar)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["Objetos Ilegales","Objetos ilegales"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controles","Controles"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["Registro",
		[
			"Official Registro",
				"
					El resgistro oficial de cambios puedes encontrarlo en BIS foros(buscando Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["RegistroOficial",
		[
			"Custom Registro",
				"
					Esta sección está pensada para la gente que hace sus propias modificaciones en la misión, NO QUITE LA ANTERIOR.
				"
		]
	];

		player createDiaryRecord ["Reglas de Server",
		[
			"Exploits", 
				"
				Son considerados exploits, y seras baneado.<br/><br/>

				1. El salir de la cárcel a través de cualquier método que no sea el pago de la fianza o escapar en helicóptero.<br/>
				2. Matar a ti mismo para salir de roleplay. Salir de ser taseado, sobrio, arrestado, cárcel, etc Si el registro muestra te arrestaron, a continuación, usted murio, se le prohibió. No pagar la fianza y matar a ti mismo para un fácil viaje a casa. Puedes caminar aturdido perezoso.<br/>
				3. Duplicar items or dinero. Si alguien le envía una cantidad inalcanzable de dinero desde el principio del juego, informar a un administrador INMEDIATAMENTE y la transferencia de dicho dinero a un administrador. Haga esto lo antes posible o en un administrador podría banearte si ven que mucho en usted, sin duda,.<br/>
				4. Utilización de los elementos claramente hackeados. Si un hacker entra y genera elementos imposibles de conseguir, usted podría ser prohibido para el uso de dichos elementos. Informar de los artículos a los administradores inmediatamente y permanecer lejos de ellos.<br/>
				5. Abusar de los bugs o la mecánicas del juego para obtener ganancias. ¿Hay un arma replicar en alguna parte? Informe de ello y dejarlo solo. Si un administrador ve que abusas de un glitch, ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["Zonas seguras",
		[
			"Zonas seguras",
				"
					Explotar o bombardear(Si la explosion proviene de ser explotando intencionalmente un vehículo), robando, o la matanza se produce en torno a estos o en estas áreas que se castiga con ban.<br/><br/>
					
					Cualquier Vehiculo spawn(tienda o garage)<br/>
					Cualquier tienda de armas<br/>
					Todos los cuartes de la policia<br/>
					Bases rebeldes<br/>
					Tiendas de donadores<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Bannable_Offenses", 
				"
				Considere esto su primera y única advertencia.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (See 'Exploits')<br/>
				4. Ser kickeado 3 o mas vecees.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Interactuar_con_la_policia", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o baneados, basada en la discreción administradores.<br/><br/>
				
				1. Los civiles pueden ser arrestados por mirar en mochilas / Vehículos policias. Constantemente hacer esto dara lugar a su expulsion del servidor.<br/>
				2. Los civiles pueden ser arrestados por policias siguientes en el juego con el fin de indicar su posición.<br/>
				3. Los civiles o rebeldes que toman las armas para matar a policias en la ciudad o en otros lugares sin razón RP se considerarán RDMing. Vea la sección RDMing.<br/>
				4. Siguiendo y acosar o policias durante largos periodos de tiempo serán considerados griefing y / o envío de correo basura, y dara lugar a su expulsion del servidor.<br/>
				5. Bloqueando activamente policias de hacer sus deberes puede conducir a su detención. Constantemente hacer esto dara lugar a su expulsion del servidor.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Barcos", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o ban, basada en la discreción administradores.<br/><br/>
				
				1. Empujando repetidamente barcos sin permiso.<br/>
				2. Empujar un barco con la intención de lastimar o matar a alguien. Esto no es RP, es sólo una falla en la mecánica.<br/>
				3. Propósito atropellar nadadores / buzos.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Aviacion", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o ban, basada en la discreción administradores.<br/><br/>
				
				1. Propósito embestir un helicóptero en nada. Otros helicópteros, vehículos, edificios.<br/>
				2. Volando por debajo de 150 metros sobre la ciudad constantemente. Una vez que es ilegal, más que eso corre el riesgo de estrellarse en la ciudad, por lo tanto en contra de las reglas de servidor.<br/>
				3. Robar helicópteros sin aviso adecuado y un tiempo significativo para el conductor bloquear el vehículo. Si aterrizan y huyen sin bloqueos, bien, si se acaba de salir y se obtiene antes de que tengan la oportunidad para que encaje, no no.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Vehicles", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o ban, basada en la discreción administradores.<br/><br/>
				
				1. Propósito corriendo a la gente sobre (VRDM). Hay accidentes, y luego se va fuera de su camino a atropellar a alguien.<br/>
				2. Propósito tirarse delante de los vehículos con el fin de morir / salir lastimado.<br/>
				3. Ramming en otros vehículos con el fin de causar una explosión.<br/>
				4. Constantemente tratando de entrar en los vehículos que no pertenecen a usted a fin a la pena el propietario del vehículo, y no tratar de RP.<br/>
				5. Robo de un vehículo sólo para estrellarlo o no destruirlo.<br/>
				6. La compra de varios vehículos con el fin de hacer cualquiera de las anteriores.<br/>
				7. Atropellar aposta es motivo de ban.<br/>
				8. La única razón por disparar contra un vehículo que sería para inutilizarlo y / o disparos de advertencia en un juego de roles .Noo son para destruir deliberadamente vehículos enemigos.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Reglas de Comunicacion", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o ban, basada en la discreción administradores.<br/><br/>
				
				1. Side El chat no se puede utilizar para reproducir música o de otra manera microspam.<br/>
				2. Spamming cualquier canal de chat dara lugar a su expulsion.<br/>
				4. Canales Teamspeak se dividen en áreas por una razón. Los policias deben estar en los canales de policia en todo momento.<br/>
				5. Los civiles no pueden estar en cualquier canal de la COP sobre TeamSpeak con el fin de recabar información sobre su ubicación o movimientos. CIVS descubiertos realizando esta serán removidos del canal. Los reincidentes pueden ser expulsados ​​o prohibidos en el juego y TeamSpeak.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas de Server",
		[
			"Campo de batalla (RDM)", 
				"
				Los elementos de esta lista pueden resultar en su expulsión del servidor y / o ban, basada en la discreción administradores.<br/><br/>
				
				1. Matar a alguien en spawn.<br/>
								
				Todos estos son juzgados por los administradores sobre una base de caso por caso.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Reglas de Server",
		[
			"No hacer el idiota!", 
				"
				Si un administrador tiene que decirte que estás haciendo el idiota, es que estás haciendo las cosas idiotamente.<br/>
				Otros que causan dolor, interrumpiendo roleplay, y la lista sigue.<br/>
				Esta regla se puede invocar a discreción de un admin.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["Reglas policias",
		[
			"Crisis Negotiation",
				"
				Negociación de Crisis debe ser manejado por un sargento. Si uno no está disponible, la persona con el siguiente rango más alto debe manejar la situación.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Reglas policias",
		[
			"La reserva Federal",
				"
				1. La Reserva Federal es ilegal para los civiles para entrar, a menos que se les ha dado autorización. Si los civiles entran sin autorización han de ser escoltado fuera del sitio o arrestados si persisten.
				2. Se les puede pedir helicópteros sobrevolando la Reserva Federal a abandonar y discapacitados si se niegan.<br/>
				2. Si la Reserva Federal se está robando, se animó a que todos los agentes disponibles se mueven en detenerlo.<br/>
				3. Funcionarios cercanos deben dirigirse inmediatamente a la Reserva Federal para ayudar. Delitos menores pueden ser dejados durante un robo.<br/>
				4. La fuerza letal en ladrones de banco se puede utilizar si no hay otra alternativa disponible. Cada opción de taze y detener a la persona que debe hacerse primero.<br/>
				5. La policia no puede disparar a ciegas en el edificio.<br/>
				6. La policia debe evacuar a los civiles durante un robo.<br/>
				7. Cualquier civil que activamente hace un intento de bloquear la policia entre en el edificio puede ser tratado como un cómplice.<br/>
				8. Los oficiales de supervisión podrán contratar a personas o contratación de un grupo de personas para trabajar como guardias de seguridad para el banco. Consulte la sección 'Contratación' para obtener más información.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Reglas policias",
		[
			"AreasIlegales", 
				"
				1. Zonas de rebelde no entraran a menos que sea parte de una redadase constituida por 4 agentes y tengan una sospecha civil. <br/>
				2. No entrar en un área ilegal a menos que sea parte de una redada. ver Raiding / Camping.<br/>
				3. Si persigues a alguien en un área ilegal, pedir refuerzos.<br/>
				4. En ningún caso es un funcionario permitido acampar cualquier área ilegal.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Patrullar", 
				"
				1. La policia puede patrullar las carreteras y ciudades de la isla en busca de vehículos abandonados y la actividad criminal.<br/>
				2. Las patrullas se pueden hacer a pie en el interior de una ciudad, o en un vehículo cuando se encuentre fuera.<br/>
				3. Las patrullas incluyen áreas ilegales.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Puestos_de_control", 
				"
				Los policias se les anima a los puestos de control de configuración en áreas estratégicas para ayudar a combatir la actividad ilegal y promover la seguridad en la carretera.<br/><br/>
				
				1. Un punto de control debe constar de 3 o más oficiales, que utilizan 2 o más vehículos. Un ATV no cuenta como uno de los vehículos necesarios, pero todavía se puede utiliz.<br/>
				2. Un punto de control no puede ser configurado a 300 m de un área ilegal. Básicamente, no se puede instalar uno en la parte superior de un área ilegal.<br/>
				3. Los puestos de control sólo pueden ser configurados en las carreteras, pero no tiene por qué estar en una encrucijada.<br/>
				4. Los puestos de control no tienen que ser marcados en el mapa.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Tiene detener al conductor del vehículo a una distancia segura y apague el motor.<br/>
				2. Pídale al conductor y los pasajeros si tienen armas.<br/>
				3. Pídale al conductor y los pasajeros a salir del vehículo. Si ellos tienen armas, no frenar inmediatamente cuando salgan, les digo a bajar sus armas y les ha dado un plazo de tiempo razonable para hacerlo.<br/>
				4. Pregúnteles dónde se dirigen hacia y desde.<br/>
				5. Pregunte si van a someterse a un registro.<br/>
				6. Si permiten una búsqueda, puede contenerlos y la búsqueda de ellos.<br/>
				7. Si no se someten a una búsqueda, debe dejarlos ir, a menos que exista una causa probable.<br/>
				8. Después se realiza la búsqueda, es posible que les permita volver a entrar en su vehículo y en coche.<br/>
				9. En caso de que se encontró nada ilegal, la persona puede ser multado o arrestado dependiendo del delito.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Vehicles", 
				"
				1. Automóviles en el estacionamiento, o están estacionados razonablemente otra parte hay que dejar solos.<br/>
				2. Los vehículos que se ven abandonados, rotos, sin conductor, pueden ser confiscados.<br/>
				3. Los barcos deben ser estacionados razonablemente en tierra.<br/>
				4. Cualquier vehículo que no se ha movido en una cantidad significativa de tiempo puede ser confiscado.<br/>
				5. Impounding es una tarea esencial para un policia, ayuda a mantener el servidor limpio y menos lag.<br/>
				6. En caso de duda, siempre buscar el vehículo y el mensaje el propietario (s) antes de la incautación.<br/>
				7. Lanchas de la policia o de Hunter HMG pueden ser usados ​​para ayudar a capturar a los delincuentes. El arma debe ser usado para deshabilitar los vehículos, no para hacerlos explotar.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Reglas policias",
		[
			"exceso_de_velocidad", 
				"
				Los siguientes velocidades deben ser aplicadas por la policia Altis para la seguridad absoluta de los ciudadanos de Altis y todos los que viajan más allá de la ciudad.<br/><br/>
				
				Dentro de las principales ciudades:<br/>
				Pequeñas carreteras: 50km/h<br/>
				Las carreteras principales: 65km/h<br/>
				Fuera de las grandes ciudades:<br/>
				Carreteras pequeñas: 80km/h<br/>
				Las carreteras principales: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Protocolo de la Ciudad", 
				"
				1. Los oficiales pueden patrullar las principales ciudades - Kavala, Athira, Pyrgos y Sofía.<br/>
				2. Los oficiales pueden pasar por la tienda de coche para asegurarse de que no hay coches que necesitan ser embargado.<br/>
				3. Los oficiales pueden estar alrededor o merodear en el centro de la ciudad.<br/>
				5. La ley marcial no puede ser declarada en cualquier momento.<br/>
				6. Los edificios de los cuarteles de la policia son ilegales para los civiles para entrar sin autorización, sin embargo, no es ilegal que los civiles estén cerca a menos que estén causando una molestia.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Arrestar y multar",
				"
				La detención se debe hacer a los criminales que se consideran un peligro para ellos mismos o para otros.<br/><br/>

				1. Usted no puede detener a alguien si tú les has dado un billete y se lo pagó.<br/>
				2. Debe informar al sospechoso por qué están siendo arrestados antes de que los arresta.<br/>
				3. Si se quiere a un civil, es posible detenerlos. No los mates, a menos que la situación se inscribe en el marco del 'uso de la fuerza letal' sección.<br/><br/>


				Ticketing un civil se considera un peligro para la población civil. Si se rompen una ley, pero no suponen una amenaza para nadie, es posible que la compra de entradas a un civil.<br/><br/>

				1. Las multas deben ser un precio razonable.<br/>
				2. Precio de las entradas deben estar basadas fuera de los crímenes cometidos.<br/>
				3. La negativa a pagar una multa es motivo de detención.<br/>
				4. Dando una multa a un civil e ilegítima, como $ 100 mil por exceso de velocidad, etc, no está permitido y resultará en su retiro del departamento de policia.<br/><br/>
				
				Una lista completa de todos los delitos y las sanciones correspondientes se debe dar a los oficiales durante el entrenamiento. En caso de duda, o si usted no ha sido entrenado, preguntarle a un oficial de rango superior que hacer.<br/><br/>
				
				
				"
		]
	];
		
	player createDiaryRecord ["Reglas policias",
		[
			"Armas", 
				"
				Un policia NUNCA se permite suministrar a los civiles con armas. Esto te llevará prohibido desde el servidor y se retira de ser un policia.<br/><br/>

				Armas legales para civiles para llevar con un permiso:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Cualquier otro tipo de arma (incluyendo P07 Silenciado [Considerado como un arma de la policia]) es ilegal.<br/><br/>

				1. Los civiles no se les permite tener un arma dentro de los límites de la ciudad.<br/>
				2. Los civiles pueden tener un arma cuando no están en la ciudad. Sin embargo ellos deben someterse a un registro de licencia en caso de enfrentarse por un oficial y deben tener el arma en posición baja (Presione Ctrl dos veces).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"El Uso de la fuerza no Lethal",
				"
				En este momento la Taser (P07 Silenced) es la única forma de fuerza no letal.<br/><br/>

				1. Taser se debe usar para incapacitar a los civiles no cumpliendo con el fin de frenar.<br/>
				2. No descargue su Taser, a menos que la intención de incapacitar a un civil, descargando al azar tu arma dara lugar a su suspensión.<br/>
				3. Sólo use su Taser en cumplimiento de las leyes y las reglas, no hacer cumplir su voluntad sobre los demás.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["Reglas policias",
		[
			"Raiding/Camping",
				"
				Raiding se define como un escuadrón de policias invadiendo una zona de alta actividad criminal con el fin de detener a los delincuentes en actos ilegales.<br/><br/>

				1. Con el fin de atacar a un área, los policias deben tener al menos 2 agentes implicados, antes se debe comunicar a un sargento o superior.<br/>
				2. Todos los civiles en una zona de ataque pueden ser inmovilizados y registrados. Si no se encuentra nada ilegal, debe dejarlos ir.<br/>
				3. Si se encuentran los ilegales durante una búsqueda, es posible proceder a la detención o bien, como de costumbre.<br/>
				5. La fuerza letal sólo está autorizado como se describe en Uso de la fuerza letal.<br/>
				6. Después de que el área es segura, los funcionarios deben salir de la zona.<br/>
				7. Un área no puede ser asaltada de nuevo por 20 minutos después de una incursión anterior.<br/>
				8. Si el ataque es un fracaso (Todos los oficiales mueren), el temporizador de 20 minutos todavía se aplica a los funcionarios.<br/>
				9. Copia de seguridad puede ser llamado, pero no puede consistir oficiales caídos (ver 'Nueva regla Life').<br/><br/>

				Camping está definida como la estancia prolongar de un oficial en un área.<br/><br/>

				1. Los puestos de control no se consideran camping. Vea la sección de Checkpoint para la definición de los procedimientos adecuados de puntos de control.<br/>
				2. Ver epígrafes Agia Marina Protocolo Bank Robbery y para obtener más información sobre camping en la ciudad principal.<br/>
				3. Campamento de zonas ilegales se queda más tiempo del necesario después de una redada, o si los oficiales no llevan a cabo una redada, pero seguir viendo y tomar medidas contra los civiles entrar en la zona.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Cadena de mando",
				"
				El funcionario de mayor jerarquía en el servicio está a cargo de la policia fuera de los administradores en línea. Se espera que el oficial de alto rango que seguir las reglas y directrices de su su rango /, y debe reportar al administrador en caso de que se necesita tomar ninguna medida.<br/><br/>

				Cadena de Mando de la policia:<br/>
				1. Jefe<br/>
				2. Comisario</>
				3. Capitan<br/>
				4. Teniente<br/>
				5. Alferez<br/>
				6. Brigada<br/>
				7. Sargento<br/>
				8. Cabo<br/>
				9. Novato<br/><br/>

				Los G.E.O.S son una unidad especial y no tiene porque tener un nivel especifico. Se les nombrara segun sus dotes.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"El_uso_de_fuerza_letal",
				"
				1. Uso de la fuerza letal sólo está permitido para la protección de su vida, otra vida los oficiales, o una vida de civiles, si y sólo si la fuerza no letal no sería eficaz.<br/>
				2. Descarga de un arma cuando no está bajo amenaza o no durante los ejercicios de entrenamiento no está permitido. Los oficiales capturados en violación de esta regla serán removidos del servidor y suspendidos del SPD.<br/>
				3. El incumplimiento de la disciplina armas adecuado y el procedimiento tendrá que extrajo del servidor y suspendido de la SPD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["Reglas policias",
		[
			"Reglas_del_Teamspeak",
				"
				1. Todos los policias deben estar en Teamspeak 3 en un canal de policia designado. El no estar en Teamspeak durante un control de administración dara lugar a su expulsión inmediata del servidor.<br/>
				2. Por favor únase a Teamspeak ANTES que inicie sesión como un policia, diablos, únete Teamspeak, incluso antes de unir el servidor.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["Objetos ilegales",
		[
			"Reglas rebeldes",
				"
				Un rebelde es aquel que se levanta en la resistencia armada contra un gobierno. En este caso sería la policía. Sin embargo, debido a la pequeña cantidad de la policía frente a la posible cantidad de rebeldes, no atacan a la policía sin una razón, por favor sea civil y use el sentido común, y no tome la palabra rebelde literalmente, sino cómo se va a hacer este divertido servidor para todos.<br/><br/>
				1. Un rebelde primero debe formar una banda y, a continuación, declarar intenciones.<br/>
				2. La resistencia no es excusa RDMing (Ver RDMing en las Reglas Generales)<br/>
				3. Roleplay resistencia debe llevarse a cabo en más de un sentido constantemente robar el banco o disparar los agentes de policía.<br/>
				4. La resistencia debe ser coordinada.<br/>
				5. Una razón CORRECTA debe estar detrás de todas y cada ataque.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Objetos ilegales",
		[
			"Pandillas Rules",
				"
				1. Estar en una banda no es ilegal. Sólo cuando se cometen crímenes ilegales.<br/>
				2. Al estar en una zona de pandillas no es ilegal. Sólo al participar en actividades ilegales.<br/>
				3. Las bandas pueden mantener y controlar las zonas de pandillas. Otras bandas pueden atacar a una banda de control para competir por el control de una zona de bandas.<br/>
				4. Para declarar la guerra a otra pandilla, el líder debe dar cuenta de ello en el mundial y todos los miembros de las bandas de ambas pandillas debe ser notificado. Para una guerra de bandas más largo plazo, la declaración debe hacerse en los foros.<br/>
				"
		]
	];
	player createDiaryRecord ["Objetos ilegales",
		[
			"Vehiculos ilegales",
				"
				Un civil en el control de los siguientes vehículos prohibidos está sujeto a las consecuencias definidas en el control no autorizado de una ley vehículo prohibida.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hemmet<br/>
				4. Karts fuera de pista.
				5. Cualquier Vehiculo de la policia<br/>
				6. Cualquier Vehiculo Serv.112<br/>
				"
		]
	];
	player createDiaryRecord ["Objetos ilegales",
		[
			"Armas_ilegales",
				"
				Un civil en posesión de los siguientes es sujeto a las consecuencias como se define en la posesión ilegal de una ley de armas de fuego.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Objetos Ilegales",
		[
			"Objetos ilegales",
				"
				Los siguientes artículos son ilegales de poseer:<br/><br/>
				1. Cualquier droga<br/>
				2. Cualquier Explosivo<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controles",
		[
			"controles",
				"
				Y: Abrir menu de jugados<br/>
				U: Abrir y cerrar coches<br/>
				F: Sirena de la policia(si eres poli)<br/>
				T: Maletero del vehiculo<br/>
				Nº2: Picar.<br/>
				Nº3: Pala.<br/>
				Nº6: Nitro.<br/>
				Left Shift + R: Arrestar (Solo policia)<br/>
				Left Shift + G: Dejar Incosciente / stunear (Solo civil, usar para robar)<br/>
				Left Windows: Interacción clave principal que se utiliza para recoger objetos / dinero, interactuando con los coches (reparación, etc) y para los policias de interactuar con la población civil. Se puede recuperarse a una sola tecla como H pulsando ESC-> Configurar-> Controles-> Personalizar-> Usar Acción 10<br/>
				Left Shift + L: Activa las luces de sirena de policia (como policia).<br/>
				Left Shift + O : Secuestro.<br/>
				Left Control + H : Guardar Pistola.<br/>
				
				Left Shift + 3 : Te rindes osea, levantas las manos.<br/><br/>
				"
		]
	];