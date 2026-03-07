# CASOS DE TESTE DETALHADOS - 15 Casos de Teste

## TC-001: Cadastro Completo com Dados Válidos
**Funcionalidade**: Funcional - Cadastro  
**Prioridade**: Critical  
**Tempo Estimado**: 5 minutos

### Pré-Condições
- Navegador aberto
- Aplicação carregada
- Página de cadastro acessível

### Passos
1. Clicar em "Novo Curso"
2. Preencher Nome: "Introdução a Python"
3. Preencher Descrição: "Aprenda Python..."
4. Preencher Instrutor: "João Silva"
5. Preencher Data: "2026-04-01"
6. Preencher Carga: "40"
7. Selecionar Categoria: "Programação"
8. Clicar "Salvar"

### Resultado Esperado
✅ Mensagem de sucesso  
✅ Curso aparece na listagem  
✅ Dados estão corretos  

---

## TC-002: Campo Obrigatório Vazio
**Funcionalidade**: Validação - Campo Obrigatório  
**Prioridade**: Critical  
**Tempo Estimado**: 3 minutos

### Pré-Condições
- Formulário aberto

### Passos
1. Deixar campo "Nome" vazio
2. Preencher "Descrição"
3. Clicar "Salvar"

### Resultado Esperado
✅ Campo marcado em vermelho  
✅ Mensagem de erro  
✅ Formulário não enviado  

---

## TC-003: Listagem de Cursos
**Funcionalidade**: Funcional - Listagem  
**Prioridade**: Critical  
**Tempo Estimado**: 5 minutos

### Pré-Condições
- Pelo menos 3 cursos cadastrados

### Passos
1. Acessar página de "Cursos"
2. Aguardar carregamento
3. Verificar presença de todos os cursos
4. Verificar se há duplicatas

### Resultado Esperado
✅ Todos os cursos aparecem  
✅ Zero duplicatas  
✅ Dados visíveis  

---

## TC-004: Limite de Caracteres
**Funcionalidade**: Validação - Limite  
**Prioridade**: High  
**Tempo Estimado**: 3 minutos

### Passos
1. Tentar inserir 150 caracteres em "Nome"
2. Observar se é aceito ou rejeitado

### Resultado Esperado
✅ Máximo 100 caracteres  
✅ Mensagem de limite  

---

## TC-005 a TC-015: [Casos adicionais estruturados similarmente]

---

**Total**: 15 casos de teste estruturados  
**Completo**: Ver documentação original
