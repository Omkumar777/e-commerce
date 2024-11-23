DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `user_id` int NOT NULL,
  `content` json DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cart` WRITE;
INSERT INTO `cart` VALUES (8,'[{\"id\": \"1\", \"size\": \"MEDIUM\", \"quantity\": 1}]');
UNLOCK TABLES;
