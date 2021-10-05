CREATE TABLE patients(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100) NOT NULL,
date_of_birth date NOT NULL,
PRIMARY KEY(id));

CREATE TABLE medical_histories (
id INT GENERATED ALWAYS AS IDENTITY,
admitted_at TIMESTAMP,
status VARCHAR(100) NOT NULL,
patient_id INT NOT NULL,
FOREIGN KEY (patient_id) REFERENCES patients (id),
PRIMARY KEY(id)
);

CREATE TABLE invoice (
id INT GENERATED ALWAYS AS IDENTITY,
total_amount FLOAT,
generated_at TIMESTAMP,
payed_at TIMESTAMP,
medical_histories_id INT,
FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id),
PRIMARY KEY(id)
);

CREATE TABLE treatments(
id INT GENERATED ALWAYS AS IDENTITY,
type VARCHAR(100),
name VARCHAR(100),
PRIMARY KEY(id)
);

