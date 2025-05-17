namespace vaicap.commons;

type Guid : String(32);

type AmountT : Decimal(10, 2) @(
    Semantics.amount.currencycode : 'currency_code',
    sap.unit : 'currency_code'
);

aspect Amount {
    currency_code   : String(4);
    gross_amount    : AmountT;
    net_amount      : AmountT;
    tax_amount      : AmountT;
}


