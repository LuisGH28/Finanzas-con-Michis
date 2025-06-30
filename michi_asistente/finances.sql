CREATE TABLE gastos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fecha TEXT,
    categoria TEXT,
    monto REAL
);

INSERT INTO gastos (fecha, categoria, monto) VALUES
('2025-06-01', 'comida', 250),
('2025-06-05', 'transporte', 150),
('2025-06-07', 'entretenimiento', 300),
('2025-06-12', 'comida', 200),
('2025-06-15', 'otros', 400);
