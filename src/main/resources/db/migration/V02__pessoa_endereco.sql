CREATE TABLE pessoa(
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)NOT NULL,
    logradouro VARCHAR(30),
    numero VARCHAR(30),
    complemento VARCHAR(30),
    bairro VARCHAR(30),
    cep VARCHAR(30),
    cidade VARCHAR(30),
    estado VARCHAR(30),
    ativo BOOLEAN NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Felipe Santos', 'Rua do Cascalho', '15', null, 'Pacaembu', '36759565', 'Mogi', 'SP', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Gabriel Nunes', 'Rua 89', '8', null, 'São Januário', '72546505', 'Brasilia', 'DF', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Joaquim Silva', 'Rua das 7', '5', null, 'Osaias', '35659852', 'Sobral', 'CE', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Giula Palermo', 'Rua das Emboabas', '6', null, 'Compaixão', '598465352', 'Fortal', 'CE', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Caio Felipe', 'Rua do Aviador', '88', null, 'Santos Dumont', '568412350', 'Joinvile', 'SP', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Mario Caua', 'Rua do Sapo', '21', null, 'Lagoa', '365213688', 'Paracatu', 'MG', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Hiago Santos', 'Rua Bohemia', '93', null, 'Catete', '36512048', 'Caxias', 'RJ', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Patricia Vieira', 'Rua da Esperança', '88', null, 'Virtude', '65432980', 'Santa Maria', 'RS', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Paulo Vitor', 'Rua da Paz', '55', null, 'Aparecida', '46851355', 'Rio Branco', 'AC', true);
INSERT INTO pessoa(nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) values('Isaias de Castro', 'Rua Pipa', '62', null, 'Guarituba', '66954823', 'Mato Seco', 'MS', true);

