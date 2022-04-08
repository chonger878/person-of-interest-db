CREATE DATABASE personofinterest;

CREATE TABLE theHeroes(
    heroID          int
    heroFirstName   varchar(52)
    heroLastName    varchar(52)
)

CREATE TABLE numbered_indiv(
    numIndivID          int
    numberedFirstName   varchar(52)
    numberedLastName    varchar(52)
    numberedSSN         varchar(9)
);

CREATE TABLE perpOrVic(
    numIndivID        int
    isPerp            boolean
    isVictim          boolean

);

CREATE TABLE deadOrAlive(
    numIndivID      int
    isDead          boolean
    isAlive         boolean
);