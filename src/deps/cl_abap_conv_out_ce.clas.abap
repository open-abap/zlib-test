CLASS cl_abap_conv_out_ce DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS:
      create
        IMPORTING encoding TYPE string
        RETURNING VALUE(ret) TYPE REF TO cl_abap_conv_out_ce,
      convert
        IMPORTING data TYPE string
        EXPORTING buffer TYPE xstring.
ENDCLASS.

CLASS cl_abap_conv_out_ce IMPLEMENTATION.
  METHOD create.
    ASSERT 'todo' = 1.
  ENDMETHOD.
  METHOD convert.
    ASSERT 'todo' = 2.
  ENDMETHOD.
ENDCLASS.