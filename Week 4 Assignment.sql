INSERT INTO Expenses (amount, date, category)
VALUES (50.00, '2024-07-09', 'Groceries');
UPDATE Expenses
SET amount = 60.00, date = '2024-07-10', category = 'Groceries'
WHERE expense_id = 1;
CREATE TABLE Expenses_Copy LIKE Expenses;
INSERT INTO Expenses_Copy SELECT * FROM Expenses;
DELETE FROM Expenses_Copy
WHERE expense_id = 2;
SELECT *
FROM Expenses
WHERE amount IS NULL OR date IS NULL OR category IS NULL;
UPDATE Expenses
SET amount = COALESCE(amount, 0.00),
    date = COALESCE(date, CURDATE()),
    category = COALESCE(category, 'Uncategorized')
WHERE amount IS NULL OR date IS NULL OR category IS NULL;
