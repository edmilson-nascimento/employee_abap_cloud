CLASS zcl_employee_manager DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    TYPES:
      BEGIN OF ty_output,
        out TYPE char256,
      END OF ty_output,
      tab_output TYPE STANDARD TABLE OF ty_output WITH DEFAULT KEY.

ENDCLASS.


CLASS zcl_employee_manager IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA message       TYPE char256.
    DATA employee_list TYPE TABLE OF REF TO zcl_employee_ej.

    DATA(parttime) = NEW zcl_parttime_employee_ej( im_name       = 'Alfa'
                                                   im_age        = 10
                                                   im_work_hours = 180
                                                   im_work_rate  = '30.5' ).
    APPEND parttime TO employee_list.

    DATA(fulltime) = NEW zcl_fulltime_employee_ej( im_name   = 'Beta'
                                                   im_age    = 31
                                                   im_salary = '230' ).
    APPEND fulltime TO employee_list.

    DATA(contract) = NEW zcl_contract_employee_ej( im_name        = 'Gama'
                                                   im_age         = 45
                                                   im_daily_rate  = '30'
                                                   im_days_worked = '19' ).
    APPEND contract TO employee_list.

    LOOP AT employee_list INTO DATA(employee_item).

      message = |Name: { employee_item->get_name( ) } - |.
      message = |{ message } Age: { employee_item->get_age( ) } - |.
      message = |{ message } $ { employee_item->calculate_salary( ) }|.
      out->write( message ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
