using {
    EPMDataModel.db.transaction as transaction,
    EPMDataModel.db.business as business
} from '../db/data-model';

service MyService @(path: 'busnessLogicServic') {
    entity BusinessPartnerSet as projection on business.businesspartner;
    entity POs                as projection on transaction.purchaseorder;
    entity AddressSet         as projection on business.address;
    entity ProductSet         as projection on business.product;
    entity POItems            as projection on transaction.poitems;
    entity EmployeeSet        as projection on business.employees;


}
