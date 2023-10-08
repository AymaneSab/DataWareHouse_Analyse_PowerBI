ASSERT (SELECT COUNT(*) FROM ma_table) = 10;
 
EXEC tSQLt.NewTestClass 'MonTestSchema';

-- Créez un test en utilisant le schéma de test que vous avez créé
EXEC tSQLt.NewTestClass 'MonTestSchema';

-- Écrivez un test pour vérifier une requête
CREATE PROCEDURE MonTestSchema.[test MaRequêteRetourneLesBonnesDonnées]
AS
BEGIN
    -- Insérez des données de test dans votre table
    INSERT INTO MaTable (Colonne1, Colonne2) VALUES ('Valeur attendue', 42);

    -- Exécutez votre requête
    DECLARE @Result VARCHAR(255);
    SELECT @Result = MaRequête() FROM MaTable;

    -- Vérifiez que le résultat est conforme à vos attentes
    EXEC tSQLt.AssertEquals 'Valeur attendue', @Result;
END;

EXEC tSQLt.Run;
