@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View entity'
@Metadata.allowExtensions: true
define root view entity ZE_PACK_STD as select from zmm_pack_std as pack
{
    key pack.supplier as Supplier,
    key pack.material as Material,
    pack.qtyinbox as Qtyinbox
}
