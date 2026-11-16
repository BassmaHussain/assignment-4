USE store_management;

CREATE TABLE governorates(
    id INT AUTO_INCREMENT UNIQUE,
    name VARCHAR(100) NOT NULL 
    );
    
    
    CREATE TABLE stores(
    id INT AUTO_INCREMENT UNIQUE,
    name VARCHAR(100) NOT NULL ,
   address varchar(150) NOT NULL;
    governorate_id INT ,
    FOREIGN KEY governorate_id
    REFERENCES governorates(id)
    );
    
    
       CREATE TABLE suppliers(
            id INT AUTO_INCREMENT UNIQUE,
            name VARCHAR(100) NOT NULL ,
           phone VARCHAR(50) ,
           email VARCHAR(225) NOT NULL UNIQUE,
           brief_data TEXT 
    );
    
            CREATE TABLE products(
                id INT AUTO_INCREMENT UNIQUE,
                name VARCHAR(100) NOT NULL ,
                price DECIMAL(10,2) NOT NULL ,
            description TEXT,
            code VARCHAR(100) NOT NULL,
            supplier_id INT  NOT NULL UNIQUE ,
        FOREIGN KEY supplier_id
        REFERENCES suppliers(id)
               
    );