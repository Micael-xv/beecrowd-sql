SELECT 
    SUBSTRING(np.cpf FROM 1 FOR 3) || '.' ||
    SUBSTRING(np.cpf FROM 4 FOR 3) || '.' ||
    SUBSTRING(np.cpf FROM 7 FOR 3) || '-' ||
    SUBSTRING(np.cpf FROM 10 FOR 2) AS cpf_formatado
FROM natural_person np
INNER JOIN customers c ON c.id = np.id_customers;
