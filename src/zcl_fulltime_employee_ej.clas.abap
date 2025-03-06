CLASS zcl_fulltime_employee_ej DEFINITION
  PUBLIC
  INHERITING FROM zcl_employee_ej FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING im_name   TYPE zcl_employee_ej=>ty_name
                im_age    TYPE zcl_employee_ej=>ty_age
                im_salary TYPE zcl_employee_ej=>ty_salary.

    METHODS get_fulltime_salary
      RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_salary.

    METHODS set_fulltime_salary
      IMPORTING im_fulltime_salary TYPE zcl_employee_ej=>ty_salary.

    METHODS calculate_salary REDEFINITION.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA fulltime_salary TYPE zcl_employee_ej=>ty_salary.

ENDCLASS.


CLASS zcl_fulltime_employee_ej IMPLEMENTATION.
  METHOD calculate_salary.
    result = get_fulltime_salary( ).
  ENDMETHOD.

  METHOD constructor.
    super->constructor( im_name = im_name
                        im_age  = im_age ).

    set_fulltime_salary( im_salary ).
  ENDMETHOD.

  METHOD get_fulltime_salary.
    r_result = fulltime_salary.
  ENDMETHOD.

  METHOD set_fulltime_salary.
    fulltime_salary = im_fulltime_salary.
  ENDMETHOD.
ENDCLASS.
