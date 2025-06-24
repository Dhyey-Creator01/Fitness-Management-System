-- triggers.sql
-- Trigger functions and definitions for Fitness DB

-- 1. Update member status on payment success
CREATE OR REPLACE FUNCTION update_member_status_on_payment() 
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'Success' THEN
    UPDATE "Member" 
    SET "status" = 'Active' 
    WHERE "member_id" = NEW.member_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER payment_success_trigger
AFTER INSERT ON "Payment"
FOR EACH ROW
EXECUTE FUNCTION update_member_status_on_payment();

-- 2. Notify user when payment is successful
CREATE OR REPLACE FUNCTION notify_user_on_payment_success() 
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'Success' THEN
    INSERT INTO "Notification" 
      ("user_id", "message", "notif_type", "timestamp", "is_read")
    VALUES (
      (SELECT "user_id" FROM "Member" WHERE "member_id" = NEW.member_id),
      'Your payment was successfully processed.',
      'Payment',
      CURRENT_TIMESTAMP,
      FALSE
    );
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER payment_notification_trigger
AFTER INSERT ON "Payment"
FOR EACH ROW
EXECUTE FUNCTION notify_user_on_payment_success();

-- 3. Update salary status on payment (if linked via another logic)
CREATE OR REPLACE FUNCTION update_salary_status_on_payment() 
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'Success' THEN
    UPDATE "Salary" 
    SET "status" = 'Paid'
    WHERE "salary_id" = NEW.salary_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER salary_payment_status_trigger
AFTER INSERT ON "Salary"
FOR EACH ROW
EXECUTE FUNCTION update_salary_status_on_payment();

-- 4. Auto-update BMI when height/weight change
CREATE OR REPLACE FUNCTION update_member_bmi() 
RETURNS TRIGGER AS $$
BEGIN
  NEW."BMI" := NEW.weight / ((NEW.height / 100) ^ 2);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_bmi_trigger
BEFORE UPDATE ON "Member"
FOR EACH ROW
EXECUTE FUNCTION update_member_bmi();
