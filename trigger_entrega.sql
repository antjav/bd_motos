CREATE OR REPLACE FUNCTION entrega_estado()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
BEGIN
  INSERT INTO ENTREGAESTADO VALUES(NEW.entrega_id, NEW.entrega_id, 'PENDIENTE');
  RETURN NEW;
END;
$$

CREATE OR REPLACE TRIGGER entrega_estado
  AFTER INSERT
  ON ENTREGA
  FOR EACH ROW
  EXECUTE PROCEDURE entrega_estado();