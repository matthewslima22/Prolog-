/*fatos sobre os filmes*/
filme(annabelle).
filme(annabelle2).
filme(annabelle3).
filme(zumbilandia).
filme(zumbilandia2).
filme(cemiterio_maldito).
filme(homem_aranha).
filme(homem_aranha2).
filme(os_vingadores).
filme(thor).
filme(batman).
filme(coringa).
filme(a_origem).
filme(deadpool).
filme(deadpool2).
filme(interestelar).
filme(o_iluminado).
filme(doutor_sono).
filme(pompeia).
filme(alexandre).
filme(troia).
filme(300).
filme(o_rei_leao).
filme(fragmentado).
filme(corpo_fechado).
filme(vidro).
filme(american_pie).
filme(american_pie2).
filme(american_pie3).


/*fatos das empresas de filmes*/
distribuidora(netflix).
distribuidora(netflixvice).
distribuidora(fox).
distribuidora(paramount).
distribuidora(sony).
distribuidora(warner).
distribuidora(universal).
distribuidora(disney).
distribuidora(play_arte).



/*fatos que mostram as distribuidoras de cada filme da empresa */

presidente(netflix).
vice_presidente(netflixvice).
distribuidora_genero(fox,animacao).
distribuidora_genero(paramount,drama).
distribuidora_genero(disney,acao).
distribuidora_genero(universal,terror).
distribuidora_genero(play_arte,comedia).
distribuidora_genero(sony,historico).
distribuidora_genero(warner,aventura).



/*fatos dos generos*/

genero(acao).
genero(terror).
genero(aventura).
genero(drama).
genero(comedia).
genero(historico).
genero(animacao).





/*fatos sobre os tipos de cada filme*/

tipo(annabelle,terror).
tipo(annabelle2,terror).
tipo(annabelle3,terror).
tipo(zumbilandia,acao).
tipo(zumbilandia2,acao).
tipo(cemeterio_maldito,terror).
tipo(homem_aranha,acao).
tipo(homem_aranha2,acao).
tipo(os_vingadores,acao).
tipo(thor,acao).
tipo(batman,acao).
tipo(coringa,drama).
tipo(a_origem,drama).
tipo(deadpool,acao).
tipo(deadpool2,acao).
tipo(interestelar,drama).
tipo(o_iluminado,terror).
tipo(doutor_sono,terror).
tipo(pompeia,aventura).
tipo(alexandre,historico).
tipo(troia,historico).
tipo(300,historico).
tipo(o_rei_leao,animacao).
tipo(fragmentado,drama).
tipo(corpo_fechado,drama).
tipo(vidro,drama).
tipo(american_pie,comedia).
tipo(american_pie2,comedia).
tipo(american_pie3,comedia).


/*regras que servem para indicar o grau de rela��o entre os filmes da empresa*/

distribuidora(X, Y) :- distribuidora_genero(X, K),tipo(Y, K). /* indica que X � distribuidora de Y se ele for distribuidora de um genero K e Y for do tipo K */
distriubuidora(X, Y) :- vice_presidente(X),distribuidora_tipo(Y,_). /* indica que o vice presidente ser� distribuidora de todos os distribuidoras de genero */
superior(X, Y) :- distribuidoras(X, Y). /* essa regra � um caso base da rela��o de cargo superior,onde X � superior a Y se X for distribuidor de Y */
superior(X, Y) :- distrubuidora_genero(X,_), tipo(Y,_).
subordinado(X, Y) :- distribuidoras(Y, X). /*essa regra � um caso base de subordina��o,onde X � subordinado a Y se Y for distribuidor de X*/
subordinado(X, Y) :- distribudoras(K, X), superior(Y, K). /*indica que X � subordinado a Y se algu�m K que seja distribuidor de X, tamb�m seja subordinado a Y*/















