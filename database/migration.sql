CREATE TABLE IF NOT EXISTS `movie` (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    title VARCHAR(200) NOT NULL,
    year INT,
    rating DECIMAL(5, 2),  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `movie` VALUES ('good and bad mother', "Mother title",9);