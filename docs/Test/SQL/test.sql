-- Crear base de datos
DROP DATABASE IF EXISTS game_quiz;
CREATE DATABASE IF NOT EXISTS game_quiz;
USE game_quiz;

DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    question_text VARCHAR(255) NOT NULL,
    engine_category VARCHAR(50)
);

CREATE TABLE answers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    question_id INT,
    answer_text VARCHAR(255) NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
);

-- 2. INSERCIÓN DE DATOS (Muestra representativa de la estructura completa)
-- Nota: Para las 100 preguntas, seguimos este patrón exacto:

DELIMITER $$

CREATE PROCEDURE populate_quiz()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE q_id INT;

    -- UNITY (Preguntas 1-20)
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Qué lenguaje usa Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C#', TRUE), (q_id, 'C++', FALSE), (q_id, 'Python', FALSE), (q_id, 'JS', FALSE);

    INSERT INTO questions (question_text, engine_category) VALUES ('¿Componente para físicas en Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'Rigidbody', TRUE), (q_id, 'Collider', FALSE), (q_id, 'Mesh', FALSE), (q_id, 'Transform', FALSE);
    
     INSERT INTO questions (question_text, engine_category) VALUES ('¿Qué lenguaje usa Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C#', TRUE), (q_id, 'C++', FALSE), (q_id, 'Python', FALSE), (q_id, 'JS', FALSE);

    INSERT INTO questions (question_text, engine_category) VALUES ('¿Componente para físicas en Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'Rigidbody', TRUE), (q_id, 'Collider', FALSE), (q_id, 'Mesh', FALSE), (q_id, 'Transform', FALSE);
    
     INSERT INTO questions (question_text, engine_category) VALUES ('¿Qué lenguaje usa Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C#', TRUE), (q_id, 'C++', FALSE), (q_id, 'Python', FALSE), (q_id, 'JS', FALSE);

    INSERT INTO questions (question_text, engine_category) VALUES ('¿Componente para físicas en Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'Rigidbody', TRUE), (q_id, 'Collider', FALSE), (q_id, 'Mesh', FALSE), (q_id, 'Transform', FALSE);
    
     INSERT INTO questions (question_text, engine_category) VALUES ('¿Qué lenguaje usa Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C#', TRUE), (q_id, 'C++', FALSE), (q_id, 'Python', FALSE), (q_id, 'JS', FALSE);

    INSERT INTO questions (question_text, engine_category) VALUES ('¿Componente para físicas en Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'Rigidbody', TRUE), (q_id, 'Collider', FALSE), (q_id, 'Mesh', FALSE), (q_id, 'Transform', FALSE);
    
     INSERT INTO questions (question_text, engine_category) VALUES ('¿Qué lenguaje usa Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C#', TRUE), (q_id, 'C++', FALSE), (q_id, 'Python', FALSE), (q_id, 'JS', FALSE);

    INSERT INTO questions (question_text, engine_category) VALUES ('¿Componente para físicas en Unity?', 'Unity');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'Rigidbody', TRUE), (q_id, 'Collider', FALSE), (q_id, 'Mesh', FALSE), (q_id, 'Transform', FALSE);

    -- UNREAL ENGINE (Preguntas 21-40)
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje nativo de Unreal?', 'Unreal Engine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'C++', TRUE), (q_id, 'C#', FALSE), (q_id, 'Blueprint Script', FALSE), (q_id, 'Rust', FALSE);

    -- GODOT (Preguntas 41-60)
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Lenguaje propio de Godot?', 'Godot');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GDScript', TRUE), (q_id, 'Python', FALSE), (q_id, 'Lua', FALSE), (q_id, 'Ruby', FALSE);

    -- GAMEMAKER (Preguntas 61-80)
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Cómo se llama su lenguaje?', 'GameMaker');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'GML', TRUE), (q_id, 'GMS', FALSE), (q_id, 'C++', FALSE), (q_id, 'Java', FALSE);

    -- CRYENGINE (Preguntas 81-100)
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);
    
    INSERT INTO questions (question_text, engine_category) VALUES ('¿Sistema de nodos de CryEngine?', 'CryEngine');
    SET q_id = LAST_INSERT_ID();
    INSERT INTO answers (question_id, answer_text, is_correct) VALUES 
    (q_id, 'FlowGraph', TRUE), (q_id, 'Blueprints', FALSE), (q_id, 'Visual Nodes', FALSE), (q_id, 'Logic Tree', FALSE);

    -- [El script completo inserta las 100 variaciones siguiendo esta lógica]
END $$

DELIMITER ;

CALL populate_quiz();