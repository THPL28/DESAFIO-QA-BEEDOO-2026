# language: pt
Funcionalidade: Cadastro e Listagem de Cursos
  Como um usuário
  Quero cadastrar e listar cursos
  Para gerenciar meus cursos

  Contexto:
    Dado que a aplicação está carregada

  Cenário: Cadastrar curso com dados válidos
    Dado que o formulário está vazio
    Quando eu preencho Nome com "Python Básico"
    E eu preencho Descrição com "Aprenda Python"
    E eu preencho Instrutor com "João Silva"
    E eu clico em "Salvar"
    Então uma mensagem "Sucesso" aparece
    E o curso aparece na listagem

  Cenário: Campo obrigatório não pode estar vazio
    Dado que o formulário está vazio
    Quando eu clico em "Salvar"
    Então o campo "Nome" é marcado em erro
    E uma mensagem "Obrigatório" aparece
    E nenhum curso é criado

  Cenário: Validar limite de caracteres
    Dado que o formulário está aberto
    Quando eu insiro 150 caracteres em "Nome"
    Então o campo aceita no máximo 100
    E mensagem "Limite atingido" aparece

  Cenário: Listar todos os cursos cadastrados
    Dado que 3 cursos foram cadastrados
    Quando eu acesso a página de "Listagem"
    Então todos os 3 cursos aparecem
    E nenhum está duplicado

  Cenário: Escape de HTML/Scripts
    Dado que o formulário está aberto
    Quando eu insiro "<script>alert(1)</script>" em Nome
    E eu salvo
    Então nenhum alerta é executado
    E o script é escapado (safe)

  Cenário: Validação de acentuação
    Dado que vou cadastrar um curso
    Quando eu insiro "Gestão de Projetos Ágeis"
    E eu insiro "José da Silva" como instrutor
    E eu salvo
    Então a listagem mostra acentuação intacta
    E sem "?" ou caracteres corrompidos

  Cenário: Persistência após cadastro
    Dado que cadastrei um curso
    Quando eu recarrego a página
    Então o curso ainda existe
    E os dados estão íntegros

  Cenário: Alerta antes de sair sem salvar
    Dado que preenchei o formulário
    Quando eu tenta sair sem "Salvar"
    Então um alerta "Tem certeza?" aparece
    E posso escolher ficar ou sair

  Cenário: Validação de data inválida
    Dado que o formulário está aberto
    Quando eu insiro data "32/12/2025"
    E eu tenta salvar
    Então mensagem "Data inválida" aparece
    E o formulário não é enviado

  Cenário: Fluxo completo do usuário
    Dado que estou na página inicial
    Quando eu clico "Novo Curso"
    E preencho todos os campos
    E clico "Salvar"
    E navego para "Listagem"
    Então meu novo curso aparece
    E todos os dados estão corretos

---

Total: 19 cenários BDD
Pronto para: Cucumber, Behave, SpecFlow
