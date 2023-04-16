DROP DATABASE IF EXISTS mydb_bdea;
CREATE DATABASE IF NOT EXISTS mydb_bdea;
USE mydb_bdea;

CREATE TABLE mydb_bdea.sleep_data(
  startDay VARCHAR(45),
  startTime VARCHAR(45) DEFAULT NULL,
  endDay VARCHAR(45) DEFAULT NULL,
  endTime VARCHAR(45) DEFAULT NULL,
  deepSleepSeconds VARCHAR(10) DEFAULT NULL,
  lightSleepSeconds VARCHAR(10) DEFAULT NULL,
  REMSleepSeconds VARCHAR(10) DEFAULT NULL,
  awakeSeconds VARCHAR(10) DEFAULT NULL,
  unmeasuredSeconds VARCHAR(10) DEFAULT NULL,
  awakeCount VARCHAR(10) DEFAULT NULL,
  averageRespRate VARCHAR(10) DEFAULT NULL,
  lowestRespRate VARCHAR(10) DEFAULT NULL,
  highestRespRate VARCHAR(10) DEFAULT NULL,
  overallScore VARCHAR(10) DEFAULT NULL,
  qualityScore VARCHAR(10) DEFAULT NULL,
  durationScore VARCHAR(10) DEFAULT NULL,
  recoveryScore VARCHAR(10) DEFAULT NULL,
  deepScore VARCHAR(10) DEFAULT NULL,
  REMScore VARCHAR(10) DEFAULT NULL,
  lightScore VARCHAR(10) DEFAULT NULL,
  awakeningsCountScore VARCHAR(10) DEFAULT NULL,
  awakeTimeScore VARCHAR(10) DEFAULT NULL,
  combinedAwakeScore VARCHAR(10) DEFAULT NULL,
  restfulnessScore VARCHAR(10) DEFAULT NULL, 
  interruptionsScore VARCHAR(10) DEFAULT NULL,
  sleepFeedback VARCHAR(100) DEFAULT 'No feedback',
  insight VARCHAR(100) DEFAULT 'No insight',
  RestingHeartRate VARCHAR(10) DEFAULT NULL,
  minAvgHeartRate VARCHAR(10) DEFAULT NULL,
  maxAvgHeartRate VARCHAR(10) DEFAULT NULL,
  AsleepAverageStressLevel VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (startDay, startTime))

-- Path: mariadb\init.sql




