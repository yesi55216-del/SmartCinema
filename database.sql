
CREATE DATABASE IF NOT EXISTS smart_cinema;
USE smart_cinema;

CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100), Email VARCHAR(100) UNIQUE, Password VARCHAR(255)
);

CREATE TABLE Movie (
    Movie_ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255), Genre VARCHAR(50), Duration INT, Rating DECIMAL(3,1)
);

CREATE TABLE Showtime (
    Showtime_ID INT AUTO_INCREMENT PRIMARY KEY,
    Movie_ID INT, Show_Date DATE, Show_Time TIME,
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID)
);

CREATE TABLE Seat (
    Seat_ID INT AUTO_INCREMENT PRIMARY KEY,
    Seat_Number VARCHAR(10), Seat_Type VARCHAR(20)
);

CREATE TABLE Booking (
    Booking_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT, Showtime_ID INT, Total_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Showtime_ID) REFERENCES Showtime(Showtime_ID)
);

CREATE TABLE Booking_Seat (
    Booking_ID INT, Seat_ID INT, Showtime_ID INT,
    PRIMARY KEY (Booking_ID, Seat_ID, Showtime_ID),
    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID),
    FOREIGN KEY (Seat_ID) REFERENCES Seat(Seat_ID),
    FOREIGN KEY (Showtime_ID) REFERENCES Showtime(Showtime_ID)
);

INSERT INTO Movie (Title, Genre, Duration, Rating) VALUES ('Dune: Part Two', 'Sci-Fi', 166, 9.0), ('Kung Fu Panda 4', 'Animation', 94, 8.5);
INSERT INTO Seat (Seat_Number, Seat_Type) VALUES ('A1', 'Regular'), ('A2', 'Regular'), ('B1', 'VIP'), ('B2', 'VIP');
