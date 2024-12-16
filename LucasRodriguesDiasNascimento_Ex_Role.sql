-- Exercicios em Sala de Aula 
-- Lucas Rodrigues Dias Nascimento - 12118365

-- Exercício (Ex_Role.sql)

/*
Exercicio sobre Roles
Crie dentro deste mesmo arquivo
Usando o lojaInformatica
5 usuarios locais com senha.
5 Roles diferentes usando qualquer nome.
Aplique 5 privilegios diferentes em cada role
cada usuario criado deve ter um role.
crie um usuario chamado Admin que tenha acesso
a todos os roles criados.
*/

-- Atividade - ROLES
-- 5 usuarios locais com senha.
USE lojaInformatica;

CREATE USER 'lucas'@'localhost' IDENTIFIED BY '123456';
CREATE USER 'guilherme'@'localhost' IDENTIFIED BY '123456';
CREATE USER 'carlos'@'localhost' IDENTIFIED BY '123456';
CREATE USER 'jefferson'@'localhost' IDENTIFIED BY '123456';
CREATE USER 'lorraine'@'localhost' IDENTIFIED BY '123456';

-- 5 Roles diferentes usando qualquer nome.

CREATE ROLE 'role1'@'localhost','role2'@'localhost', 'role3'@'localhost', 'role4'@'localhost', 'role5'@'localhost'; 

-- Aplique 5 privilegios diferentes em cada role cada usuario criado deve ter um role.

GRANT SELECT, INSERT ON lojainformatica.clientes TO 'role1'@'localhost';
SHOW GRANTS FOR 'role1'@'localhost';

GRANT SELECT ON lojainformatica.produtos TO 'role2'@'localhost';
SHOW GRANTS FOR 'role2'@'localhost';

GRANT INSERT ON lojainformatica.produtos TO 'role3'@'localhost';
SHOW GRANTS FOR 'role3'@'localhost';

GRANT SELECT ON lojainformatica.* TO 'role4'@'localhost';
SHOW GRANTS FOR 'role4'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON lojainformatica.produtos TO 'role5'@'localhost';
SHOW GRANTS FOR 'role5'@'localhost';

-- crie um usuario chamado Admin que tenha acesso a todos os roles criados.

CREATE USER 'admin'@'localhost' IDENTIFIED BY '123456';
GRANT 'role1'@'localhost','role2'@'localhost', 'role3'@'localhost', 'role4'@'localhost', 'role5'@'localhost' TO 'admin'@'localhost';
SET DEFAULT ROLE 'role1'@'localhost','role2'@'localhost', 'role3'@'localhost', 'role4'@'localhost', 'role5'@'localhost' TO 'admin'@'localhost';
SHOW GRANTS FOR 'admin'@'localhost';
