Construa testes automatizados com a ferramenta Robot Framework, conforme as orientações abaixo:

Funcionalidade: Cadastro de Dog Walkers
    Sendo um visitante do site que curte cuidar de pets
    Posso fazer meu cadastro como Dog Walker
    Para que eu possa ter um nova fonte de renda com essas atividades


Modelagem de dados:
| Seletor                      | Campo em Português        | Habilitado | Obrigatório |
|---------------------------   |---------------------------|------------|-------------|
| input[name="name"]           | Nome Completo             | Sim        | Sim         |
| input[name="email"]          | E-mail                    | Sim        | Sim         |
| input[name="cpf"]            | CPF                       | Sim        | Sim         |
| input[name="cep"]            | CEP                       | Sim        | Sim         |
| input[name="addressStreet"]  | Rua                       | Não        | Sim         |
| input[name="addressNumber"]  | Número                    | Sim        | Sim         |
| input[name="addressDetails"] | Complemento               | Sim        | Não         |
| input[name="addressDistrict"]| Bairro                    | Não        | Sim         |
| input[name="addressCityUf"]  | Cidade/UF                 | Não        | Sim         |
| input[type="file"]           | Upload de Arquivo         | Sim        | Não         |

Outros elementos da página de cadastro:
    Para submeter o formulário de cadastro de dog walker, é importante clicar no botão "Cadastrar"
    O upload do documento será feito com o arquivo document.png

Cenários de aceite:

Contexto: 
    Dado que visito o site Walkdog
    E desejo me tornar um Dog Walker

Cenário 1: Cadastro do Dog Walker com sucesso

    Quando submeto o formulário de cadastro com os meus dados pessoais 
    Então devo ter uma mensagem de sucesso informando que meu cadastro foi para análise

Cenário 2: CPF incorreto

    Quando submeto o formulário informando um cpf incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenário 3: Email incorreto

    Quando submeto o formulário informando um email incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "Informe um email válido"

Cenário 4: Campos obrigatórios

    Quando submeto um formulário sem preencher nenhum dos campos 
    Então devo ver mensagens de alerta avisando quais campos precisam ser preenchidos
