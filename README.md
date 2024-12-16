# Exercício de Roles no MySQL

## Descrição
Este projeto explora o uso de **Roles** no MySQL para gerenciar permissões de forma eficiente. A atividade propõe a criação de usuários, definição de roles com privilégios específicos e configuração de um usuário administrador com acesso a todas as roles. O objetivo é organizar a gestão de acessos no banco de dados `lojaInformatica`.

---

## Estrutura do Exercício

1. **Criação de Usuários**
   - Foram criados 5 usuários locais com senha padrão.
   - Cada usuário foi configurado para assumir permissões atribuídas a uma role específica.

2. **Definição de Roles**
   - Foram criadas 5 roles com diferentes conjuntos de permissões:
     - Acesso a tabelas específicas para leitura (`SELECT`).
     - Permissões de escrita (`INSERT`), atualização (`UPDATE`) e exclusão (`DELETE`).
     - Acesso total a todas as tabelas de um schema.

3. **Associação de Usuários a Roles**
   - Cada usuário foi vinculado a uma role, garantindo que suas permissões sejam herdadas diretamente da role associada.

4. **Criação de Usuário Administrador**
   - Foi criado um usuário `admin` com senha padrão.
   - Este usuário recebeu acesso a todas as roles, permitindo controle completo sobre o sistema.

---

## Objetivos

- Demonstrar a flexibilidade do gerenciamento de permissões usando roles no MySQL.
- Simplificar a administração de acessos ao aplicar privilégios de forma centralizada por roles.
- Garantir que o usuário administrador tenha controle total, enquanto os usuários comuns possuem permissões limitadas e específicas.

---

## Como Usar

1. **Criação e Configuração**
   - O banco de dados deve ser configurado conforme as especificações descritas neste exercício.
   - Roles e permissões devem ser configuradas seguindo as necessidades de acesso do sistema.

2. **Gerenciamento**
   - Os privilégios de cada role podem ser ajustados centralmente para refletir alterações no acesso.
   - Novos usuários podem ser vinculados a roles existentes para herdar as permissões de forma automática.

3. **Validação**
   - Certifique-se de que as permissões foram aplicadas corretamente usando comandos de auditoria, como exibir os privilégios de roles e usuários associados.

---

## Considerações Finais
Este exercício enfatiza a importância do uso de roles como uma prática recomendada para a gestão eficiente de acessos em sistemas MySQL. Ele simplifica a administração, melhora a segurança e torna o gerenciamento de usuários mais escalável em projetos complexos.
