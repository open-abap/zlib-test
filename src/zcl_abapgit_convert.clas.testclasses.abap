*----------------------------------------------------------------------*
*       CLASS ltcl_convert DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS ltcl_convert DEFINITION FOR TESTING RISK LEVEL HARMLESS DURATION SHORT FINAL.

  PRIVATE SECTION.
    METHODS string_to_xstring_utf8 FOR TESTING.
    METHODS xstring_to_string_utf8 FOR TESTING.

ENDCLASS.

*----------------------------------------------------------------------*
*       CLASS ltcl_convert IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS ltcl_convert IMPLEMENTATION.

  METHOD string_to_xstring_utf8.

    DATA lv_result TYPE xstring.

    lv_result = zcl_abapgit_convert=>string_to_xstring_utf8( 'abc' ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = '616263' ).

  ENDMETHOD.

  METHOD xstring_to_string_utf8.

    DATA lv_result TYPE string.

    lv_result = zcl_abapgit_convert=>xstring_to_string_utf8( '616263' ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 'abc' ).

  ENDMETHOD.

ENDCLASS.