Create or replace Trigger increment_comment AFTER INSERT ON comentario for each row update spoiler set comentarios = comentarios + 1 where NEW.id_spoiler = spoiler.id_spoiler;
Create or replace trigger decrement_comment AFTER DELETE ON comentario for each row update spoiler set comentarios = comentarios - 1 where OLD.id_spoiler = spoiler.id_spoiler;
