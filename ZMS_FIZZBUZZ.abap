*&---------------------------------------------------------------------*
*& Report ZMS_FIZZBUZZ
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zms_fizzbuzz.

START-OF-SELECTION.
  DATA(lo_fizzbuzz) = NEW zms_fizzbuzz_calc( ).
  lo_fizzbuzz->run_fizzbuzz( ).