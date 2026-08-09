-- ===================================================
-- Project: Enterprise Web Portal (EWP)
-- Module: Database Integrity Testing Scripts
-- Author: Sithija Thuda Hewage
-- ===================================================

-- 1. Verify User Registration Data & Password Hashing
SELECT 
    user_id, 
    email, 
    password_hash, 
    created_at, 
    status 
FROM users 
WHERE email = 'testuser@domain.com';


-- 2. Verify Role-Based Access Control (RBAC) Mapping
SELECT 
    u.user_id, 
    u.email, 
    r.role_name 
FROM users u
JOIN user_roles ur ON u.user_id = ur.user_id
JOIN roles r ON ur.role_id = r.role_id
WHERE u.email = 'testuser@domain.com';


-- 3. Verify Order Status & Payment Integrity
SELECT 
    o.order_id, 
    o.user_id, 
    o.total_amount, 
    p.payment_status 
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE o.order_id = 'ORD-9021';


-- 4. Check for Orphaned Records (Referential Integrity Test)
SELECT 
    o.order_id 
FROM orders o
LEFT JOIN users u ON o.user_id = u.user_id
WHERE u.user_id IS NULL;
