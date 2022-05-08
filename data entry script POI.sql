INSERT INTO characterAffliation(affliationName)
VALUES('The Machine'),
      ('Samaritan'),
      ('New York Police Department'),
      ('HR');

INSERT INTO numbered_indiv(numberedFirstName,numberedLastName, numberedSSN)
VALUES('Riley', 'Cavanaugh')

INSERT INTO miscIndiv(miscFirstName, miscLastName, relationToNIndiv, wasConnected)
VALUES('Annie', 'Delaney', 'girlfriend', true)

INSERT INTO theHeroes(hFirstName,hLastName,cAffliationID)
VALUES('Harold', 'Finch', 1),
      ('John', 'Reese', 1),
      ('Sameen', 'Shaw', 1),
      ('Samantha (Root)', 'Groves', 1),
      ('Lionel', 'Fusco', 1),
      ('Joss', 'Carter', 3),
      ('Logan', 'Pierce', 1)

INSERT INTO theVillains(vFirstName, vLastName,cAffliationID)
VALUES('Patrick', 'Simmons', 4),
      ('Martine', 'Rousseau', 2),
      ('John', 'Greer', 2),
      ('Alonzo', 'Quinn', 4),
      ('Kara', 'Stanton', 2)

INSERT INTO indivStatus(numIndivID, heroID, villainID, isDead, isAlive, isUnknown)
VALUES(null,6, null, true, false, false, false),
      (null, null, 2, true, false, false, false),
      (null, null, 3, true, false, false, false),
      (null, null, 4, false, true, false),
      (1, null, null, true, false, false),
      (null, null, 5, true, false, false)

INSERT INTO numPerpOrVic(numIndivID, heroID, villainID,isPerp, isVictim)
VALUES(null,6, null,false, true)

