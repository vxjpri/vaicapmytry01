namespace vaicap.db;

context master {
    entity BusinessPartners  {
        key node_key    :   String(32);
        bp_role         :   String(2);
        email_address   :   String(105);
        bp_id           :   String(32);
        company_name    :   String(256);
        address_guid    :   Association to one Address;
    }

    entity Address  {
        key node_key    :   String(32);
        street          :   String(105);
        city            :   String(105);
        country         :   String(40);
        building        :   String(105);
        address_type    :   String(40);
        bp              :   Association to one BusinessPartners on 
                            bp.address_guid = $self
    }

    entity Products  {
        key node_key    :   String(32);
        product_id      :   String(28);
        category        :   String(2);
        prod_desc       :   String(200);
        prod_name       :   localized String(200);
    }
}
