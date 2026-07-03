*&---------------------------------------------------------------------*
*& Report ZMV_S4H_TEST_CASE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMV_S4H_TEST_CASE.

DATA: STAWN TYPE MARC-STAWN,
      MTART TYPE MTART,
      EXPME TYPE MARC-EXPME,
      lvchar02 type char02,
      lv_vbtyp type vbtyp,
      lv_vbtyp_n type vbtyp_n,
      lv_vbtyp_v type vbtyp_v,
      lv_vakey type vakey.

Select * from  bseg INTO TABLE @DATA(lt_bseg)
          WHERE bukrs = '1000'.

SELECT SINGLE MTART from mara into MTART
     Where MTART = 'FERT'.

Write: 'Success'.
