      ******************************************************************
      * Author:
      * Date:
      * Purpose:COBOL Definition>Organization Clause.
      * INDEXED FILE MUST HAVE ONE DEFINITION in file-control of I/O section. in ENVIRONMENT.
      * Tectonics: cobc. Index must always be defined with the clause organization is indexed.
      *ACCESS MODE IS RANDOM - specifies how the file will be processed. {Sequential, RANDOM, dynamic}
      *RECORD KEY IS PRIMARY KEY.
      *ALTERNATIVE RECORD KEY IS OPTIONAL.
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
               SELECT PERSONNEL-FILE ASSIGN TO STAFF
                   ORGANIZATION IN INDEXED
                   ACCESS MODE IS RANDOM
                   RECORD KEY IS STAFF-ID-NUMBER
                   ALTERNATE RECORD KEY IS EMPLOYEE-SURNAME WITH DUPLICATES
                   ALTERNATE RECORD KEY IS DEPARTMENT-CODE WITH DUPLICATES.

       DATA DIVISION.
       FILE SECTION.
       FD PERSONNEL-FILE.
       01 EMPLOYEE-RECORD.
           02 STAFF-ID-NUMBER                  PIC 9(6).
           02 EMPLOYEE-NAME.
               03 EMPLOYEE-FIRST-NAME          PIC X(20).
               03 EMPLOYEE-SURNAME             PIC X(20).
           02  DEPARTMENT-CODE                 PIC X(20).
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
