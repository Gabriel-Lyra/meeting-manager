Feature: postar recados em um mural
As a usu�rio
I want to ser capaz de criar recados e post�-los em um mural para cada reuni�o espec�fica
So que eu possa compartilhar anota��es ou mensagens com os outros integrantes da reuni�o de uma forma simples

Scenario: Criar uma postagem no mural
Given eu estou na p�gina do mural
And eu estou logado na minha conta do gerenciador de reuni�es
And eu posso ver as minhas postagens e as dos outros participantes da reuni�o
When eu clico em "criar nova postagem"
Then uma janela onde eu posso digitar aparece

Scenario: Excluir uma postagem do mural
Given eu estou na p�gina do mural
And eu estou logado na minha conta do gerenciador de reuni�es
And eu posso ver as minhas postagens e as dos outros participantes da reuni�o
When eu clico em qualquer uma das minhas postagens
Then um "X" aparece em um dos cantos, indicando a possibilidade de apagar a postagem
When eu clico no "X"
Then uma mensagem pedindo confirma��o se eu quero apagar a mensagem aparece
When eu clico que quero apagar
Then a mensagem � exclu�da do mural
And eu ainda posso ver o mural
When eu clico em postagens feitas por outras pessoas
Then esse "X" n�o aparece

Scenario: Mudar de mural
Given eu estou no mural da reuni�o sobre jogos
And eu estou logado na minha conta do gerenciador de reuni�es
And eu consigo ver as postagens no mural da reuni�o sobre jogos
When eu clico para voltar para a��rea de escolher o mural
Then a p�gina muda 
And eu posso ver uma lista com todos os murais dispon�veis, um para cada reuni�o que eu participo
When eu clico na reuni�o sobre smartphones
Then a p�gina muda para o mural da reuni�o sobre smartphones
And eu posso ver todas as postagens

Scenario: Submeter uma postagem em branco
Given eu estou no mural da reuni�o sobre jogos
And eu estou logado na minha conta do gerenciador de reuni�es
When eu clico em "criar nova postagem"
Then uma janela onde eu posso digitar aparece
And eu n�o escrevo nada
When eu clico para submeter a mensagem
Then nenhuma nova postagem aparece no mural
And eu ainda posso ver o mural e todas as suas postagens