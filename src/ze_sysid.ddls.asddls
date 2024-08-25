@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View entity'
@Metadata.allowExtensions: true
define root view entity ZE_SYSID
  as select from zsd_sysid as sys
{

  key sys.objcode,
  key sys.sysid,
      sys.objvalue

}
