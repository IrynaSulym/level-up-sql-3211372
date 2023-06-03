-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT * FROM Customers
WHERE Email = 'smac@kinetecoinc.com'

SELECT MAX(CustomerID)
FROM Customers

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email)
VALUES
(102, 'Sam', 'McAdams', 'smac@kinetecoinc.com')

SELECT MAX(ReservationID)
FROM Reservations

INSERT INTO Reservations
(ReservationID, CustomerID, Date, PartySize)
VALUES
(2000, 102, '2022-08-12 18:00:00', 5)

SELECT *
FROM Customers c
INNER JOIN Reservations r
ON c.CustomerID = r.CustomerID
WHERE c.CustomerID = 102;