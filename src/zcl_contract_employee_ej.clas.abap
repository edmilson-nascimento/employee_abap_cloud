CLASS zcl_contract_employee_ej DEFINITION
  PUBLIC
  INHERITING FROM zcl_employee_ej FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING im_name        TYPE zcl_employee_ej=>ty_name
                  im_age         TYPE zcl_employee_ej=>ty_age
                  im_daily_rate  TYPE zcl_employee_ej=>ty_rate
                  im_days_worked TYPE zcl_employee_ej=>ty_days_worked,

      calculate_salary
        REDEFINITION,
      get_daily_rate  RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_rate,
      set_daily_rate  IMPORTING im_daily_rate   TYPE zcl_employee_ej=>ty_rate,
      get_days_worked RETURNING VALUE(r_result) TYPE zcl_employee_ej=>ty_days_worked,
      set_days_worked IMPORTING im_days_worked  TYPE zcl_employee_ej=>ty_days_worked.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA:
      daily_rate  TYPE zcl_employee_ej=>ty_rate,
      days_worked TYPE zcl_employee_ej=>ty_days_worked.

ENDCLASS.



CLASS ZCL_CONTRACT_EMPLOYEE_EJ IMPLEMENTATION.


  METHOD calculate_salary.
    RETURN me->get_daily_rate( ) * me->get_days_worked( ).
  ENDMETHOD.


  METHOD constructor.

    super->constructor( im_name = im_name
                        im_age  = im_age ).

    set_daily_rate( im_daily_rate ).
    set_days_worked( im_days_worked ).

  ENDMETHOD.


  METHOD get_daily_rate.
    r_result = me->daily_rate.
  ENDMETHOD.


  METHOD get_days_worked.
    r_result = me->days_worked.
  ENDMETHOD.


  METHOD set_daily_rate.
    me->daily_rate = im_daily_rate.
  ENDMETHOD.


  METHOD set_days_worked.
    me->days_worked = im_days_worked.
  ENDMETHOD.
ENDCLASS.
