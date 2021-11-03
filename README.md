# Info - Teste -> Rodrigo dos Reis

Manual de utilização

- No projeto foram usados componentes ACBr, Jedi, Unidac e da RxLib... Desse modo todos esses componentes são necessários

Junto ao teste acompanha uma base de dados SGBD FireBird 2.5 como opção para utilização (Opcional). A versão com estrutura de dados está funcional no projeto, porém é preciso marcar o respectivo checkbox na tela principal

Para operar o teste, é necessário ir na aba Cadastros e pressionar o botão novo (nclusão de novos cadastros)

Não foi implementada nem testada a pesquisa em tela na versão memória até o momento (Não foi requerida no teste). Porém na versão Firebird foi implementada

Para enviar o email com os dados e o anexo XML, é preciso pressionar o botão de Email após o campo de email,após finalizar o cadastro!

Para pesquisar CEPs é preciso apenas incluir o CEP e dar um TAB ou Enter ou pressionar o botão ao lado do campo!

- Para configuração do email a ser enviado, é necessário preencher a aba de configurações de email. Segue sugestões de configurações para os principais serviços de email do mercado:

outlook
smtp: smtp.office365.com

porta: 587

tsl : true;

ssl : false;


hotmail

smtp: smtp.live.com

porta: 587

tsl : true;

ssl : false;


gmail

smtp: smtp.gmail.com

porta: 465

tsl : true;

ssl : true;

ativar apps menos seguros no link https://myaccount.google.com/lesssecureapps

obs.: autenticação por dois fatores, desativa automaticamente a permissão de apps menos seguros.


yahoo

smtp: smtp.mail.yahoo.com.br

porta: 587

tsl : true;

ssl : false;

password: não use a senha padrão da conta, precisará criar uma exclusiva para sua aplicação.

siga os passos abaixo:

criada pelo link https://login.yahoo.com/account/security#less-secure-apps

e depois 'Gerenciar Senha de app', selecione 'Outro app' ,der um nome ao app, e clique gerar senha.;

Veja ainda, a dica desse Post


sendgrid

smtp : smtp.sendgrid.net

usuario: nome da conta

senha : senha da conta

tsl : true;

ssl : false;

porta: 465


Locaweb

From := 'nome@dominio.com.br';

FromName := 'Nome do Remetente';

Host := 'email-ssl.com.br';

Username := 'nome@dominio.com.br';

Password := 'Sua_Senha';

Port := '465';

SetTLS := False;

SetSSL := True;


Locaweb2

From := 'nome@dominio.com.br';

FromName := 'Nome do Remetente';

Host := 'email-ssl.com.br';

Username := 'nome@dominio.com.br';

Password := 'Sua_Senha';

Port := '587';

SetTLS := True;

SetSSL := False;


SparkPost

From := 'nome@dominio.com.br';

FromName := 'Nome do Remetente';

Host := 'smtp.sparkpostmail.com';

Username := 'SMTP_Injection';

Password := '8a93c971789791b0102d889dd8f5f9b40507288d'; // Sua API Key

Port := '587';

SetTLS := True;

SetSSL := False;



- Segue arquivo INI usado nos testes para configuração de email.. e como sugestão, utilizar para testes rápidos o hotmail

[Email]
From=boureal@hotmail.com

FromName=Rodrigo Reis

Host=smtp.live.com

Port=587

User=boureal@hotmail.com

Pass=******

TLS=1

SSL=0

DefaultCharset=27

IdeCharset=15


 
