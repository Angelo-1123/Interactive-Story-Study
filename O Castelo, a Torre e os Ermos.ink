VAR vidas = 1 // Tracks how much damage the player can take. If it turns to zero, it's game over

VAR dano = 1 // tracks how much damage the player deals when attacking an enemy

VAR moedas = 0 // Tracks the player's gold coins

// TODO: finish translating the game to english. Current step Castle.Labyrinth2

*[English] -> Inicio_EN
*[Português] -> Inicio_PTBR

= Inicio_EN

Jumping out of the boat, you step on the sands of a deserted beach.

Other water vessels are found capsized along the shore, they keep company to the ruins of a great tower.

*[Follow to the tower] -> Prologue

= Inicio_PTBR

Saltando da canoa, você pisa nas areias de uma praia deserta.

Outras embarcações encontram-se naufragadas pelas margens, elas fazem companhia para as ruínas de uma grande torre.

*[Seguir até a torre] -> Prologo

= Prologue

Holding firmly the pommel of your sword, you walk towards the ruins.

Exausted by the journey, you climb what has remained from the tower until you find a spot where you can rest while been aware of your surroundings.

*[Rest] -> Prologue_2

= Prologo

Com a mão segurando firme o cabo de sua espada, você caminha até a estrutura em ruínas.

Exausto da viagem, você escala o que restou da torre até encontrar um lugar com boa visibilidade do entorno e estende seu saco de dormir.

*[Descansar] -> Prologo_2

= Prologue_2

From your vantage point, while you start to lose consciousness, you're able to see the whole island. Most of it is covered by trees that join together hiding the contents of a vast forest. Near the center of the island, a small abandoned village can be seen, partially reclaimed by the grass, the vines and the trees. Behind the village, climbing a steep mountain, there is a castle.

Inside that castle lives the Tyrant, the one you need to vanquish so that nobody has to make that journey anymore.

You fall asleep...

-> The_Arrival

= Prologo_2

De seu ponto elevado, enquanto pega no sono, você consegue enxergar a ilha inteira. Ermos selvagens cobrem quase toda a área. Exceto por uma pequena vila abandonada no pé de uma montanha sobre a qual ergue-se um castelo.

Dentro desse castelo vive o Tirano, aquele que deve ser derrotado para que ninguém mais tenha que fazer essa jornada como você.

O sono vem...

-> A_Chegada

=== The_Arrival ===

You wake up to find a flask resting over a piece of cloth with a scroll tied to it.

-> Flask_and_Scroll

= Flask_and_Scroll

+{not Drink_Flask}[Inspect the Flask]-> Flask
*[Inspect the scroll] -> Fey_Gift
*{not Drink_Flask}[Abandon the flask and go on] -> Nexus
*{Drink_Flask}[Go on] -> Nexus

= Fey_Gift

"Greetings from your guardian fairy,
Don't go straight to the castle!
Drink from the flask, EVEN IF IT TASTES BAD!
Don't be stupid, please, I'm tired of heroes that doesn't listen to me!"

->Flask_and_Scroll

= Flask

The liquid inside smells bad and doesn't look tasty at all.

+[Drink it] -> Drink_Flask
+[Leave it] -> Flask_and_Scroll

= Drink_Flask

It tastes horribly...

~ vidas++

->Flask_and_Scroll

=== A_Chegada ===

Ao acordar, você repara em um frasco deixado próximo a você, ele repousa sobre um pano com um pergaminho amarrado.

-> Frasco_e_Pergaminho

= Frasco_e_Pergaminho

+{not Beber_Frasco}[Inspecionar o Frasco]-> Frasco
*[Inspecionar o pergaminho] -> Presente_de_Fada
*{not Beber_Frasco}[Abandonar o frasco e seguir] -> Cerne
*{Beber_Frasco}[Seguir] -> Cerne

= Presente_de_Fada

"Saudações da sua fada guardiã,
Não vá direto ao castelo!
Beba o conteúdo do frasco, MESMO QUE O GOSTO SEJA RUIM!
Não me dê trabalho, estou cansada de heróis que não me escutam!"

-> Frasco_e_Pergaminho

= Frasco

O líquido contido no frasco cheira mal e não parece ter uma consistência boa.

+[Beber] -> Beber_Frasco
+[Deixar para lá] -> Frasco_e_Pergaminho

= Beber_Frasco

O gosto é horrível...

~ vidas++

-> Frasco_e_Pergaminho

=== Nexus ===

From the top of the ruins you scout the region around:

The Tyrant's castle still haunts the island from atop the mountain.

The abandoned village gives you chills, maybe it's best to avoid it.

The dense forest certainly hides secrets.

+[Challenge the Tyrant in their castle] -> Castle
+[Explore the abandoned village] -> Village
+[Explore the mysterious wilds] -> Wilds

=== Cerne ===

Do topo das ruínas da torre você examina a região ao redor:

O Castelo do Tirano continua a assombrar a ilha do topo de sua montanha.

O vilarejo abandonado causa calafrios, talvez seja melhor evitá-lo.

Tão densos ermos certamente escondem segredos.

+[Confrontar o Tirano em seu castelo] -> Castelo
+[Investigar o vilarejo abandonado] -> Vilarejo
+[Investigar os ermos misteriosos] -> Ermos

=== Village ===

Doors ajar and broken windows creek as the wind blows through this deserted town.

{not Beast_Victory: -> The_Beast}

{The_Merchant3: Your hear a distant melody being whistled inside the abandoned town. As you follow the sound, you see the smiling shape of Carrion, the merchant, sitting behind a cloak spread on the floor. On top of the cloak, a few items are carefully palced -> Merchant_Menu}

= The_Beast

VAR beast_HP = 3

The sound of heavy steps is heard even from outside the village.

Whatever is creating that sound, doesn't fear being perceived, quite the opposite, it acts as if roaming through its domain.

+[Challenge the creature] -> Face_the_Beast
+[Explore the village stealthly] -> Explore_Village
+[Get back] -> Next_Step

= Face_the_Beast

Walking steadily, you enter the village searching for the creature.

Turning a corner, you see the beast. It has the shining eyes of a feline, sharp horns and at least double your size.

When its eyes fall on you, it releases a fearsome roar and begins to circle you, ready to lunge.

-> Menu_Beast_Combat

= Menu_Beast_Combat

+[Fight] -> Beast_Combat
+[Flee] -> Flee_Beast

= Flee_Beast

You try to run, but the creature seems to be catching up.

+[Run for your life] -> Beast_Strikes
+[Try to hide] -> Hide_Beast

= Hide_Beast

You enter through a tight alley and search for a passage small enough that the beast wouldn't be able to follow.

{~-> Beast_Strikes | -> Hide_Beast2 | -> Hide_Beast2}

= Hide_Beast2

Jumping inside a window, you manage to find a place to hide inside a house almost completely covered by debris. It takes time, but eventually the beast gives up on you and it is safe to escape.

-> Next_Step

= Beast_Combat

{~-> Strike_Beast|-> Beast_Strikes}

= Strike_Beast

You strike the beast with your sword. {Fairy.Flaming_Sword2: A blue flaming trail is left as the {Skeleton.Skeleton_Victory: shining} blade arcs}

~beast_HP -= dano

{beast_HP < 1: -> Beast_Victory}
{beast_HP > 0: -> Menu_Beast_Combat}

= Beast_Strikes

The beast lunges at you, knocking you to the ground trying to bite your neck.

~vidas--

{vidas < 1: You fall under the beasts weight, even with all your strength, it is impossible to repel its powerful bite. -> Game_Over2}

