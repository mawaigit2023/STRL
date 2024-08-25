@AbapCatalog.sqlViewName: 'ZV_SALE_REG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sale registerr'

@ClientHandling.algorithm: #SESSION_VARIABLE
@Analytics: {
dataCategory: #CUBE,
internalName:#LOCAL
}
@ObjectModel: {
usageType: {
dataClass: #MIXED,
serviceQuality: #D,
sizeCategory: #XXL
},
supportedCapabilities: [ #ANALYTICAL_PROVIDER, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ],
modelingPattern: #ANALYTICAL_CUBE
}

define root view ZI_SALE_REG
  as select from ZI_SALE_REG_BASE as salereg

{

      @EndUserText.label: 'Company Code'
  key salereg.CompanyCode,
      @EndUserText.label: 'SAP Invoice Number'
  key salereg.BillingDocument,
      @EndUserText.label: 'Billing Item'
  key salereg.BillingDocumentItem,
      @EndUserText.label: 'Cancelled Invoice'
      salereg.BillingDocumentIsCancelled,
      @EndUserText.label: 'Billing Type'
      salereg.BillingDocumentType,
      @EndUserText.label: 'Currency'
      salereg.TransactionCurrency,
      @EndUserText.label: 'New Currency'
      salereg.TransCurr,
      @EndUserText.label: 'Exchange Rate'
      salereg.AccountingExchangeRate,
      @EndUserText.label: 'Purchase Order'
      salereg.PurchaseOrder,

      salereg.IncotermsLocation1,
      salereg.IncotermsLocation2,
      salereg.CustomerPriceGroup,
      salereg.MaterialDescriptionByCustomer,

      @EndUserText.label: 'Customer Material Code'
      salereg.MaterialByCustomer,

      salereg.CustomerPaymentTermsName,
      salereg.WeightUnit,
      salereg.GrossWeight,
      salereg.NetWeight,
      salereg.SizeOrDimensionText,
      salereg.ProductOldID,

      @EndUserText.label: 'Po_Number'
      salereg.PurchaseOrderByCustomer,
      @EndUserText.label: 'Po_date'
      salereg.CustomerPurchaseOrderDate,
      @EndUserText.label: 'SO_date'
      salereg.SalesDocumentDate,
      @EndUserText.label: 'SO Creation Date'
      salereg.CreationDate,

      salereg.DeliveryDocument,
      salereg.DeliveryDocumentItem,

      @EndUserText.label: 'Tax Invoice Date'
      salereg.BillingDocumentDate,
      salereg.billcreationdate,
      salereg.SDDocumentCategory,
      salereg.BillingDocumentCategory,
      salereg.SalesOrganization,
      salereg.DistributionChannel,
      salereg.DistributionChannelName,
      salereg.Division,
      salereg.SoldToParty,
      salereg.IncotermsClassification,
      salereg.CustomerPaymentTerms,

      salereg.SalesDocumentType,
      salereg.OrderQuantity,
      salereg.NetAmount,
      salereg.BillingDocumentTypeName,

      @EndUserText.label: 'Tax Invoice Number'
      salereg.DocumentReferenceID,
      //    salereg.YY1_ExportInvoiceNum_BDH,
      salereg.DOC_TYPE,

      @EndUserText.label: 'IRN'
      salereg.irn,
      @EndUserText.label: 'Ewaybill Number'
      salereg.ewbno,
      @EndUserText.label: 'Ack Number'
      salereg.ackno,
      @EndUserText.label: 'Ack Date'
      salereg.ackdt,
      @EndUserText.label: 'Accounting Document Number'
      salereg.AccountingDocument,
      salereg.PlantName,
      salereg.AddressID,
      salereg.AddresseeFullName,
      salereg.CityName,
      salereg.PostalCode,
      salereg.Street,
      salereg.StreetName,
      salereg.HouseNumber,
      salereg.Country,
      salereg.Region,
      salereg.FormOfAddress,
      salereg.PhoneAreaCodeSubscriberNumber,
      salereg.PLANT_GSTIN,
      salereg.PLANT_EMAIL,
      salereg.hsn,
      salereg.HSN_CODE,
      salereg.BillingDocumentItemText,
      salereg.BillingQuantity,
      salereg.BillingQuantityUnit,
      salereg.SalesDocument,
      salereg.SalesDocumentItem,
      salereg.ItemGrossWeight,
      salereg.StorageLocation,
      salereg.Plant,
      salereg.BaseUnit,
      salereg.TaxCode,
      salereg.SalesGroup,
      salereg.ShippingPoint,
      salereg.product,
      salereg.ship_to_party,
      salereg.WE_NAME,
      salereg.WE_CITY,
      salereg.WE_PIN,
      salereg.WE_STREET,
      salereg.WE_STREET1,
      salereg.WE_HOUSE_NO,
      salereg.WE_COUNTRY,
      salereg.WE_REGION,
      salereg.WE_FROM_OF_ADD,
      salereg.WE_TAX,
      salereg.WE_PAN,
      salereg.WE_EMAIL,
      salereg.WE_PHONE4,
      salereg.WE_StreetPrefixName1,
      salereg.WE_StreetPrefixName2,
      salereg.WE_StreetSuffixName1,
      salereg.sold_to_party,
      salereg.AG_NAME,
      salereg.AG_CITY,
      salereg.AG_PIN,
      salereg.AG_STREET,
      salereg.AG_STREET1,
      salereg.AG_HOUSE_NO,
      salereg.AG_COUNTRY,
      salereg.AG_REGION,
      salereg.AG_FROM_OF_ADD,
      salereg.AG_TAX,
      salereg.AG_PAN,
      salereg.AG_EMAIL,
      salereg.AG_PHONE4,
      salereg.AG_StreetPrefixName1,
      salereg.AG_StreetPrefixName2,
      salereg.AG_StreetSuffixName1,
      salereg.payer_code,
      salereg.RG_NAME,
      salereg.RG_CITY,
      salereg.RG_PIN,
      salereg.RG_STREET,
      salereg.RG_STREET1,
      salereg.RG_HOUSE_NO,
      salereg.RG_COUNTRY,
      salereg.RG_REGION,
      salereg.RG_FROM_OF_ADD,
      salereg.RG_TAX,
      salereg.RG_PAN,
      salereg.RG_EMAIL,
      salereg.RG_PHONE4,
      salereg.RG_StreetPrefixName1,
      salereg.RG_StreetPrefixName2,
      salereg.RG_StreetSuffixName1,
      salereg.bill_to_party,
      salereg.RE_NAME,
      salereg.RE_CITY,
      salereg.RE_PIN,
      salereg.RE_STREET,
      salereg.RE_STREET1,
      salereg.RE_HOUSE_NO,
      salereg.RE_COUNTRY,
      salereg.RE_REGION,
      salereg.RE_FROM_OF_ADD,
      salereg.RE_TAX,
      salereg.RE_PAN,
      salereg.RE_EMAIL,
      salereg.RE_PHONE4,
      salereg.RE_StreetPrefixName1,
      salereg.RE_StreetPrefixName2,
      salereg.RE_StreetSuffixName1,
      salereg.SP_code,
      salereg.SP_NAME,
      salereg.SP_CITY,
      salereg.SP_PIN,
      salereg.SP_STREET,
      salereg.SP_STREET1,
      salereg.SP_HOUSE_NO,
      salereg.SP_COUNTRY,
      salereg.SP_REGION,
      salereg.SP_FROM_OF_ADD,
      salereg.SP_TAX,
      salereg.SP_PAN,
      salereg.SP_EMAIL,
      salereg.SP_PHONE4,
      salereg.SP_StreetPrefixName1,
      salereg.SP_StreetPrefixName2,
      salereg.SP_StreetSuffixName1,
      salereg.ES_code,
      salereg.ES_NAME,
      salereg.ES_CITY,
      salereg.ES_PIN,
      salereg.ES_STREET,
      salereg.ES_STREET1,
      salereg.ES_HOUSE_NO,
      salereg.ES_COUNTRY,
      salereg.ES_REGION,
      salereg.ES_FROM_OF_ADD,
      salereg.ES_TAX,
      salereg.ES_PAN,
      salereg.ES_EMAIL,
      salereg.ES_PHONE4,
      salereg.ES_StreetPrefixName1,
      salereg.ES_StreetPrefixName2,
      salereg.ES_StreetSuffixName1,
      salereg.ConditionQuantity,
      salereg.ITEM_ASSESSABLEAMOUNT,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_ASSESSABLEAMOUNT_INR,
      salereg.ITEM_PKG_CHRG,
      salereg.ITEM_UNITPRICE,
      salereg.ITEM_DISCOUNTAMOUNT,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_DISCOUNTAMOUNT_INR,
      salereg.ITEM_FREIGHT,
      salereg.ITEM_AMOTIZATION,
      salereg.ITEM_OTHERCHARGE,
      salereg.ITEM_SGSTRATE,
      salereg.ITEM_CGSTRATE,
      salereg.ITEM_IGSTRATE,
      salereg.ITEM_SGSTAMOUNT,
      salereg.ITEM_CGSTAMOUNT,
      salereg.ITEM_IGSTAMOUNT,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_IGSTAMOUNT_INR,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_CGSTAMOUNT_INR,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_SGSTAMOUNT_INR,
      salereg.ITEM_TOTALAMOUNT,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_TOTALAMOUNT_INR,
      salereg.ITEM_GRANDTOTALAMOUNT,
      @Semantics.amount.currencyCode: 'TransCurr'
      salereg.ITEM_GRANDTOTALAMOUNT_INR,
      salereg.ITEM_LESS_AMMORTIZATION,
      salereg.ITEM_PCIP_AMT,
      salereg.ITEM_ROUNDOFF,
      salereg.ITEM_ZMRP_AMOUNT,
      salereg.ITEM_ZBAS_UNIT,
      salereg.ITEM_FERT_OTH,
      salereg.SUPPLY_TYPE

}
