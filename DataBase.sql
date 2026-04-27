use rehab_wings;

CREATE TABLE IF NOT EXISTS 
patients (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
patient_id VARCHAR(50) NOT NULL UNIQUE,
high_score INT DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
password_hash VARCHAR(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS 
game_sessions (
id INT AUTO_INCREMENT PRIMARY KEY,
patient_id VARCHAR(50) NOT NULL,
session_date DATE NOT NULL,
start_time TIME NOT NULL,
end_time TIME,
duration_seconds INT,
score INT DEFAULT 0,
FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE
)

select * from game_sessions;
select * from patients;
delete from patients where id = 17;
truncate game_sessions;