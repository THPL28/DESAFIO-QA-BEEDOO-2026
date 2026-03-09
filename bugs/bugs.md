# Relatório de Bugs - Sistema de Gerenciamento de Cursos

## Análise de Bugs Identificados

Durante a execução dos testes de qualidade de software, foram identificados 4 bugs críticos que comprometem a integridade e usabilidade da aplicação. Este relatório detalha cada falha encontrada com informações completas para reprodução e correção.

## Bugs de Alta Severidade

### BUG 001 - Cadastro sem Validação de Campos Obrigatórios

**ID do Bug:** QA-001
**Título:** Sistema permite cadastrar curso sem preencher campos obrigatórios
**Severidade:** Alta
**Prioridade:** Crítica
**Status:** Não Corrigido

**Descrição:**
O sistema permite o cadastro de cursos sem validar a obrigatoriedade dos campos, permitindo a criação de registros incompletos e inconsistentes no banco de dados.

**Passos para Reproduzir:**
1. Acessar a aplicação em https://creative-sherbet-a51eac.netlify.app/
2. Clicar no menu "Cadastrar curso"
3. Deixar todos os campos do formulário em branco
4. Clicar no botão "Cadastrar curso"
5. Acessar o menu "Lista de cursos"

**Resultado Atual:**
- O sistema aceita o cadastro sem validar os campos obrigatórios
- Curso é cadastrado com todos os campos vazios
- Não são exibidas mensagens de erro ao usuário
- Curso aparece na listagem com informações incompletas

**Resultado Esperado:**
- O sistema deve impedir o cadastro quando campos obrigatórios estiverem vazios
- Deve exibir mensagens de erro claras indicando quais campos precisam ser preenchidos
- O curso não deve ser salvo no banco de dados

**Impacto:**
- Compromete a integridade dos dados cadastrados
- Permite a criação de registros inconsistentes
- Degrada a experiência do usuário
- Pode gerar problemas em relatórios e consultas futuras

**Evidências:**
- Vídeo: `/evidencias/video/T01-CAD - CADASTRO CADASTRO SEM CAMPOS PREENCHIDOS.mp4`
- Print: `/evidencias/print/404/404.png`

---

### BUG 003 - Falha na Exclusão de Cursos

**ID do Bug:** QA-003
**Título:** Exclusão de curso não remove o curso da lista
**Severidade:** Alta
**Prioridade:** Alta
**Status:** Não Corrigido

**Descrição:**
Ao tentar excluir um curso da lista, o sistema exibe mensagem de sucesso mas não remove efetivamente o registro da listagem, mantendo o curso visível para o usuário.

**Passos para Reproduzir:**
1. Acessar a aplicação
2. Cadastrar um curso (ou usar um já existente)
3. Acessar o menu "Lista de cursos"
4. Clicar no botão "Excluir curso" de qualquer curso da lista
5. Observar o comportamento da listagem

**Resultado Atual:**
- O sistema exibe mensagem de exclusão bem-sucedida
- O curso continua visível na listagem
- Não há atualização visual da interface
- O registro permanece no banco de dados

**Resultado Esperado:**
- O curso deve ser removido da lista imediatamente após a exclusão
- A interface deve ser atualizada para refletir a remoção
- O registro deve ser excluído do banco de dados
- Deve haver feedback visual claro da operação

**Impacto:**
- Usuário não tem certeza se a exclusão foi realizada
- Pode gerar tentativas repetidas de exclusão
- Compromete a confiabilidade do sistema
- Pode causar sobrecarga de dados inconsistentes

**Evidências:**
- Vídeo: `/evidencias/video/T03-LIST - EXCLUSÃO INVÁLIDA.mp4`

## Bugs de Média Severidade

### BUG 002 - Validação Insuficiente de Datas

**ID do Bug:** QA-002
**Título:** Sistema permite cadastrar cursos com datas inválidas
**Severidade:** Média
**Prioridade:** Média
**Status:** Não Corrigido

**Descrição:**
O sistema não valida adequadamente as datas de início e fim dos cursos, permitindo o cadastro com datas inconsistentes, muito antigas ou muito futuras.

**Passos para Reproduzir:**
1. Acessar o menu "Cadastrar curso"
2. Preencher os campos obrigatórios
3. Informar datas inválidas:
   - Data de início posterior à data de fim
   - Datas muito antigas (ex.: ano 1900)
   - Datas muito futuras (ex.: ano 2100)
4. Clicar em "Cadastrar curso"

**Resultado Atual:**
- O sistema aceita datas inconsistentes sem validação
- Não há verificação de coerência entre data de início e fim
- Não há limite para datas muito antigas ou futuras
- Curso é cadastrado normalmente

