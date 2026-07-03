*&---------------------------------------------------------------------*
*& Report ZMV_S4H_TEST_CASE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMV_S4H_TEST_CASE.

**Mithun Test**
DATA: STAWN TYPE MARC-STAWN.
DATA: MTART TYPE MTART.
DATA: EXPME TYPE MARC-EXPME.

DATA: lvchar02 type char02.
DATA: lv_vbtyp type vbtyp.
DATA: lv_vbtyp_n type vbtyp_n.
DATA: lv_vbtyp_v type vbtyp_v.
DATA: lv_vakey type vakey.

*Select stawn from marc into STAWN
*     Where matnr = '23456'.
*
*ENDSELECT.

Select * from  bseg INTO TABLE @DATA(lt_bseg)
          WHERE bukrs = '1000'.


SELECT SINGLE MTART from mara into MTART
     Where MTART = 'FERT'.

Write: 'Success'.