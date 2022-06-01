-- 
-- Copyright 2015 WSO2 Inc. (http://wso2.org)
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--     http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 

CREATE TABLE IF NOT EXISTS METRIC_GAUGE (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SOURCE VARCHAR(255) NOT NULL,
    TIMESTAMP BIGINT NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    METRIC_GAUGE VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS METRIC_COUNTER (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SOURCE VARCHAR(255) NOT NULL,
    TIMESTAMP BIGINT NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    COUNT BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS METRIC_METER (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SOURCE VARCHAR(255) NOT NULL,
    TIMESTAMP BIGINT NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    COUNT BIGINT NOT NULL,
    MEAN_RATE DOUBLE NOT NULL,
    M1_RATE DOUBLE NOT NULL,
    M5_RATE DOUBLE NOT NULL,
    M15_RATE DOUBLE NOT NULL,
    RATE_UNIT VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS METRIC_HISTOGRAM (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SOURCE VARCHAR(255) NOT NULL,
    TIMESTAMP BIGINT NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    COUNT BIGINT NOT NULL,
    MAX DOUBLE NOT NULL,
    MEAN DOUBLE NOT NULL,
    MIN DOUBLE NOT NULL,
    STDDEV DOUBLE NOT NULL,
    P50 DOUBLE NOT NULL,
    P75 DOUBLE NOT NULL,
    P95 DOUBLE NOT NULL,
    P98 DOUBLE NOT NULL,
    P99 DOUBLE NOT NULL,
    P999 DOUBLE NOT NULL
);

CREATE TABLE IF NOT EXISTS METRIC_TIMER (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SOURCE VARCHAR(255) NOT NULL,
    TIMESTAMP BIGINT NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    COUNT BIGINT NOT NULL,
    MAX DOUBLE NOT NULL,
    MEAN DOUBLE NOT NULL,
    MIN DOUBLE NOT NULL,
    STDDEV DOUBLE NOT NULL,
    P50 DOUBLE NOT NULL,
    P75 DOUBLE NOT NULL,
    P95 DOUBLE NOT NULL,
    P98 DOUBLE NOT NULL,
    P99 DOUBLE NOT NULL,
    P999 DOUBLE NOT NULL,
    MEAN_RATE DOUBLE NOT NULL,
    M1_RATE DOUBLE NOT NULL,
    M5_RATE DOUBLE NOT NULL,
    M15_RATE DOUBLE NOT NULL,
    RATE_UNIT VARCHAR(50) NOT NULL,
    DURATION_UNIT VARCHAR(50) NOT NULL
);

CREATE INDEX IDX_TIMESTAMP_GAUGE ON METRIC_GAUGE (TIMESTAMP);
CREATE INDEX IDX_TIMESTAMP_COUNTER ON METRIC_COUNTER (TIMESTAMP);
CREATE INDEX IDX_TIMESTAMP_METER ON METRIC_METER (TIMESTAMP);
CREATE INDEX IDX_TIMESTAMP_HISTOGRAM ON METRIC_HISTOGRAM (TIMESTAMP);
CREATE INDEX IDX_TIMESTAMP_TIMER ON METRIC_TIMER (TIMESTAMP);
