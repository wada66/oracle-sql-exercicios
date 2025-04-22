
--  Deseja-se uma lista que contenha número da matrícula, primeiro e último nome e cargo de todos os funcionários do sexo feminino que tenham cargo superior a 55.

SELECT CD_MAT, NM_FUNC, NM_SOBRENOME, NR_CARGO
FROM FUNC
WHERE IN_SEXO = 'F'
AND NR_CARGO > 55;

-- Deseja-se uma lista que contenha número de matrícula, nome e sobrenome do funcionário em cujo sobrenome não seja encontrada a letra "E".

SELECT CD_MAT, NM_FUNC, NM_SOBRENOME
FROM FUNC
WHERE NM_SOBRENOME NOT LIKE '%E%';

-- Deseja-se uma lista contendo código e nome do projeto para todos os projetos que possuam o texto "AMA" em algum lugar de seu nome. Como restrição adicional, temos que somente os projetos em cujo código existam os números 21 como terceiro e quarto caracter devem ser pesquisados.

SELECT CD_PROJ, NM_PROJ
FROM PROJ
WHERE NM_PROJ LIKE '%AMA%'
AND CD_PROJ LIKE '__21%';

-- Obtenha a descrição da tabela Funcionário.

DESCRIBE FUNC;

-- Deseja-se uma lista contendo os códigos de departamento para os departamentos que possuam funcionários. Na listagem-resposta, não deve haver repetição de código de departamento.

SELECT DISTINCT CD_DEPTO
FROM DEPTO
WHERE CD_DEPTO IS NOT NULL;

-- Deseja-se uma lista contendo código do departamento e nome do departamento de todos os departamentos em que o código do departamento contábil não está preenchido.

SELECT CD_DEPTO, NM_DEPTO
FROM DEPTO
WHERE CD_DEPTO_CTB IS NULL;

--  Deseja-se uma lista (matrícula, nome e departamento) de todos os funcionários que estejam alocados aos departamentos A00, B01 ou C01.

SELECT CD_MAT, NM_FUNC, CD_DEPTO
FROM FUNC
WHERE CD_DEPTO IN ('A00','B01','C01');

-- Deseja-se saber quais os funcionários (matrícula, cargo e departamento) que foram cadastrados na partição Anos95_99 da tabela de histórico de promoções.

SELECT CD_MAT, NR_CARGO, CD_DEPTO
FROM HST_PROMO PARTITION (ANOS95_99);
