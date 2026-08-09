# 🐛 Defect / Bug Report: EWP-104

**Title:** [Critical] User role fails to update in DB after successful payment status change  
**Issue Key:** EWP-104  
**Project:** Enterprise Web Portal (EWP)  
**Reported By:** Sithija Thuda Hewage (QA Engineer)  
**Date:** 2026-08-09  

 📌 Environment Details
* **Environment:** Staging / QA Environment (v2.4.1)
* **Browser:** Google Chrome (v126.0)
* **Database:** PostgreSQL (v15.2)


⚠️ Classification
* **Severity:** High (Core functionality / Business Logic failure)
* **Priority:** P1 - High (Requires immediate fix before release)


 🔄 Steps to Reproduce
1. Navigate to `https://staging.enterpriseportal.com/login` and log in with a `TRIAL_USER` account.
2. Select the "Premium Subscription Plan" and click **Checkout**.
3. Complete the checkout process using test credit card details via Stripe gateway.
4. Verify that the UI displays the successful payment message: `"Payment Successful! Welcome to Premium"`.
5. Execute the SQL Query on the DB: 
   `SELECT role_id FROM users WHERE email = 'testuser@domain.com';`


 🎯 Expected vs Actual Result

* **Expected Result:**  
  Upon successful payment confirmation, the backend should update the user's `role_id` in the `users` table from `1` (`TRIAL_USER`) to `2` (`PREMIUM_USER`).

* **Actual Result:**  
  The UI displays a success message, but the database `role_id` remains `1` (`TRIAL_USER`). As a result, the user cannot access Premium features.

📸 Proof of Concept / Evidence
* **Screenshot:** `assets/screenshots/payment_success_ui.png`
* **DB Query Snapshot:** `assets/screenshots/db_role_mismatch.png`
* **Log File:** `logs/payment_webhook_error.log`