**Resultado Esperado:**
- O sistema deve validar que a data de início seja anterior à data de fim
- Deve impedir datas muito antigas (ex.: anteriores ao ano atual - 1)
- Deve impedir datas muito futuras (ex.: posteriores ao ano atual + 5)
- Deve exibir mensagens de erro claras para datas inválidas

**Impacto:**
- Pode gerar cursos com datas inconsistentes
- Dificulta a organização e planejamento de cursos
- Pode causar confusão na listagem e consultas
- Atinge a credibilidade do sistema

**Evidências:**
- Vídeo: `/evidencias/video/T02-CAD - DATA INVÁLIDA.mp4`

---

### BUG 004 - Validação Insuficiente de Número de Vagas

**ID do Bug:** QA-004
**Título:** Campo número de vagas permite valores inválidos
**Severidade:** Média
**Prioridade:** Média
**Status:** Não Corrigido

**Descrição:**
O campo "Número de vagas" aceita valores inválidos como números negativos, zero ou texto, sem realizar validação adequada.

**Passos para Reproduzir:**
1. Acessar o menu "Cadastrar curso"
2. Preencher os demais campos obrigatórios
3. No campo "Número de vagas", informar:
   - Valor negativo (ex.: -5)
   - Valor zero (0)
   - Texto (ex.: "abc")
4. Clicar em "Cadastrar curso"

**Resultado Atual:**
- O sistema aceita valores negativos no campo de vagas
- Permite o valor zero como número de vagas
- Aceita texto no lugar de números
- Curso é cadastrado com valores inconsistentes

**Resultado Esperado:**
- O sistema deve aceitar apenas números inteiros positivos
- Deve impedir valores negativos e zero
- Deve validar que o campo contenha apenas dígitos numéricos
- Deve exibir mensagem de erro para valores inválidos

**Impacto:**
- Permite cursos com número de vagas inválido
- Pode gerar problemas na lógica de inscrição
- Dificulta a gestão de vagas disponíveis
- Compromete a consistência dos dados

**Evidências:**
- Vídeo: `/evidencias/video/T04-CAD - NÚMERO DE VAGAS NEGATIVAS.mp4`

## Resumo Estatístico

| Severidade | Quantidade | Porcentagem |
|------------|------------|-------------|
| Alta | 2 | 50% |
| Média | 2 | 50% |
| Baixa | 0 | 0% |
| **Total** | **4** | **100%** |

## Classificação de Bugs por Tipo

| Tipo de Bug | Quantidade |
|-------------|------------|
| Validação de Entrada | 3 |
| Lógica de Negócio | 1 |
| **Total** | **4** |

## Recomendações Técnicas

### Para Bugs de Alta Severidade

1. **Validação de Campos Obrigatórios (QA-001):**
   - Implementar validação no frontend com JavaScript
   - Adicionar validação no backend para segurança
   - Exibir mensagens de erro em tempo real
   - Impedir submissão do formulário com campos inválidos

2. **Correção da Exclusão (QA-003):**
   - Verificar a lógica de exclusão no backend
   - Atualizar a listagem após exclusão bem-sucedida
   - Implementar feedback visual imediato
   - Adicionar confirmação antes da exclusão

### Para Bugs de Média Severidade

3. **Validação de Datas (QA-002):**
   - Implementar validação de coerência entre datas
   - Definir limites aceitáveis para datas
   - Adicionar mensagens de erro específicas
   - Validar formato e consistência das datas

4. **Validação de Número de Vagas (QA-004):**
   - Implementar validação numérica no campo
   - Impedir valores negativos e zero
   - Validar formato do campo (apenas números)
   - Exibir mensagens de erro apropriadas

## Impacto Geral na Qualidade

### Impacto na Integridade dos Dados
- **Crítico:** 50% dos bugs comprometem diretamente a integridade dos dados
- **Médio:** 50% dos bugs podem gerar inconsistências futuras
- **Total:** 100% dos bugs identificados afetam a qualidade dos dados

### Impacto na Experiência do Usuário
- **Alto:** Usuários podem se frustrar com falhas de validação
- **Médio:** Confusão com comportamentos inesperados
- **Baixo:** Pequenas inconveniências na usabilidade

### Impacto nos Requisitos de Negócio
- **Crítico:** Falhas em validações essenciais
- **Médio:** Inconsistências que podem gerar problemas operacionais
- **Baixo:** Pequenas falhas que não comprometem o core do negócio

## Conclusão

Os bugs identificados representam falhas críticas na camada de validação e consistência de dados da aplicação. A correção desses problemas é essencial para garantir a qualidade, confiabilidade e usabilidade do sistema. Recomenda-se a correção imediata dos bugs de alta severidade antes de qualquer release em produção.

**Data da Análise:** 09/03/2026
**Analista:** Tiago Looze
**Versão da Aplicação Testada:** https://creative-sherbet-a51eac.netlify.app/
