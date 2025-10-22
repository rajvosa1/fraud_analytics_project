create view vw_transactions_enriched as
   select t.*,
          c.*,
          a.*,
          m.*
     from transactions1 t
     join mapping p
   on t.transaction_id = p.transaction_id
     join a_accounts a
   on p.account_id = a.a_account_id
     join m_merchants m
   on p.merchant_id = m.m_merchant_id
     join c_customers c
   on a.a_customer_id = c.c_customer_id;