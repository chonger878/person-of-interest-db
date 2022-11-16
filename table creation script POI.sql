CREATE DATABASE personofinterest;

CREATE TABLE theCharacters(
    charID      int
    cFirstName  varchar(52)
    cLastName   varchar(52)
    isHero      boolean
    isVillain   boolean
    isSecond    boolean
    PRIMARY KEY(charID)

);

CREATE TABLE isNumberedIndiv(
    charID          int
    numberedSSN     varchar(9)
    numberUp        boolean       
    PRIMARY KEY(numberedSSN)
    PRIMARY KEY(charID)
    CONSTRAINT isNumbered_fk_theCharacters
        FOREIGN KEY (charID) REFERENCES isNumberedIndiv(charID)

);

CREATE TABLE miscIndiv(
    noNumIndivID          int   
    miscFirstName       varchar(52)
    miscLastName        varchar(52)
    relatedToNIndivID  int
    relationToChar
    wasConnected        boolean
    PRIMARY KEY(noNumIndivID)
);


CREATE TABLE numPerpOrVic(
    numIndivID        int
    heroID            int
    villainID         int
    isPerp            boolean
    isVictim          boolean
    PRIMARY KEY(numIndivID)
    PRIMARY KEY(heroID)
    PRIMARY KEY(villainID)
    CONSTRAINT indivStatus_fk_numIndiv
        FOREIGN KEY (numIndivID) REFERENCES numbered_indiv(numIndivID)
    CONSTRAINT theHeroes_fk_numIndiv
        FOREIGN KEY (heroID) REFERENCES theHeroes(heroID)
    CONSTRAINT theVillains_fk_numIndiv
        FOREIGN KEY (heroID) REFERENCES theVillains(villainID)

);

CREATE TABLE indivStatus(     
    numIndivID      int
    heroID          int
    villainID       int
    isDead          boolean
    isAlive         boolean
    isUnknown       boolean
    PRIMARY KEY(numIndivID)
    PRIMARY KEY(heroID)
    PRIMARY KEY(villainID)
    CONSTRAINT indivStatus_fk_numIndiv
        FOREIGN KEY (numIndivID) REFERENCES numbered_indiv(numIndivID)
    CONSTRAINT theHeroes_fk_numIndiv
        FOREIGN KEY (heroID) REFERENCES theHeroes(heroID)
    CONSTRAINT theVillains_fk_numIndiv
        FOREIGN KEY (heroID) REFERENCES theVillains(villainID)
    
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