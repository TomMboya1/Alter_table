
CREATE DATABASE IF NOT EXISTS RestaurantDatabase;


USE RestaurantDatabase;


CREATE TABLE IF NOT EXISTS Meals (
                                     MealID INT AUTO_INCREMENT PRIMARY KEY,
                                     Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Calories INT NOT NULL
    );


CREATE TABLE IF NOT EXISTS Orders (
                                      OrderID INT AUTO_INCREMENT PRIMARY KEY,
                                      MealID INT NOT NULL,
                                      OrderDate TIMESTAMP NOT NULL,
                                      FOREIGN KEY (MealID) REFERENCES Meals(MealID)
    );

-
CREATE TABLE IF NOT EXISTS INGREDIENTS (
                                           IngredientID INT AUTO_INCREMENT PRIMARY KEY,
                                           Name VARCHAR(255) NOT NULL UNIQUE,
    Category VARCHAR(255) NOT NULL,
    Supplier VARCHAR(255) NOT NULL,
    UnitOfMeasure VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    ExpiryDate DATE NOT NULL,
    PurchaseDate DATE NOT NULL
    );


