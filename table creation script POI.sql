CREATE DATABASE personofinterest;

CREATE TABLE theHeroes(
    heroID          int    
    hFirstName   varchar(52)
    hLastName    varchar(52)
    cAffliationID   int
    PRIMARY KEY(heroID)
    CONSTRAINT theHeroes_fk_characterAffliations
        FOREIGN KEY (cAffliationID) REFERENCES characterAffliation(cAffliationID)
);

CREATE TABLE theVillains(
    villainID      int 
    vFirstName    varchar(52)
    vLastName     varchar(52)
    cAffliationID   int 
    CONSTRAINT theVillains_fk_characterAffliations
        FOREIGN KEY (cAffliationID) REFERENCES characterAffliation(cAffliationID)  
);

CREATE TABLE numbered_indiv(
    numIndivID          int
    numberedFirstName   varchar(52)
    numberedLastName    varchar(52)
    numberedSSN         varchar(9)

);

CREATE TABLE miscIndiv(
    noNumIndivID          int   
    miscFirstName       varchar(52)
    miscLastName        varchar(52)
    relationToNIndiv    varchar(52)
    wasConnected        boolean
    PRIMARY KEY(noNumIndivID)
);


CREATE TABLE numPerpOrVic(
    numIndivID        int
    isPerp            boolean
    isVictim          boolean

);

CREATE TABLE indivStatus(
    indStatusID     int     PRIMARY KEY
    numIndivID      int
    isDead          boolean
    isAlive         boolean
    isUnknown       boolean
);

CREATE TABLE characterAffliation(
    cAffliationID   int         PRIMARY KEY
    affliationName  varchar(52)

);

CREATE TABLE episodeName(
    episodeID       int     PRIMARY KEY
    seasonNum       int
    episodeName     varchar(355)
)