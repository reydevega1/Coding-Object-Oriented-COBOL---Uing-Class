      ******************************************************************
      * Author: Rey Devega
      * Date: 01/30/2017
      * Purpose: Execute Class Methods
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. elpCob1.
       ENVIRONMENT DIVISION

       CONFIGURATION SECTION.
       REPOSITORY.
               Class elpSortTbl1 is 'elpSortTbl'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  srt-Customer USAGE Object REFERENCE elpsortTbl1.

       PROCEDURE DIVISION.
       INVOKE elpSortTbl1 "createInstance"
                       RETURNING srt-Customer
       INVOKE srt-Customer "elpsort" Using inValueTbl
                       RETURNING outValueTbl
       Stop Run.
