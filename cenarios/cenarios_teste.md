# CENÁRIOS DE TESTE - 21 Cenários Estruturados

## CTOS-001: Cadastro de Curso com Dados Válidos Completos
- **Tipo**: Positivo
- **Prioridade**: Critical
- **Descrição**: Validar cadastro com todos os campos preenchidos corretamente

## CTOS-002: Cadastro com Apenas Campos Obrigatórios  
- **Tipo**: Positivo
- **Prioridade**: High
- **Descrição**: Validar que cursos podem ser cadastrados com apenas campos obrigatórios

## CTOS-003: Cadastro e Posteriormente Visualização na Listagem
- **Tipo**: Positivo
- **Prioridade**: Critical
- **Descrição**: End-to-end: Cadastrar e validar aparição na listagem

## CTOS-004: Cadastro com Acentuação
- **Tipo**: Positivo
- **Prioridade**: High
- **Descrição**: Validar preservação de acentuação portuguesa/brasileira

## CTOS-005: Cadastro Múltiplo de Cursos Diferentes
- **Tipo**: Positivo
- **Prioridade**: High
- **Descrição**: Validar que múltiplos cursos são armazenados e listados corretamente

## CTOS-006: Listagem Vazia
- **Tipo**: Positivo/Negativo
- **Prioridade**: Medium
- **Descrição**: Validar mensagem quando nenhum curso foi cadastrado

## CTOS-007: Listagem Carrega Todos os Registros
- **Tipo**: Positivo
- **Prioridade**: Critical
- **Descrição**: Validar que todos os cursos cadastrados aparecem

## CTOS-008: Ordem de Exibição
- **Tipo**: Positivo
- **Prioridade**: Medium
- **Descrição**: Validar que ordem é consistente

## CTOS-009: Ver Detalhes do Curso
- **Tipo**: Positivo
- **Prioridade**: High
- **Descrição**: Validar visualização de detalhes completos

## CTOS-010: Responsividade
- **Tipo**: Positivo
- **Prioridade**: High
- **Descrição**: Validar layout em mobile, tablet e desktop

## CTOS-011: Campo Obrigatório Vazio
- **Tipo**: Validação/Negativo
- **Prioridade**: Critical
- **Descrição**: Validar rejeição de campo obrigatório vazio

## CTOS-012: Limite de Caracteres
- **Tipo**: Validação
- **Prioridade**: High
- **Descrição**: Validar respeito ao limite máximo de caracteres

## CTOS-013: Quebras de Linha
- **Tipo**: Validação/Positivo
- **Prioridade**: Medium
- **Descrição**: Validar que textarea aceita múltiplas linhas

## CTOS-014: Validação de Tipos (Números)
- **Tipo**: Validação
- **Prioridade**: High
- **Descrição**: Validar que campos numéricos rejeitam texto

## CTOS-015: Validação de Data
- **Tipo**: Validação
- **Prioridade**: High
- **Descrição**: Validar formato e validade de data

## CTOS-016: Alerta Dados Não Salvos
- **Tipo**: Negativo/Comportamento
- **Prioridade**: High
- **Descrição**: Validar alerta ao sair sem salvar

## CTOS-017: Duplicatas Não Permitidas
- **Tipo**: Negativo
- **Prioridade**: High
- **Descrição**: Validar que não é possível cadastrar cursos com mesmo nome

## CTOS-018: Formulário Vazio
- **Tipo**: Negativo
- **Prioridade**: High
- **Descrição**: Validar comportamento com formulário vazio

## CTOS-019: Escape HTML/Scripts
- **Tipo**: Negativo/Segurança
- **Prioridade**: High
- **Descrição**: Validar que HTML/Scripts não são executados

## CTOS-020: Submissão Múltipla
- **Tipo**: Negativo/Comportamento
- **Prioridade**: Medium
- **Descrição**: Validar que double-click não duplica

## CTOS-021: Fluxo Completo: Cadastro → Sucesso → Listagem
- **Tipo**: Positivo/End-to-End
- **Prioridade**: Critical
- **Descrição**: Validar jornada completa do usuário

---

**Total**: 21 cenários  
**Documentação Completa**: Ver `README.md`
