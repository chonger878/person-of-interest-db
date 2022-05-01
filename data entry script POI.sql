INSERT INTO characterAffliation(affliationName)
VALUES('The Machine'),
      ('Samaritan'),
      ('New York Police Department'),
      ('HR');

INSERT INTO theHeroes(hFirstName,hLastName,cAffliationID)
VALUES('Harold', 'Finch', 1),
      ('John', 'Reese', 1),
      ('Sameen', 'Shaw', 1),
      ('Samantha (Root)', 'Groves', 1),
      ('Lionel', 'Fusco', 1),
      ('Joss', 'Carter', 3)

INSERT INTO theVillains(vFirstName, vLastName,cAffliationID)
VALUES('Patrick', 'Simmons', 4)

INSERT INTO indivStatus(numIndivID, isDead, isAlive, isUnknown)
VALUES(6, true, false, false, false)

INSERT INTO numPerpOrVic(numIndivID,isPerp, isVictim)
VALUES(6, false, true)

