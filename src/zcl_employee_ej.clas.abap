CLASS zcl_employee_ej DEFINITION
  PUBLIC ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES ty_name        TYPE name1_a.
    TYPES ty_age         TYPE int4.
    TYPES ty_salary      TYPE p LENGTH 4 DECIMALS 2.
    TYPES ty_rate        TYPE p LENGTH 4 DECIMALS 2.
    TYPES ty_salary_type TYPE char03.
    TYPES ty_hour        TYPE p LENGTH 4 DECIMALS 2.
    TYPES ty_days_worked TYPE int4.

    METHODS constructor
      IMPORTING im_name TYPE zcl_employee_ej=>ty_name
                im_age  TYPE zcl_employee_ej=>ty_age.

    METHODS calculate_salary ABSTRACT
      RETURNING VALUE(result) TYPE ty_salary.

    METHODS get_name
      RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_name.

    METHODS set_name
      IMPORTING im_name TYPE zcl_employee_ej=>ty_name.

    METHODS get_age
      RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_age.

    METHODS set_age
      IMPORTING im_age TYPE zcl_employee_ej=>ty_age.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA name TYPE zcl_employee_ej=>ty_name.
    DATA age  TYPE zcl_employee_ej=>ty_age.

ENDCLASS.


CLASS zcl_employee_ej IMPLEMENTATION.
  METHOD constructor.
    set_name( im_name ).
    set_age( im_age ).
  ENDMETHOD.

  METHOD get_name.
    r_result = name.
  ENDMETHOD.

  METHOD set_name.
    name = im_name.
  ENDMETHOD.

  METHOD get_age.
    r_result = age.
  ENDMETHOD.

  METHOD set_age.
    age = im_age.
  ENDMETHOD.
ENDCLASS.
