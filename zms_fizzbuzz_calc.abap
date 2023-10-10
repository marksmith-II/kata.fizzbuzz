class ZMS_FIZZBUZZ_CALC definition
  public
  final
  create public .

public section.

  methods IS_FIZZBUZZ_NUMBER
    importing
      !IV_NUMBER type I
    returning
      value(RV_OUTPUT) type STRING .
  methods RUN_FIZZBUZZ .
protected section.
private section.
ENDCLASS.



CLASS ZMS_FIZZBUZZ_CALC IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZMS_FIZZBUZZ_CALC->IS_FIZZBUZZ_NUMBER
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_NUMBER                      TYPE        I
* | [<-()] RV_OUTPUT                      TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD IS_FIZZBUZZ_NUMBER.

  IF iv_number MOD 3 = 0 OR CONV string( iv_number ) CS '3'.
      rv_output = 'Fizz'.
    ENDIF.
    IF iv_number MOD 5 = 0 OR CONV string( iv_number ) CS '5'.
      rv_output = rv_output && 'Buzz'.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZMS_FIZZBUZZ_CALC->RUN_FIZZBUZZ
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD run_fizzbuzz.

    DO 100 TIMES.
      DATA(lv_output) = me->is_fizzbuzz_number( sy-index ).
      IF lv_output IS INITIAL.
        lv_output = |{ sy-index }|.
      ENDIF.
      WRITE: / lv_output.
    ENDDO.
  ENDMETHOD.
ENDCLASS.
