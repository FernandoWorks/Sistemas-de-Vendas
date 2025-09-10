CREATE DATABASE  IF NOT EXISTS `sistema` ]

DROP TABLE IF EXISTS `itens_venda`;

CREATE TABLE `itens_venda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venda` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` int NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id`),
  CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `itens_venda` WRITE;

INSERT INTO `itens_venda` VALUES (16,3,4,1,3500.00),(17,3,5,1,150.00),(18,3,6,1,190.00);

UNLOCK TABLES;


DROP TABLE IF EXISTS `pagamentos`;

CREATE TABLE `pagamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venda` int DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `valor_pago` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `pagamentos` WRITE;

INSERT INTO `pagamentos` VALUES (4,3,'Cartão de Crédito',3840.00,NULL);

UNLOCK TABLES;



DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `produtos` WRITE;

INSERT INTO `produtos` VALUES (1,'Notebook Dell',3500.00,10),(2,'Mouse Gamer',150.00,25),(3,'Teclado Mecânico',290.00,15),(4,'Monitor 24 polegadas',899.90,8),(5,'Notebook acer',4500.00,10),(6,'mousepad',50.00,25),(7,'Teclado Magnético',350.00,15),(8,'Monitor 23 polegadas',799.90,8);

UNLOCK TABLES;



DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `usuarios` WRITE;

INSERT INTO `usuarios` VALUES (1,'Ana Souza','ana@email.com','11999999999','Rua das Flores, 123'),(2,'Carlos Silva','carlos@email.com','21988888888','Av. Brasil, 456'),(3,'Mariana Lima','mariana@email.com','31977777777','Rua A, 789');

UNLOCK TABLES;



DROP TABLE IF EXISTS `vendas`;

CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `data_venda` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `vendas` WRITE;

INSERT INTO `vendas` VALUES (2,1,'2025-06-24 17:52:55',3840.00),(3,1,'2025-06-24 17:54:49',3840.00);

UNLOCK TABLES;
