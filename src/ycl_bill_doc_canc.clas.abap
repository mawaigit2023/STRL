CLASS ycl_bill_doc_canc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA:
      lv_char1 TYPE c LENGTH 1.

    CLASS-METHODS:
      check_irn
        IMPORTING
                  im_docnum        TYPE I_BillingDocument-AccountingDocument
                  im_year          TYPE I_BillingDocument-FiscalYear
        RETURNING VALUE(r_irn_ind) LIKE lv_char1.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS YCL_BILL_DOC_CANC IMPLEMENTATION.


  METHOD check_irn.

    SELECT SINGLE
    BillingDocument,
    CompanyCode,
    AccountingDocument,
    FiscalYear
    FROM I_BillingDocument
    WHERE AccountingDocument = @im_docnum AND
          FiscalYear         = @im_year
    INTO @DATA(ls_bil_boc).

    IF sy-subrc EQ 0.

      SELECT SINGLE
         billingdocument,
         companycode,
         fiscalyear,
         plant_gstin,
         status,
         businessmodule,
         irn,
         cancel_status
      FROM zsd_einv_data
      WHERE billingdocument = @ls_bil_boc-BillingDocument AND
                 fiscalyear = @ls_bil_boc-FiscalYear AND
                 companycode = @ls_bil_boc-CompanyCode
      INTO @DATA(ls_irn). "#EC CI_NOORDER

      IF ls_irn-irn IS NOT INITIAL.
        IF ls_irn-cancel_status IS INITIAL.
          r_irn_ind = abap_true.
        ENDIF.
      ENDIF.

    ENDIF.

  ENDMETHOD.
ENDCLASS.
