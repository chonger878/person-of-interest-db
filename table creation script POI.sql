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
    PRIMARY KEY(numIndivID)

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
    PRIMARY KEY(numIndivID)
    CONSTRAINT numPerpOrVic_fk_numIndiv
        FOREIGN KEY (numIndivID) REFERENCES numbered_indiv(numIndivID)

);

CREATE TABLE indivStatus(     
    numIndivID      int
    isDead          boolean
    isAlive         boolean
    isUnknown       boolean
    PRIMARY KEY(numIndivID)
    CONSTRAINT indivStatus_fk_numIndiv
        FOREIGN KEY (numIndivID) REFERENCES numbered_indiv(numIndivID)
    
);

CREATE TABLE characterAffliation(
    cAffliationID   int         
    affliationName  varchar(52)
    PRIMARY KEY(cAffliationID)
);

CREATE TABLE episodeName(
    episodeID       int     
    seasonNum       int
    episodeName     varchar(355)
    PRIMARY KEY(episodeID)
)

CREATE TABLE wasInEpisode(
    inEpisode     boolean

)