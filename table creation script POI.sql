CREATE DATABASE personofinterest;

CREATE TABLE theHeroes(
    heroID          int     PRIMARY KEY
    hFirstName   varchar(52)
    hLastName    varchar(52)
    cAffliationID   int
);

CREATE TABLE theVillains(
    villainID      int 
    vFirstName    varchar(52)
    vLastName     varchar(52)
    cAffliationID   int   
);

CREATE TABLE numbered_indiv(
    numIndivID          int
    numberedFirstName   varchar(52)
    numberedLastName    varchar(52)
    numberedSSN         varchar(9)
);

CREATE TABLE numPerpOrVic(
    numIndivID        int
    isPerp            boolean
    isVictim          boolean

);

CREATE TABLE deadOrAlive(
    numIndivID      int
    isDead          boolean
    isAlive         boolean
);

CREATE TABLE characterAffliation(
    cAffliationID   int
    affliationName  varchar(52)

);
