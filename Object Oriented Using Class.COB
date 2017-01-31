      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. elpCob1.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
               CLASS elpsortTbl1 IS 'elpSortTbl1'.
       DATA DIVISION.
       WORKING-STORAGE Section.
       01  srt-Customer USAGE Object REFERENCE elpSortTbl1.
       01  inValueTbl.
           02 inValue Occurs 50 TIMES
                   ASCENDING key Is inValRec
                   INDEXED by inValRec.
               03 inValRec                 PIC x(10).
       01  outValueTbl1.
           02 outValue OCCURS 50 TIMES
                   ASCENDING Key Is outValRec
                   INDEXED by OutValRec.
               03 outValRec                Pic x(10).
       PROCEDURE DIVISION.
       Invoke elpSortTbl1 "createInstance"
       Invoke srt-Customer "elpSprt" USING inValueTbl
                           RETURNING outValueTbl1
       Stop Run.
