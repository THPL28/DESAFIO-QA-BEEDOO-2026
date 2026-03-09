Feature: Cadastro de Cursos

  Scenario: Cadastro de curso com dados válidos
    Given que o usuário está na página de cadastro de cursos
    When o usuário preenche todos os campos obrigatórios com dados válidos
    And clica no botão "Cadastrar curso"
    Then o curso deve ser salvo com sucesso no sistema
    And o usuário deve receber uma mensagem de confirmação
    And o curso cadastrado deve aparecer na lista de cursos

  Scenario: Cadastro com imagem de capa
    Given que o usuário está na página de cadastro de cursos
    When o usuário preenche todos os campos obrigatórios
    And informa uma URL válida para a imagem de capa
    And clica no botão "Cadastrar curso"
    Then o curso deve ser salvo com sucesso no sistema
    And a imagem de capa deve ser exibida corretamente na listagem

Feature: Validação de Campos Obrigatórios

  Scenario: Cadastro com campos vazios
    Given que o usuário está na página de cadastro de cursos
    When o usuário não preenche nenhum campo obrigatório
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagens de erro indicando quais campos são obrigatórios
    And o curso não deve ser salvo no sistema

  Scenario: Cadastro com apenas alguns campos preenchidos
    Given que o usuário está na página de cadastro de cursos
    When o usuário preenche apenas alguns campos obrigatórios
    And deixa outros campos vazios
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagens de erro para os campos não preenchidos
    And o curso não deve ser salvo no sistema

Feature: Validação de Datas

  Scenario: Cadastro com datas inválidas (data de início posterior à data de fim)
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa uma data de início posterior à data de fim
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando que a data de início deve ser anterior à data de fim
    And o curso não deve ser salvo no sistema

  Scenario: Cadastro com datas muito antigas
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa datas muito antigas (por exemplo, ano anterior ao atual)
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando datas inválidas
    And o curso não deve ser salvo no sistema

  Scenario: Cadastro com datas muito futuras
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa datas muito futuras (por exemplo, mais de 5 anos à frente)
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando datas inválidas
    And o curso não deve ser salvo no sistema

Feature: Listagem de Cursos

  Scenario: Listagem de cursos cadastrados
    Given que existem cursos cadastrados no sistema
    When o usuário acessa a página de listagem de cursos
    Then todos os cursos cadastrados devem ser exibidos na lista
    And cada curso deve exibir todas as informações cadastradas (nome, descrição, instrutor, datas, número de vagas, tipo)
    And as imagens de capa devem ser exibidas corretamente
    And deve ser possível visualizar os detalhes de cada curso

  Scenario: Listagem vazia
    Given que não existem cursos cadastrados no sistema
    When o usuário acessa a página de listagem de cursos
    Then deve ser exibida uma mensagem indicando que não há cursos cadastrados
    And não deve ser exibida nenhuma lista de cursos

Feature: Exclusão de Cursos

  Scenario: Exclusão de curso
    Given que existem cursos cadastrados no sistema
    When o usuário acessa a página de listagem de cursos
    And clica no botão "Excluir curso" de um curso específico
    Then o curso deve ser removido da lista
    And o usuário deve receber uma mensagem de confirmação da exclusão
    And o curso excluído não deve mais aparecer na listagem

  Scenario: Confirmação de exclusão
    Given que existem cursos cadastrados no sistema
    When o usuário clica no botão "Excluir curso"
    And o sistema exibe uma mensagem de confirmação
    And o usuário confirma a exclusão
    Then o curso deve ser removido da lista
    And o usuário deve receber uma mensagem de confirmação da exclusão

  Scenario: Cancelamento de exclusão
    Given que existem cursos cadastrados no sistema
    When o usuário clica no botão "Excluir curso"
    And o sistema exibe uma mensagem de confirmação
    And o usuário cancela a exclusão
    Then o curso não deve ser removido da lista
    And o usuário deve retornar à listagem sem alterações

Feature: Validação de Número de Vagas

  Scenario: Cadastro com número de vagas negativo
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa um valor negativo no campo "Número de vagas"
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando que o número de vagas deve ser positivo
    And o curso não deve ser salvo no sistema

  Scenario: Cadastro com número de vagas igual a zero
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa zero no campo "Número de vagas"
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando que o número de vagas deve ser maior que zero
    And o curso não deve ser salvo no sistema

  Scenario: Cadastro com texto no campo número de vagas
    Given que o usuário está na página de cadastro de cursos
    When o usuário informa texto no campo "Número de vagas"
    And clica no botão "Cadastrar curso"
    Then o sistema deve impedir o cadastro
    And deve exibir mensagem de erro indicando que o campo deve conter apenas números
    And o curso não deve ser salvo no sistema
