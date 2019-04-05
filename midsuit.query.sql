COMMENT ON CONSTRAINT "adwfprocess_adwfprocess" ON "adempiere"."ad_wf_process" IS E'@fieldName adwfprocess_adwfprocess_cons';
COMMENT ON CONSTRAINT "adwfprocess_adwfprocess" ON "adempiere"."ad_wf_process" IS E'@fieldName adwfprocess_adwfprocess';

COMMENT ON CONSTRAINT "aduser_bbid" ON "adempiere"."b_bid" IS E'@fieldName ad_bbid';
COMMENT ON CONSTRAINT "bbuyer_bbid" ON "adempiere"."b_bid" IS E'@fieldName buyer_bbid';

COMMENT ON CONSTRAINT "aduser_bbuyerfunds" ON "adempiere"."b_buyerfunds" IS E'@fieldName user_buyerfunds';
COMMENT ON CONSTRAINT "bbuyer_bbuyerfunds" ON "adempiere"."b_buyerfunds" IS E'@fieldName buyer_buyerfunds';

COMMENT ON CONSTRAINT "aduser_bsellerfunds" ON "adempiere"."b_sellerfunds" IS E'@fieldName user_sellerfunds';
COMMENT ON CONSTRAINT "bseller_bsellerfunds" ON "adempiere"."b_sellerfunds" IS E'@fieldName seller_sellerfunds';

COMMENT ON CONSTRAINT "aduser_boffer" ON "adempiere"."b_offer" IS E'@fieldName user_offer';
COMMENT ON CONSTRAINT "bseller_boffer" ON "adempiere"."b_offer" IS E'@fieldName seller_offer';

COMMENT ON TABLE "adempiere"."c_country" IS E'@omit create';
COMMENT ON CONSTRAINT "ccountry_ccountry" ON "adempiere"."c_country" IS E'@fieldName ccountry_ccountry_cons\n@foreignSingleFieldName ccountry_ccountries';

COMMENT ON TABLE "adempiere"."k_entryrelated" IS E'@omit create';
COMMENT ON CONSTRAINT "kentry_kentryrelatedid" ON "adempiere"."k_entryrelated" IS E'@fieldName kentry_kentryrelatedid_cons';