{vidas > 0: You break free from the beast rolling to the side. While you get up, you feel the deep wounds left by the creature. {vidas == 1: Another strike lunge like that and you know you're done.}}

= Beast_Victory

The beast falls as you strike, you hear one last fearsome roar as it dies.

While you recover, light steps can be heard from a nearby alley.

"I knew you would kill it!" exclaims a young man wearing tattered clothes and disheveled hair "You do have the face of a hero!"

*"Who are you?" -> The_Merchant

= The_Merchant

"You can call me Carrion, I'm a..." He makes a short pause "I think that right now I'm nothing" He says with a big smile "but I can be a merchant of sorts, if you wish!"

-> Merchant_Dialogue

= Merchant_Dialogue

*[What kind of name is "Carrion"?] -> Tender_Nickname
* "Merchant?" -> The_Merchant2

= Tender_Nickname

"It was the way my... friends(?) called me, but this doesn't matter, what do you think of my proposition?"

->->

= The_Merchant2

"It may not look like it" he says while combing his messy hair "but, its been a long time since I arrived here."

"In the beginning, when I thought I would face the Tyrant, I hoarded some itens to help my quest. But in the end, facing him never seemed like a wise choice..."

"Now that you're here to solve this problem, I can sell you the items I wisely acquired. This way, you have a better chance of getting out of here alive and I have a beter change of getting out of here rich!"

-> Merchant_Dialogue2

= Merchant_Dialogue2

*"Our objective is the same, killing the Tyrant. Wouldn't it be better if you just handed me the items so that our chances of winning are greater?" -> Of_Course -> Merchant_Dialogue2

*"I have no interest in buying anything from you." -> A_Pity

*"Seems fair, what do you have to offer?" -> The_Merchant3

= Of_Course

"Of course..." He says holding in the laughter "but in exchange you hand me the coins that you're carrying, as it would be a waste if you were to be slain by the Tyrant with a fortune in your pocket!"

->->

= A_Pity

"It's a pity..." He seems genuinely sad for a few seconds, then, he shrugs and is back to his usual smiling demeanor "In this case, I must bid you farewell, Just do me the favor of dying in a place thats easy to reach, your belongings may be of service for the next hero to arrive - and your coins surely will be of use to me!"

Carrion vanishes through the same alley from which he arrived.

-> Next_Step

= The_Merchant3

"Right now? Nothing, duh" He says, surprised "I need some time to gather my things, but you can be sure that next time you come here I'll have something to sell!" Carrion rubs his hands together with the greatest of smiles.

-> Next_Step

= Explore_Village

You walk through the village, close to the ruined walls, following the sound of heavy footsteps, you glance at a creature through a fissure on the wall.

The beast have at least double your size, sharp horns and claws, walking as if this was his dominion.

Maybe taking it by surprise you can slay the creature...

+[Ambush the beast] -> Strike_Beast
+[Flee before it notices you] -> Next_Step

= Merchant_Menu

{Buy_Map && Buy_Compass &&  Buy_Amulet:
    "You have bought all my wares, now let me rest, I already worked too much for a whole life" says Carrion with his eyes covered by gold coins as he rests peacefully.
    
    -> Next_Step
    - else:
    "My favorite customer!" Exclaims Carrion with open arms "behold my collection! Each of these items can be yours, if you have the coins to pay..."
    -> Merchant_Menu2
}

= Merchant_Menu2

+{not Buy_Compass}[Inspect Compass] -> Inspect_Compass

+{not Buy_Map}[Inspect Treasure Map] -> Inspect_Map

+{not Buy_Amulet}[Inspect Amulet] -> Inspect_Amulet

+[Journey on] ->Merchant_Farewell

= Inspect_Compass

A dull compass, with cracked glass on the edges. The needle doesn't point north, instead, it points to the castle.

"This compass is attracted by magic. As there is nothing more powerful than the Tyrant on this island, it'll lead you directly to him. Very useful to navigate the labyrinth that is his castle. I can sell it to you for 30 coins, friendly price."

+[Inspect something else] -> Merchant_Menu2
*{moedas > 29}[Buy Compass] -> Buy_Compass
+[Journey on] -> Merchant_Farewell

= Buy_Compass

~moedas -= 30

"Always a pleasure!"

You pocket the compass carefully, fearing that you have been deceived...

-> Merchant_Menu2

= Inspect_Map

A scroll stained by time, but still legible. It contains a map of this island with a path that leads below the mountain that the Tyrant's Castle sits. The path is marked by a dotted line ending on a red X.

"This is a treasure map. I would go there myself, if it wasn't so close to the castle. If you have the courage, you can keep the whole treasure. I just ask form a small fee of 10 gold coins for the tip. You know how it is, right? finder's fee."

+[Inspect something else] -> Merchant_Menu2
*{moedas > 9}[Buy Map] -> Buy_Map
+[Journey on] -> Merchant_Farewell

= Buy_Map

~moedas -= 10

Carrion hands you the map, as well as some papers from his pocket.

"If you use only the map to guide yourself, you'll end up falling for traps. These papers will help you avoid them." he says with a wink.

-> Merchant_Menu2

= Inspect_Amulet

A sapphire amulet bound in silver chains.

"This one is truly a treasure. They say it is capable of protection its wearer from the tyrant's magic. Truth or not, it's one of the prettiest jewels I've ever seen..." he says with his eyes shining while admiring the piece "50 coins and I part ways with this beauty."

+[Inspect something else] -> Merchant_Menu2
*{moedas > 49}[Buy Amulet] -> Buy_Amulet
+[Journey on] -> Merchant_Farewell

= Buy_Amulet

~moedas -= 50

As you hand him the coins, Carrion hands you the amulet. You feel a pleasant sensation of security radiating from the sapphire.

"I can't believe you really had this kind of money!" Exclaims the shocked merchant "The price was only there so people wouldn't complain that I'm showing off something that is not for sale..."

As you pocket the stone before he has a change of heart, Carrion seems to let go.

"If now I'm to be a merchant, I have to get used to this kind of feeling. Let the thieves grow attatched to their trophies, real merchants must make sacrifices for the benefit of greed!"

-> Merchant_Menu2

= Merchant_Farewell

"If you find the coins, you know where to spend them!" Says Carrion waving a hand and smiling.

-> Next_Step

=== Vilarejo ===

Portas abertas e janelas quebradas rangem ao vento.

{not Vitoria_Fera: -> A_Fera}

{O_Mercador3: Você ouve uma melodia assobiada originando-se do centro da vila. Ao se aproximar, você enxerga a forma sorridente de Carniça sentado diante de um grande manto estendido no chão. Sobre o manto, alguns itens encontram-se cuidadosamente dispostos -> Mercador_Menu}

= A_Fera
VAR fera_vida = 3

O som de passos pesados é ouvido mesmo antes de adentrar a vila.

O que quer que esteja causando esse barulho, não parece ter medo de ser percebido, muito pelo contrário.

+[Confrontar a origem dos passos] -> Enfrentar_Fera
+[Investigar a vila furtivamente] -> Investigar_Vila
+[Dar meia volta] -> Proximo_Passo

= Enfrentar_Fera

Caminhando decididamente, você adentra pela vila em busca da origem dos passos.

Virando uma esquina, você se depara com a fera. Ela tem olhos brilhantes como os de um felino, chifres afiados e pelo menos o dobro do seu tamanho.

Quando os olhos dela cruzam com os seus, ela solta um rugido medonho e começa a caminhar fazendo um círculo ao seu redor, pronta para dar o bote.

-> Menu_Combate_Fera

= Menu_Combate_Fera

+[Enfrentar] -> Combate_Fera
+[Fugir] -> Fugir_Fera

= Fugir_Fera

Você tenta fugir, mas sente que ela está te alcançando.

+[Correr pela sua vida] -> Fera_Ataca
+[Tentar despistá-la] -> Esconder_Fera

= Esconder_Fera

Você entra por uma rua mais apertada do vilarejo e procura por alguma passagem estreita demais para a criatura.

{~->Fera_Ataca|->Esconder_Fera2 | ->Esconder_Fera2}

= Esconder_Fera2

Saltando para dentro de uma janela apertada, você consegue abrigo nas ruínas de uma casa quase totalmente coberta por escombros. Demora, mas a fera por fim perde o interesse e você pode escapar de vez.

-> Proximo_Passo

= Combate_Fera

{~->Golpear_Fera|->Fera_Ataca}

= Golpear_Fera

Você golpeia a fera com sua espada. {Fada.Espada_Flamejante2: Uma rastro flamejante se forma pelo caminho da lamina} {Esqueleto.Vitoria_Esqueleto: prateada}.

~fera_vida -= dano

{fera_vida < 1: ->Vitoria_Fera}

{fera_vida > 0: -> Menu_Combate_Fera}

= Fera_Ataca

A fera pula sobre você, derrubando-o no chão enquanto tenta morder teu pescoço.

~vidas --

{vidas < 1: Você cede sobre o peso da fera, mesmo com toda a sua força, não consegue repelir as mandíbulas afiadas. -> Game_Over}

{vidas > 0: Você se liberta da fera rolando para o lado. Enquanto levanta, sente as feridas profundas causadas pelo monstro. {vidas == 1: Você sabe que não resistiria a outro golpe como este.} -> Menu_Combate_Fera}

= Vitoria_Fera

Seu golpe derruba a fera, que solta um último rugido apavorante antes de tombar de vez.

Enquanto você se recupera do combate, ouve passos tímidos vindo de uma viela apertada.

"Eu sabia que você mataria a fera!" exclama um jovem maltrapilho de cabelos desgrenhados "Você tem mesmo cara de herói!"

*"Quem é você?"-> O_Mercador

= O_Mercador

"Pode me chamar de Carniça, eu sou um..." Ele se perde nas palavras por um instante "Acho que atualmente eu não sou nada" diz ele com um sorriso "mas posso ser uma espécie de mercador, se você quiser!"

-> O_Mercador_Dialogo

= O_Mercador_Dialogo

*"Que tipo de nome é 'Carniça'?" -> Apelido_Carinhoso-> O_Mercador_Dialogo
*"Como assim mercador?" -> O_Mercador2

= Apelido_Carinhoso

"Era como meus... amigos(?) me chamavam, mas isso não importa, o que você acha da minha proposta?

->->

= O_Mercador2

"Pode não parecer" diz ele arrumando o cabelo "mas, faz tempo que eu estou nessa ilha."

"No início, quando eu pensava em enfrentar o Tirano, acumulei alguns itens para me ajudar, mas enfrentá-lo nunca pareceu uma escolha sábia..."

"Agora que você está aqui para resolver esse problema, eu posso te vender os itens que eu sabiamente acumulei. Dessa forma, você tem mais chance de sair dessa ilha vivo e enquanto eu tenho mais chances de sair daqui rico!"

-> O_Mercador_Dialogo2

= O_Mercador_Dialogo2

*"Nosso objetivo é o mesmo, matar o Tirano. Não seria melhor você só me entregar os itens que podem ser uteis para aumentar a nossa chance?" -> Claro_Que_Sim -> O_Mercador_Dialogo2

*"Não tenho interesse" -> Uma_Pena

*"Parece justo, o que você tem para me oferecer?" -> O_Mercador3

= Claro_Que_Sim

"Claro, claro..." diz ele segurando o riso "mas em troca você me entrega as moedas que você tiver carregando, afinal, se você falhar vai ser um desperdício morrer com elas no bolso!"

->->

= Uma_Pena

"É uma pena..." ele parece genuinamente chateado por alguns intantes, em seguida, da de ombros e volta a esboçar o sorriso de antes "Nesse caso, devo me despedir. Apenas faça-me o favor de morrer em um lugar de fácil acesso, seus pertences podem vir a ser úteis para o próximo herói - e as moedas dele com certeza serão úteis para mim!"

Carniça se despede e some pela mesma viela de onde ele veio.

->Proximo_Passo

= O_Mercador3

"Agora? Nada, ué" diz ele surpreso "Preciso de um tempo para reunir minhas coisas, mas pode deixar que da próxima vez que você vier ao vilarejo terei algo para vender!" diz ele esfregando as mãos com um sorriso exagerado.

->Proximo_Passo

= Investigar_Vila

Você caminha pela vila, rente aos muros de casas abandonadas, seguindo o som dos passos pesados, você vislumbra a criatura por uma fissura no muro.

O monstro tem pelo menos o dobro do seu tamanho, chifres e garras afiadas, caminha como se esse fosse o domínio dele.

Quem sabe com o elemento surpresa você consiga derrotar essa criatura...

+[Emboscar a fera] -> Golpear_Fera
+[Fugir antes que ela te perceba] -> Proximo_Passo

= Mercador_Menu

{Comprar_Bussola && Comprar_Mapa && Comprar_Amuleto:
        "Você acabou com meu estoque, agora deixe-me descansar, já trabalhei demais para uma vida inteira" diz Carniça com os olhos cobertos por moedas de ouro enquanto repousa despreocupado.
        
        -> Proximo_Passo
    - else:
        "Quem é vivo sempre aparece!" Exclama ele com os braços estendidos "Contemple, minha coleção! Qualquer um desses itens podem ser seus, se você tiver moedas para pagar..."

        -> Mercador_Menu2    
}

= Mercador_Menu2

+{not Comprar_Bussola}[Inspecionar Bússola] -> Inspecionar_Bussola

+{not Comprar_Mapa}[Inspecionar Mapa do Tesouro] -> Inspecionar_Mapa

+{not Comprar_Amuleto}[Inspecionar Amuleto] -> Inspecionar_Amuleto

+[Seguir jornada] ->Mercador_Despedida

= Inspecionar_Bussola

Uma bússola fosca, com o vidro trincado nas bordas. A agulha não aponta para o norte, ao invés disso, aponta para o castelo.

"Essa bússola é atraída por magia. Como não há nada mais poderoso que o Tirano nas redondezas, ela o levará diretamente até ele. Muito útil para navegar o labirinto que é o castelo dele. Como eu sou seu amigo, faço ela por 30 moedas."

+[Inspecionar outra coisa] -> Mercador_Menu2
*{moedas > 29}[Comprar a bússola] -> Comprar_Bussola
+[Seguir Jornada] -> Mercador_Despedida

= Comprar_Bussola

~moedas -= 30

"Sempre um prazer fazer negócios contigo!"

Você guarda a bússola com cuidado, com um medo crescente de ter sido enganado...

-> Mercador_Menu2

= Inspecionar_Mapa

Um pergaminho manchado pelo tempo, mas ainda legível. Desenhado nele há uma representação da montanha sobre a qual o castelo do Tirano foi erguido. Assim como um caminho complexo marcado por curvas tracejadas que terminam em um grande X vermelho.

"Esse é um mapa do tesouro. Eu mesmo iria atrás, se o X não estivesse tão próximo do castelo. Se você tiver coragem, pode levar o mapa e ficar com o tesouro. Só peço uma pequena tarifa de 10 moedas pela informação. Sabe como é, né? taxa de olheiro."

+[Inspecionar outra coisa] -> Mercador_Menu2
*{moedas > 9}[Comprar Mapa] -> Comprar_Mapa
+[Seguir Jornada] -> Mercador_Despedida

= Comprar_Mapa

~moedas -= 10

Carniça te entrega o mapa, assim como alguns outros papeis que ele tinha guardado em um bolso.

"Se você se guiar só pelo mapa, vai acabar caindo em armadilhas, Nesses papeis estão alguns pontos de referência para evitar os perigos do caminho" Diz ele com uma piscadela.

-> Mercador_Menu2

= Inspecionar_Amuleto

Um amuleto de safira preso a uma corrente de prata.

"Este aqui realmente é um tesouro. Dizem que ele é capaz de te proteger contra a magia do Tirano. Sendo verdade ou não, é uma joia das mais bonitas..." diz ele com os olhos brilhando enquanto admiram a peça "Por 50 moedas eu me desfaço dessa belezura."

+[Inspecionar outra coisa] -> Mercador_Menu2
*{moedas > 49}[Comprar Amuleto] -> Comprar_Amuleto
+[Seguir Jornada] -> Mercador_Despedida

= Comprar_Amuleto

~moedas -= 50

Conforme você entrega as moedas para o Carniça e ele te entrega o amuleto, você sente uma sensação agradável de segurança que se origina da safira.

"Eu não acredito que você realmente tinha essa fortuna toda!" Exclama o mercador incrédulo "Tem preço que a gente põe só pra não dizer que não quer vender..."

Conforme você guarda a pedra antes que Carniça mude de ideia, ele parece deixar o pensamento para lá.

"Se agora eu sou mercador, tenho que me acostumar com esse sentimento. Os ladrões que se apeguem a troféus, comerciantes de verdade devem fazer sacrifícios em nome da ganância!"

-> Mercador_Menu2

= Mercador_Despedida

"Se encontrar moedas por ai, já sabe onde gastá-las!" Despede-se Carniça sempre sorridente.

-> Proximo_Passo

=== Castle ===

Even while holding the pommel of your sword, you still shake when you think of all the heroes that never came back from this journey...

The trail that leads to the castle isn't hard, but it's a long one, giving all that time to think...

+[Keep walking] -> Castle_Door
+[Go back] -> Next_Step

= Castle_Door

You arrive at the castle doors, they're ajar. The gap is only enough for you to glance at the chamber within.

There is a red carpet over the stone floor and a imposing throne at the other side of the room. Red pennants cover the walls, barely swinging as there is little to no wind inside.

+[Enter the castle] -> Castle_Entrance
+[Flee] -> Castle_Flee

= Castle_Entrance

You slide into the chamber prepared to face the Tyrant, however, he is nowhere to be found.

Behind the throne, you find a corridor that leads further into the castle.

What looked like a castle from the outside, is more like a maze on the inside.

->Castle_Labyrinth

= Castle_Labyrinth

You walk through the poorly lit corridors of the castle...

{~-> Poisoned_Fountain |-> Healing_Fountain}

= Poisoned_Fountain

At the end of the hallway, you find a fountain of sparkling waters. The statue of a fairy guardian adorns the structure.

+[Drink from the waters] -> Drink_Poison
+[Follow your journey] -> Castle_Labyrinth2

= Drink_Poison

The taste is delicious, the best waters that you have ever tasted.

So good that you need to drink one more handful...

+[One more drink, and then I can go...] -> Drink_Poison2
+{Village.Buy_Amulet}[Resist the urge and move on] -> Castle_Labyrinth2

= Drink_Poison2

You start to feel bloated, but you can't manage to stop drinking, no matter what...

-> Game_Over2

= Healing_Fountain

At the end of the hallway, you find a fountain of sparkling waters. The statue of your fairy guardian adorns the structure.

+[Drink from the waters] -> Drink_Cure
+[Follow your journey] -> Castle_Labyrinth2

= Drink_Cure

It tastes horribly...

~vidas++

+[Drink more?] -> Drink_Cure
+[Follow on] -> Castle_Labyrinth2

= Castle_Labyrinth2

You climb through interminable stairs...

{~-> Lightning_Gauntlet |->Lightning_Gauntlet |->Lightning_Gauntlet |->Lightning_Gauntlet |-> Lightning_Gauntlet2}

= Lightning_Gauntlet

You enter a hall where a gauntlet is affixed to a metallic pillar. The gauntlet is made of some strange kind of metal that has a blue hue. Observing the pillar for a few seconds is enough for you to see an arc of energy running through the structure. The ground around it is covered by ashes.

You recall legends about the King's Gauntlet: "The one that wields the gauntlet and separate it from the pillar will be our one true king and vanquish the Tyrant".

Rumor has it that this tale was spread by the Tyrant himself, with what purpose, who knows...

+[Wield the Gauntlet] -> Gauntlet_Failure
+[Follow on] -> Castle_Labyrinth3

= Lightning_Gauntlet2

You enter a hall where a gauntlet is affixed to a metallic pillar. The gauntlet is made of some strange kind of metal that has a blue hue. The ground around it is covered by ashes.

You recall legends about the King's Gauntlet: "The one that wields the gauntlet and separate it from the pillar will be our one true king and vanquish the Tyrant".

Rumor has it that this tale was spread by the Tyrant himself, with what purpose, who knows...

+[Wield the Gauntlet] -> Gauntlet_Success
+[Follow on] -> Castle_Labyrinth3

= Gauntlet_Failure

{Secret_Treasure.Shock: ->Gauntlet_Success}
{Secret_Treasure.Broken_Circle: -> Gauntlet_Success}

You wield the gauntlet in hopes of being the hero that will cleanse this land from the Tyrant...

You feel your hand burn, energy arcs through the gauntlet. The pain quickly spreads through your whole body.

You try taking off the gauntlet, but you can't open your hand no matter what.

In a matter of seconds, you turn into another pile of ashes covering the floor...

-> Game_Over2

= Gauntlet_Success

You wield the gauntlet in hopes of being the hero that will cleanse this land from the Tyrant...

It easily detaches from the pillar.

As you move your hand, arcs of energy flow through the gauntlet, spreading light around.

The Tyrant better be prepared...

~dano += 2

*[Follow on]->Castle_Labyrinth3

= Castle_Labyrinth3

VAR tyrant_HP = 7

VAR ring_HP = 2

VAR sword_HP = 2

You feel the presence of the Tyrant...

{Village.Buy_Compass:
    -> Face_the_Tyrant
-else:
    -> Tyrant_Ambush    
}

= Tyrant_Ambush

As soon as you feel his presence, a strong wind almost knocks you prone!

Trying to recover, you glance upon the silhouette of a tall, strong man. He wears plate armor painted red and covered with marks of cuts and stabs. In one hand he holds a radiant sword, while on the other he wears a ring so imbued in magic that the air around it crackle with energy. Brought by the wind, he floats in your direction ready to strike. His eyes inside the helm burn with hatred.

-> Tyrant_Strikes

= Face_the_Tyrant

The compass prevents you from being ambushed!

Trying to recover, you glance upon the silhouette of a tall, strong man. He wears plate armor painted red and covered with marks of cuts and stabs. In one hand he holds a radiant sword, while on the other he wears a ring so imbued in magic that the air around it crackle with energy. Brought by the wind, he floats in your direction ready to strike. His eyes inside the helm burn with hatred.

-> Hero_Strikes

= Menu_Tyrant_Combat

+[Nothing you can do but fight back!] -> Tyrant_Combat

= Tyrant_Combat

Both combatants test each other's defenses in search of an opening...

{~-> Hero_Strikes | -> Tyrant_Strikes}

= Hero_Strikes

You take the initiative, where will you strike?

+[Strike the Tyrant] -> Strike_Tyrant
+{sword_HP > 0}[Try to disarm him from his Radiant Sword] -> Strike_Sword
+{ring_HP > 0}[Try to wound the hand that bears the Ring] -> Strike_Ring

= Tyrant_Strikes

{~-> Radiant_Cut|-> Finger_of_Death}

= Radiant_Cut

{sword_HP < 1: -> Tyrants_Claws}

The Tyrant strikes you with his golden blade, a powerful blow!

~vidas -= 2

{vidas == 1: You don't know how you survived this strike, but you're sure that even his bare hands could kill you right now.}

{vidas == 2: You feel the deep wound caused by his sword and know that another strike like that and you're done.}

{vidas < 1:
You feel the wound burning as you fall to the ground. The Tyrant floats next to you and murmurs with his deep voice "Another foolish hero, another soul to quench my thirst!" ->Game_Over2
-else:
{   Gauntlet_Success:
        You feel the gauntlet vibrate with energy, making you faster. Fast enough that you can strike the Tyrant before he can defend himself.
        -> Hero_Strikes
    -else:
        "Bow to me!" the Tyrant's voice make the halls shake as if hit by lightning.
        -> Menu_Tyrant_Combat
    }
}

= Finger_of_Death

{ring_HP < 1: -> Radiant_Cut}

{Low_Guard: -> Radiant_Cut}

The Tyrant points the finger that bears the ring to you and a purple lightning shoots in your direction!

{Village.Buy_Amulet: The lightning is intercepted by a blue translucent barrier. You feel your sapphire amulet heat up inside your pocket -> Low_Guard}

{~->Game_Over2 |-> Game_Over2 |-> Dodge}

= Dodge

You dodge the lightning knowing fully well that you wouldn't survive such arcane barrage.

->Menu_Tyrant_Combat

= Low_Guard

Taken by surprise by the amulet, the Tyrant seems at a loss. You take advantage of the chance to strike.

+[Strike the Tyrant] -> Strike_Tyrant
+{sword_HP > 0}[Try to disarm him from his Radiant Sword] -> Strike_Sword
+{ring_HP > 0}[Try to wound the hand that bears the Ring] -> Strike_Ring

= Strike_Tyrant

You spin your {Skeleton.Skeleton_Victory: shining} sword against the Tyrant {Fairy.Flaming_Sword2:leaving a trail of blue flames}. {Gauntlet_Success: He seems too slow to block your strike.}

~tyrant_HP -= dano

{tyrant_HP < 1: ->Hero_Victory}

And yet, he stands...

-> Menu_Tyrant_Combat

= Strike_Sword

You spin your {Skeleton.Skeleton_Victory: shining} sword against the Tyrant's sword {Fairy.Flaming_Sword2:leaving a trail of blue flames}. {Gauntlet_Success: He seems too slow to block your strike.}

~sword_HP -= dano

{sword_HP < 1: The weapon is knocked from the Tyrant's hand!}

-> Menu_Tyrant_Combat

= Strike_Ring

You spin your {Skeleton.Skeleton_Victory: shining} sword against the Tyrant's hand {Fairy.Flaming_Sword2:leaving a trail of blue flames}. {Gauntlet_Success: He seems too slow to block your strike.}

~ring_HP -= dano

{ring_HP < 1: The Tyrant's hand is chopped off, causing an agonizing scream!}

-> Menu_Tyrant_Combat

= Tyrants_Claws

Disarmed of his sword, the Tyrant strikes you with the sharp claws that grow from his gauntlets.

~vidas--

{vidas == 1: You don't know how you resisted this strike, but you know you won't resist the next one.}

{vidas < 1:
Você sente a ferida arder conforme tomba no chão. O Tirano flutua para perto de você e murmura com sua voz grave "Mais um herói tolo, mais uma alma para saciar minha sede!" ->Game_Over2
-else:
{   Gauntlet_Success:
        You feel the gauntlet vibrate with energy, making you faster. Fast enough that you can strike the Tyrant before he can defend himself.
        -> Hero_Strikes
    -else:
        "Bow to me!" the Tyrant's voice make the halls shake as if hit by lightning.
        -> Menu_Tyrant_Combat
    }
}

= Hero_Victory

The Tyrant falls.

You did it. Now, nobody will ever be sent as a sacrifice to this island again and the realm can finally know peace.

Thanks for playing :)

-> END

= Castle_Flee

As you step back, a strong sudden wind send shivers down your spine. It seems to come out of the castle.

You run away, but the wind changes direction and begins to pull you inside.

~vidas--

{vidas < 1:
You try to run, but the wind is stronger. With your heart racing, you feel that you can't breathe. It doesn't take longe for your vision to blur and your body to fall, heavy... -> Game_Over2
- else:
You resist the winds and escape from the damned castle. {vidas == 1: However, your heart races and you feel on edge. Your body can't withstand more harm.} -> Next_Step
}

=== Castelo ===

Mesmo enquanto segura o pomo de sua espada, você treme ao pensar em todos os heróis que nunca voltaram dessa jornada...

A trilha até o castelo não é difícil, a pior parte é todo o tempo que você acaba tendo para pensar.

+[Seguir em frente] -> Castelo_Porta
+[Recuar] -> Proximo_Passo

= Castelo_Porta

Você chega às portas do castelo, elas estão entreabertas. O vão é apenas o suficiente para que você enxergue o tapete vermelho, o piso de pedras e um pedaço do trono imponente do outro lado do cômodo. Estandartes vermelhos cobrem as paredes, mas mal se balançam com o pouco vento que faz lá dentro.

+[Adentrar] -> Castelo_Entrada
+[Escapar] -> Fuga_Castelo

= Castelo_Entrada

Você se esgueira pelo vão das portas e se prepara para confrontar o Tirano, mas não o encontra por canto algum desse salão.

Adentrando mais fundo no castelo, você descobre que está em um verdadeiro labirinto.

->Castelo_Labirinto

= Castelo_Labirinto

Você caminha pelos corredores escuros do castelo...

{~-> Fonte_Envenenada |-> Fonte_Curativa}

= Fonte_Envenenada

No final de um corredor, você encontra uma fonte de águas cristalinas. Uma estátua de uma fada guardiã adorna a estrutura.

+[Beber das águas] -> Beber_Veneno
+[Seguir Jornada] -> Castelo_Labirinto2

= Beber_Veneno

O gosto é delicioso, a melhor água que você já provou.

tão boa que você precisa beber mais um pouco...

+[Mais um golinho não faz mal...] -> Beber_Veneno2
+{Vilarejo.Comprar_Amuleto}[Resistir e seguir viagem] -> Castelo_Labirinto2

= Beber_Veneno2

Você começa a se sentir cheio, mas não consegue parar de beber, o gosto é tão bom...

-> Game_Over

=Fonte_Curativa

No final de um corredor, você encontra uma fonte de águas cristalinas. Uma estátua da sua fada guardiã adorna a estrutura.

+[Beber das águas] -> Beber_Cura
+[Seguir Jornada] -> Castelo_Labirinto2

= Beber_Cura

O Gosto é horrível...

~vidas++

+[Beber mais um gole?] -> Beber_Veneno
+[Seguir jornada] -> Castelo_Labirinto

= Castelo_Labirinto2

Você sobe por escadas intermináveis...

{~-> Manopla_Relampago |->Manopla_Relampago |->Manopla_Relampago |->Manopla_Relampago |-> Manopla_Relampago2}

=Manopla_Relampago

No centro de um  salão interno do castelo você vê uma manopla afixada a um pilar metálico. Diferente de qualquer outra, esta é feita de um metal que reflete a luz em um tom azulado. Basta observar a peça por alguns instantes para ver um arco de energia atravessá-la. Ao redor do pilar, o chão é coberto por uma espessa camada de cinzas.

Você se recorda de histórias sobre a Manopla do Rei: "Aquele que conseguir vestir a Manopla e se afastar do pilar será nosso novo rei e derrotará o Tirano".

Dizem as más línguas que a história foi criada pelo próprio Tirano, por que motivo, sabe-se lá...

+[Empunhar a manopla] -> Manopla_Fracasso
+[Seguir Jornada] -> Castelo_Labirinto3

=Manopla_Relampago2

No centro de um  salão interno do castelo você vê uma manopla afixada a um pilar metálico. Diferente de qualquer outra, esta é feita de um metal que reflete a luz em um tom azulado.  Ao redor do pilar, o chão é coberto por uma espessa camada de cinzas.

Você se recorda de histórias sobre a Manopla do Rei: "Aquele que conseguir vestir a Manopla e se afastar do pilar será nosso novo rei e derrotará o Tirano".

Dizem as más línguas que a história foi criada pelo próprio Tirano, por que motivo, sabe-se lá...

+[Empunhar a manopla] -> Manopla_Sucesso
+[Seguir Jornada] -> Castelo_Labirinto3

= Manopla_Fracasso

{Tesouro_Secreto.Choque: ->Manopla_Sucesso}
{Tesouro_Secreto.Circulo_Cortado: -> Manopla_Sucesso}

Você empunha a manopla na esperança de ser o herói que livrará o mundo do Tirano...

Com uma descarga de energia, você sente sua mão queimar. A dor logo se espalha pelo corpo inteiro.

Você tenta soltar a manopla, mas não consegue abrir a mão de forma alguma.

Em poucos instantes, você se torna mais uma pilha de cinzas cobrindo o chão do salão...

-> Game_Over

= Manopla_Sucesso

Você empunha a manopla na esperança de ser o herói que livrará o mundo do Tirano...

E ela se desprende do pilar com facilidade.

Conforme você movimenta sua mão, arcos de energia percorrem a manopla, que espalha luz ao seu redor.

O Tirano que aguarde...

~dano += 2

*[Seguir Jornada]->Castelo_Labirinto3

= Castelo_Labirinto3

VAR tirano_vida = 7

VAR anel_vida = 2

VAR espada_vida = 2

Você sente a presença do Tirano...

{Vilarejo.Comprar_Bussola:
    -> Enfrentar_Tirano
-else:
    -> Emboscada_Tirano    
}

= Emboscada_Tirano

Antes que você possa reagir, uma rajada de vento quase o derruba!

tentando se recompor, você vislumbra o vulto de um homem alto e forte, vestindo uma armadura completa pintada de vermelho, mas marcada em inúmeros pontos por cortes e estocadas. Em uma mão ele carrega uma espada radiante, enquanto na outra veste um anel tão carregado de magia que faz o ar tremer a sua volta. Trazido pelo vento, ele flutua em sua direção pronto para golpear. Seus olhos dentro do elmo, queimam com o ódio do Tirano.

-> Tirano_Ataca

=Enfrentar_Tirano

A Bússola impede que você seja surpreendido.

Você vislumbra o vulto de um homem alto e forte, vestindo uma armadura completa pintada de vermelho, mas marcada em inúmeros pontos por cortes e estocadas. Em uma mão ele carrega uma espada radiante, enquanto na outra segura uma bola de fogo. Trazido pelo vento, ele flutua em sua direção pronto para golpear. Seus olhos dentro do elmo, queimam com o ódio do Tirano.

-> Heroi_Ataca

= Menu_Combate_Tirano

+[Nada a fazer se não enfrentar!] ->Combate_Tirano

= Combate_Tirano

Os dois combatentes testam as defesas um do outro, em busca de uma abertura...

{~-> Heroi_Ataca | -> Tirano_Ataca}

= Heroi_Ataca

Você toma a iniciativa, onde irá mirar seu golpe?

+[Golpear o Tirano] -> Golpear_Tirano
+{espada_vida > 0}[Tentar desarmá-lo da Espada Radiante] -> Golpear_Espada
+{anel_vida > 0}[Ferir a mão do anel] -> Golpear_Anel

= Tirano_Ataca

{~-> Corte_Radiante|-> Dedo_da_Morte}

= Corte_Radiante

{espada_vida < 1: -> Garras_Tiranas}

O Tirano desfere um corte com sua lâmina dourada, te acertando em cheio.

~vidas -= 2

{vidas == 1: Você não sabe como resistiu a esse golpe, mas tem certeza que não resistirá a mais nada.}

{vidas == 2: Você sente a ferida profunda causada pelo corte e sabe que se for atingido novamente por essa espada, estará morto.}

{vidas < 1:
Você sente a ferida queimar conforme tomba no chão. O Tirano flutua para perto de você e murmura com sua voz grave "Mais um herói tolo, mais uma alma para saciar minha sede!" ->Game_Over
-else:
{   Manopla_Sucesso:
        Você sente a manopla vibrar com energia, tornando-o mais rápido. rápido o suficiente para golpear antes que o Tirano seja capaz de se defender.
        -> Heroi_Ataca
    -else:
        "Curve-se a mim!" a voz do Tirano faz o salão tremer como se atingido por um trovão.
        -> Menu_Combate_Tirano
    }
}

= Dedo_da_Morte

{anel_vida < 1: -> Corte_Radiante}

{Guarda_Baixa: ->Corte_Radiante}

O Tirano aponta para você com o dedo que veste o anel e um raio púrpura é disparado em sua direção!

{Vilarejo.Comprar_Amuleto: O raio é interceptado por uma barreira azul translúcida. Você sente o amuleto de safira esquentar em seu bolso -> Guarda_Baixa}

{~->Game_Over |-> Game_Over |-> Esquiva}

= Esquiva

Você desvia do raio ciente de provavelmente não sobreviveria a tamanha descarga arcana.

->Menu_Combate_Tirano

= Guarda_Baixa

Pego de surpresa pelo amuleto, o Tirano é surpreendido e você logo aproveita a chance para atacar.

+[Golpear o Tirano] -> Golpear_Tirano
+{espada_vida > 0}[Tentar desarmá-lo da Espada Radiante] -> Golpear_Espada
+{anel_vida > 0}[Ferir a mão do anel] -> Golpear_Anel

= Golpear_Tirano

Você desfere um golpe contra o Tirano. {Fada.Espada_Flamejante2: Uma rastro flamejante se forma pelo caminho da lamina} {Esqueleto.Vitoria_Esqueleto: prateada}. {Manopla_Sucesso: Ele parece ter dificuldade em acompanhar seus movimentos}.

~tirano_vida -= dano

{tirano_vida < 1: ->Vitoria_Heroi}

Ainda assim ele resiste...

-> Menu_Combate_Tirano

= Golpear_Espada

Você desfere um golpe visando arrancar a Espada Radiante da mão do Tirano. {Fada.Espada_Flamejante2: Uma rastro flamejante se forma pelo caminho da lamina} {Esqueleto.Vitoria_Esqueleto: prateada}. {Manopla_Sucesso: Ele parece ter dificuldade em acompanhar seus movimentos}.

~espada_vida -= dano

{espada_vida < 1: A arma dourada é arrancada da mão do Tirano pelo seu ataque!}

->Menu_Combate_Tirano

=Golpear_Anel

Você desfere um golpe visando ferir a mão do Tirano que porta o anel mágico. {Fada.Espada_Flamejante2: Uma rastro flamejante se forma pelo caminho da lamina} {Esqueleto.Vitoria_Esqueleto: prateada}. {Manopla_Sucesso: Ele parece ter dificuldade em acompanhar seus movimentos}.

~anel_vida -= dano

{anel_vida < 1: A mão do tirano é decepada, causando um urro de dor lancinante!}

->Menu_Combate_Tirano

= Garras_Tiranas

Desarmado de sua espada, o Tirano golpeia com as garras afiadas que crescem da ponta de sua manopla.

~vidas--

{vidas == 1: Você não sabe como resistiu a esse golpe, mas tem certeza que não resistirá a mais nada.}

{vidas < 1:
Você sente a ferida arder conforme tomba no chão. O Tirano flutua para perto de você e murmura com sua voz grave "Mais um herói tolo, mais uma alma para saciar minha sede!" ->Game_Over
-else:
{   Manopla_Sucesso:
        Você sente a manopla vibrar com energia, tornando-o mais rápido. rápido o suficiente para golpear antes que o Tirano seja capaz de se defender.
        -> Heroi_Ataca
    -else:
        "Curve-se a mim!" a voz do Tirano faz o salão tremer como se atingido por um trovão.
        -> Menu_Combate_Tirano
    }
}

= Vitoria_Heroi

O Tirano tomba.

Você conseguiu, agora ninguém mais vai precisar ser enviado a essa ilha como sacrifício e o reino, pode conhecer a paz novamente.

Obrigado por jogar :)

-> END

= Fuga_Castelo

Conforme você recua, uma ventania repentina te causa calafrios. Ela parece vir de dentro do castelo.

Você corre para longe, mas o vento muda de sentido e começa a te puxar para dentro.

~vidas--

{vidas < 1:
Você tenta correr, mas não consegue vencer a força do vento. Com o coração parecendo que vai sair pela boca, você começa a sentir dificuldade de respirar. Não demora muito até que sua visão turve e você sinta seu corpo cair, pesado... -> Game_Over
- else:
Você resiste à força do vento e escapa do castelo maldito. {vidas == 1: Ainda assim, seu coração parece querer sair pela boca, você sente estar no limite do que seu corpo aguenta.} ->Proximo_Passo
}

=== Wilds ===

You delve into the wilds with caution...

{~-> Skeleton |->  Hidden_Treasure |-> Trap |-> Fairy }

=== Ermos ===

Você adentra pelos ermos cautelosamente...

{~-> Esqueleto |->  Tesouro_Escondido |-> Armadilha |-> Fada }

=== Skeleton ===

{Cleansed: -> Hidden_Treasure}

VAR skeleton_HP = 2

Laying with its back to a tree and covered by grass and vines, a skeleton rests, the bones from its hand still cling fiercely to its shining sword.

+[Try to pick up the sword] -> Ambush_Skeleton
+[Honor the fallen] -> Honor_Skeleton

=Ambush_Skeleton

You try to reach the sword, but the bones cling and a fire ignites inside the skeletons empty eye sockets.

The vines can scarcely hold back the undeads lunge while its shining sword arcs towards you!

-> Menu_Skeleton_Combat

= Menu_Skeleton_Combat

+[Fight!] -> Skeleton_Combat
+[Flee] You dodge the skeleton's strikes and escape -> Next_Step

= Skeleton_Combat

{~->Strike_Skeleton|->Strike_Skeleton|->Skeleton_Strikes}

= Strike_Skeleton

You spin your sword, {Fairy.Flaming_Sword2: leaving behind a trail of blue flames,} making the skeleton's bones rattle and shake!

~skeleton_HP -= dano

{skeleton_HP < 1: -> Skeleton_Victory}
{skeleton_HP > 0: -> Menu_Skeleton_Combat}

= Skeleton_Victory

Your strike shatters the skull of the undead. bone splinters shatter around as the skeleton's body explodes.

The shining sword barely makes a sound when it falls over the grass.

"May it do better in your hands than it did in mine..." you hear a voice lost in the winds, without origin, barely a whisper.

~dano++

-> Cleansed

= Cleansed

As the wind settles, you feel as if some weight was lifted from the surroundings.

-> Next_Step

= Skeleton_Strikes

The Skeleton spins its shining sword against you with incredible speed!

~vidas--

{vidas == 1: You feel the taste of blood and your senses begin to dull, the next strike can be fatal...}

{vidas < 1: -> Game_Over2}

-> Menu_Skeleton_Combat

= Honor_Skeleton

You pour some wine from your waterskin in front of the skeleton and wait in silence for a while...

The bones turn to dust and the sword rusts within seconds.

"Thank you..." you hear a whisper brought by the wind.

~vidas++

-> Cleansed

=== Esqueleto ===

{Espirito_Liberto: ->Tesouro_Escondido}

VAR esqueleto_vida = 2

Reclinado em uma árvore antiga e coberto por vegetação, um esqueleto repousa, os ossos de sua mão ainda parecem segurar com força a empunhadura de sua brilhante espada prateada.

+[Tentar pegar a espada] -> Emboscada_Esqueleto
+[Honrar o herói caído] -> Honrar_Esqueleto

= Emboscada_Esqueleto

Você tenta alcançar a espada do defunto, mas os ossos rangem e uma chama acende onde antes eram os olhos da criatura.

As vinhas mal conseguem conter o avanço do morto-vivo enquanto ele desfere um corte contra você!

-> Menu_Combate_Esqueleto

= Menu_Combate_Esqueleto

+[Enfrentar] -> Combate_Esqueleto
+[Fugir] Você evita os golpes do esqueleto e escapa do combate -> Proximo_Passo

=Combate_Esqueleto
{~->Golpear_Esqueleto|->Golpear_Esqueleto|->Esqueleto_Ataca}

= Golpear_Esqueleto

Você gira sua espada{Fada.Espada_Flamejante2:, fazendo uma trilha de fogo azul}. Ela acerta o esqueleto em cheio!

~esqueleto_vida -= dano

{esqueleto_vida < 1: ->Vitoria_Esqueleto}

{esqueleto_vida > 0: ->Menu_Combate_Esqueleto}

= Vitoria_Esqueleto

Seu golpe parte o crânio do esqueleto ao meio. Com uma explosão, os ossos disparam em todas as direções, deixando de ser uma entidade coesa.

A espada brilhante mal faz barulho ao tombar sobre a grama.

"Que ela seja mais útil para você do que foi para mim..." Você escuta uma voz perdida no vento, sem origem, quase que um sussurro.

~dano++

-> Espirito_Liberto

= Espirito_Liberto

Conforme o vento acalma, você sente uma leveza no ambiente ao seu redor.

-> Proximo_Passo

= Esqueleto_Ataca

O Esqueleto gira sua espada brilhante contra você rápido demais!

~vidas--

{vidas == 1: Você sente o gosto de sangue e sua visão começa a turvar, o próximo golpe sofrido pode ser fatal...}

{vidas < 1: -> Game_Over}

-> Menu_Combate_Esqueleto

= Honrar_Esqueleto

Você derrama um pouco de vinho de seu cantil diante do esqueleto e fica em silêncio por alguns instantes...

Os ossos se desfazem em poeira e a espada enferruja aceleradamente.

"Obrigado..." Você escuta um sussurro trazido pelo vento.

~vidas++

-> Espirito_Liberto

=== Hidden_Treasure ===

{Opened_Chest: -> Trap}

Hidden behind a bush, you find a small chest.

*[Open the chest] -> Opened_Chest

= Opened_Chest

Inside the chest you find fine clothes, travel rations and 60 gold coins.

Back in the civilization, these 60 coins would be a fortune...

~moedas += 60

-> Next_Step

=== Tesouro_Escondido ===

{Bau_Aberto: ->Armadilha}

Escondido sob um arbusto, você encontra um pequeno baú.

*[Abrir o baú]->Bau_Aberto

= Bau_Aberto

Dentro dele há uma muda de roupas elegantes, provisões de viagem e 60 moedas de ouro.

Na civilização, essas 60 moedas seriam uma fortuna...

~moedas += 60

->Proximo_Passo

=== Trap ===

{Trap_Disarmed: -> Fairy}

A loud noise is followed by a sharp pain.

The mouth of a bear trap bites your leg, causing a deep wound.

*[Try to break free] -> Trap_Disarmed

= Trap_Disarmed

~vidas--

{vidas < 1: You try to break free, but end up widening the gash in your leg. As the blood flows, you feel your consciousness slipping ->Game_Over2}

{vidas > 0: You break free from the trap and treat the wound.{vidas == 1: The process is painful, you don't know if you would be able to do it again.} -> Next_Step}

=== Armadilha ===

{Armadilha_Liberto: ->Fada}

Um ruído alto e metálico é seguido por uma dor lancinante.

A Boca afiada de uma armadilha de urso se fechou em sua perna, causando uma ferida profunda.

*[Tentar Se libertar]-> Armadilha_Liberto

= Armadilha_Liberto

~vidas--

{vidas < 1: Você tenta se libertar, mas acaba agravando o ferimento. Conforme o sangue derrama, você sente sua visão turvando ->Game_Over}

{vidas > 0: Você se liberta da armadilha e cuida da ferida.{vidas == 1: É um processo doloroso, você não sabe se conseguiria fazer isso novamente caso sofresse outro ferimento.} -> Proximo_Passo}

=== Fairy ===

{Fey_Gratitude2: {Skeleton.Cleansed: You've mapped all the wilds, there's no more secrets to be discovered here -> Next_Step} ->Skeleton}

{Fey_Wrath: "Maybe I was a little too harsh on you before... Ask for a wish! it's my way of making up. -> Fey_Gratitude2}

You hear laughter around you and the shifting of leaves.

{
    - The_Arrival.Drink_Flask:"Did you like my gift?"
    - else: "You despise my gift and have the audacity to walk through my wilds like this? WHAT A FOOL!!!"
    -> Fey_Wrath
}

*{The_Arrival.Drink_Flask}["Thanks for the gift"] -> Fey_Gratitude

= Fey_Gratitude

As you thank the voice for the gift, the creature reveals itself:

Moth wings, fancy clothes and a wide grin.

This is your first time seeing a fairy.

"I'm glad you liked it!" She seems as happy as can be "And on top of that you were kind enough to pay me a visit, I'll give you another gift, what would help your quest the most?"

-> Fey_Gratitude2

= Fey_Gratitude2

*"An enchantment for my sword" -> Flaming_Sword
*"Protection against wounds" -> Second_Flask
*"Wealth beyond reason" -> Wealth

= Fey_Wrath

You feel something turning inside your stomach, the innocent laughter turn into cruel cackling.

You feel as if you were on the bottom of the ocean, under such pressure that your ears start to bleed.

~vidas--

{vidas < 1: -> Game_Over2}

{vidas > 0: As fast as it started, the feeling fades, but the memory of that sudden pain still haunts you. {vidas == 1: You fear that you would not resist another pain like that.} -> Next_Step}

= Flaming_Sword

The fairy pulls from a pocket a ruby amulet.

"Tie this jewel to your wrist, and any weapon you wield will be enchanted with the fire of the fey!"

*[Tie it to your wrist] -> Flaming_Sword2

= Flaming_Sword2

As you tie the jewel to your wrist and unsheathe your sword, blue flames dance across its edge flickering as a torch.

~dano++

"I hope that your journey yields success, my hero. Your people isn't the only one to suffer at the hands of the Tyrant." She begins to fly away "Farewell..."

-> Next_Step

= Second_Flask

She smiles to you while making a flask appear out of nowhere.

It resembles the one you found at the tower.

"Drink it, It will taste better this time."

*[Drink it again] -> Second_Flask2

= Second_Flask2

It tastes horribly...

~vidas++

"I hope you survive, it's wonderful to laugh at your expense..." She says smiling as she flies away.

-> Next_Step

= Wealth

"How greedy!" Says the fairy with bright eyes opened wide "But who am I to judge? I love shiny things too."

She extends her hands and shake her fingers, making coins rain out of nowhere.

~moedas += 50

The sum ammounts to 50 gold coins. This is more than what you saw through all your life before arriving at this island.

"If you win against the Tyrant, you better bring me something shiny and pretty from the castle. I'll be waiting!" Says the fairy as she flies away.

-> Next_Step

=== Fada ===

{Gratidao_Feerica2: {Esqueleto.Espirito_Liberto: Você mapeou todos os cantos dos ermos, não há mais segredos a serem descobertos aqui ->Proximo_Passo} ->Esqueleto}

{Ira_Feerica: "Talvez eu tenha sido um pouco ríspida contigo antes. Peça um desejo! É minha forma de me desculpar. ->Gratidao_Feerica2}

Você ouve risadinhas ao seu redor junto com o farfalhar de folhas.

{
    -A_Chegada.Beber_Frasco:"Gostou do meu presente?"
    -else: "Você despreza meu presente e tem coragem de caminhar por meus ermos dessa forma? INSOLENTE!!!"
    ->Ira_Feerica
}

*{A_Chegada.Beber_Frasco}[Agradecer pelo presente]->Gratidao_Feerica

= Gratidao_Feerica

Conforme você agradece pelo presente, a criatura se revela:

Asas de mariposa, roupas elegantes e um grande sorriso.

É a primeira vez que você vê uma fada.

"Que bom que gostou!" Ela parece toda animada "Já que você veio me fazer uma visita, vou te presentear novamente, o que mais te ajudaria em sua missão?"

-> Gratidao_Feerica2

= Gratidao_Feerica2

*"Um encanto para minha espada." ->Espada_Flamejante
*"Proteção contra ferimentos." ->Segundo_Frasco
*"Fortuna." ->Fortuna

= Ira_Feerica

Seu estômago começa a embrulhar, as risadinhas inocentes de agora pouco se tornam gargalhadas sádicas.

Você sente como se estivesse no fundo do oceano, sob uma pressão que faz seus ouvidos estalarem até sangrar.

~vidas--

{vidas < 1: ->Game_Over}

{vidas > 0: Tão rápido quanto começou, a sensação passa, mas a lembrança daquela dor repentina ainda o assombra. {vidas == 1: Você teme que não resistiria a outra experiência como essa.} -> Proximo_Passo}

= Espada_Flamejante

A fada saca um pingente feito de rubi.

"amarre essa joia ao seu pulso, e qualquer arma que você empunhar será encantada com o fogo das fadas!"

*[Vestir a joia]->Espada_Flamejante2

= Espada_Flamejante2

Conforme você veste a joia e saca sua espada, uma chama azulada dança pela extensão da lâmina, iluminando o entorno.

~dano++

"Espero que sua jornada tenha sucesso, meu herói. Seu povo não é o único a sofrer pelas mãos do Tirano."

A fada se despede e voa para longe.

->Proximo_Passo

= Segundo_Frasco

Ela sorri para você enquanto faz surgir um frasco semelhante ao que você encontrou na torre.

"Beba, o gosto fica melhor na segunda vez."

*[Beber Novamente]->Segundo_Frasco2

= Segundo_Frasco2

O gosto ainda é horrível...

~vidas++

A fada voa em círculos gargalhando enquanto aprecia sua expressão de desgosto.

"Espero que você sobreviva, gostaria de rir mais às suas custas..." diz ela ainda sorrindo enquanto voa para longe.

-> Proximo_Passo

= Fortuna

"Que ganancioso!" Exclama a fada com os olhos brilhantes arregalados "Mas quem sou eu para julgar? também adoro coisinhas brilhantes."

Ela estende as mãos e sacode os dedos fazendo surgir um punhado de moedas de ouro.

~moedas += 50

50 moedas de ouro ao todo. Isso é mais dinheiro que você viu durante toda a sua vida.

"Se você vencer o Tirano, trate de arranjar algo brilhante e bonito do castelo dele para me dar de presente. Estarei aguardando." Diz ela enquanto voa para longe.

->Proximo_Passo

=== Proximo_Passo ===

E agora, qual é o próximo passo da sua jornada?

+[Explorar os Ermos] -> Ermos
+[Seguir para o vilarejo] -> Vilarejo
+[Seguir para o castelo] -> Castelo
+[Retornar à torre] -> Cerne
+{Vilarejo.Comprar_Mapa}[Seguir o caminho do mapa do tesouro] -> Tesouro_Secreto

=== Next_Step ===

And now, what is the next step of your journey?

+[Explore the wilds] -> Wilds
+[Go to the village] -> Village
+[Go to the castle] -> Castle
+[Return to the tower] -> Nexus
+{Village.Buy_Map}[Follow the path of the treasure map] -> Secret_Treasure

=== Secret_Treasure ===

You follow the directions of the map and notes from Carrion avoiding the traps.

Delving into a fissure hidden by large stones at the feet of the mountains, you walk for hours following the path until you arrive at a great chamber.

At the center of this chamber there is a metalic pillar, surrounded by circles of runes carved on the floor.

Around the circles, gold coins are spread following some kind of pattern, 20 in total.

The pillar reaches the ceiling of the chamber and seems to pierce it continuing up through the mountain, maybe even reaching the castle.

-> Menu_Secret_Treasure

= Menu_Secret_Treasure

+[Inspect the pillar] -> Electric_Pillar
+{not Take_Coins}[Inspect the coins] -> Electric_Coins
+[Leave this place] -> Next_Step

= Electric_Pillar

The pillar is made of some strange metal.

{not Shock && not Broken_Circle: Examining the pillar closely, it's possible to hear a buzzing sound that originates from it. All of this is a little too esoteric for you, maybe wrecking the pillar will help you against the Tyrant in some way?}

*{not Shock && not Broken_Circle}[Strike the pillar] -> Electric_Funeral
+[Step back] -> Menu_Secret_Treasure

= Electric_Coins

The 20 coins seems to be spread in strategic spots on the circles of runes. They give off a faint buzzing sound that seems to follow the circles to the pillar.

*{not Take_Coins}[Take coins] -> Shock
*[Sever the circles] -> Broken_Circle
+[Step back] -> Menu_Secret_Treasure

= Electric_Funeral

As fast as you strike the pillar with your sword, your muscles tense like never before and you feel electricity passing through your body until you are completely toasted. -> Game_Over2

= Shock

{Broken_Circle: -> Take_Coins}

You reach for one of the coins. Upon taking it out of the circle, you feel a sudden pain that starts at the tip of your fingers and spreads through your whole body.

~vidas--

{vidas < 1: The pain makes you fall. As your consciousness fades, your hand still grips the coin so tightly that it bleeds. -> Game_Over2}

{vidas == 1: Your heart races and for a moment you can't breath. You're at your limit}

As the pain fades, the circle of runes seems to dull and the buzzing sound stops.

You gather the remaining coins safely.

~moedas += 20

= Broken_Circle

You scratch a line of the circles with your sword until it is completely severed. the buzzing stops.

*[Take the coins] -> Take_Coins
*[Step back] -> Menu_Secret_Treasure

= Take_Coins

~moedas += 20

You gather the coins.

-> Menu_Secret_Treasure

=== Tesouro_Secreto ===

Você segue as indicações do mapa e das anotações do Carniça evitando todas as armadilhas.

Adentrando por uma fenda oculta por grandes pedras no pé da montanha, você segue por horas até chegar a uma grande câmara.

No centro dessa câmara há um pilar metálico, cercado por círculos de runas entalhados no chão.

Em pontos específicos dos círculos, encontram-se moedas de ouro, 20 ao todo.

O pilar entra para dentro do teto da câmara, e segundo o mapa, deve terminar em algum ponto do castelo.

->Menu_Tesouro_Secreto

= Menu_Tesouro_Secreto

+[Inspecionar o pilar] -> Pilar_Eletrico
+{not Pegar_Moedas}[Inspecionar as moedas] -> Moedas_Eletricas
+[Deixar esse lugar] -> Proximo_Passo

= Pilar_Eletrico

O Pilar é feito de algum metal estranho.

{not Choque && not Circulo_Cortado:Examinando o pilar mais de perto, é possível ouvir um zumbido que se origina dele. Tudo isso é exotérico demais para você, mas talvez danificar o pilar prejudique o Tirano de alguma forma?}

*{not Choque && not Circulo_Cortado}[Golpear o pilar] -> Funeral_Eletrico
+[Recuar] -> Menu_Tesouro_Secreto

= Moedas_Eletricas

As 20 moedas parecem estar em pontos estratégicos dos círculos de runas. Elas emitem um zumbido bem baixo que parece ser transmitido para o pilar.

*{not Pegar_Moedas}[Pegar as Moedas] -> Choque
*[Danificar as runas] -> Circulo_Cortado
+[Recuar]-> Menu_Tesouro_Secreto

= Funeral_Eletrico

Tão rápido quanto você golpeia o pilar com sua espada, seus músculos tensionam como nunca antes e você sente a eletricidade atravessar seu corpo até que ele seja completamente torrado. -> Game_Over

= Choque

{Circulo_Cortado: -> Pegar_Moedas}

Você pega uma das moedas. Ao retirá-la do círculo, você sente uma uma dor repentina que começa na ponta dos dedos e atravessa seu corpo inteiro.

~vidas--

{vidas < 1: Você não resiste ao choque e tomba com a mão segurando a moeda tão forte que chega a sangrar -> Game_Over}

{vidas == 1: Seu coração dispara e fica difícil de respirar, você está no limite}

Passado o susto, o círculo de runas parece ter se apagado e não há mais zumbido.

Você recolhe as moedas restantes e se prepara para deixar esse lugar o quanto antes.

~moedas += 20

= Circulo_Cortado

Você risca um trecho do círculo com sua espada até que ele esteja completamente partido. O zumbido cessa.

*[Pegar as Moedas] -> Pegar_Moedas
*[Recuar] -> Menu_Tesouro_Secreto

= Pegar_Moedas

~moedas += 20

Você recolhe as 20 moedas.

-> Menu_Tesouro_Secreto

=== Game_Over ===

Você morreu...

    -> END
    
=== Game_Over2 ===

You died...

    -> END