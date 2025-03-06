CLASS zcl_parttime_employee_ej DEFINITION
  PUBLIC
  INHERITING FROM zcl_employee_ej FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING im_name       TYPE zcl_employee_ej=>ty_name
                im_age        TYPE zcl_employee_ej=>ty_age
                im_work_hours TYPE zcl_employee_ej=>ty_hour
                im_work_rate  TYPE zcl_employee_ej=>ty_hour.

    METHODS get_work_hours   RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_hour.
    METHODS set_work_hours   IMPORTING im_work_hours   TYPE zcl_employee_ej=>ty_hour.
    METHODS get_work_rate    RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_rate.
    METHODS set_work_rate    IMPORTING im_work_rate    TYPE zcl_employee_ej=>ty_rate.

    METHODS calculate_salary REDEFINITION.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA work_hours TYPE zcl_employee_ej=>ty_hour.
    DATA work_rate  TYPE zcl_employee_ej=>ty_rate.

ENDCLASS.


CLASS zcl_parttime_employee_ej IMPLEMENTATION.
  METHOD calculate_salary.
    RETURN work_hours * work_rate.
  ENDMETHOD.

  METHOD constructor.
    super->constructor( im_name = im_name
                        im_age  = im_age ).

    set_work_hours( im_work_hours ).
    set_work_rate( im_work_rate ).
  ENDMETHOD.

  METHOD get_work_hours.
    r_result = work_hours.
  ENDMETHOD.

  METHOD set_work_hours.
    work_hours = im_work_hours.
  ENDMETHOD.

  METHOD get_work_rate.
    r_result = work_rate.
  ENDMETHOD.

  METHOD set_work_rate.
    work_rate = im_work_rate.
  ENDMETHOD.
ENDCLASS.
