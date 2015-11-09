#### Results from impala!
#
create database gdelt location '/user/gdelt';
use gdelt;

create table events (  
  row_names STRING,
  GLOBALEVENTID BIGINT,
  SQLDATE BIGINT,
  MonthYear BIGINT,
  Year BIGINT,
  FractionDate FLOAT,
  Actor1Code STRING,
  Actor1Name STRING,
  Actor1CountryCode STRING,
  Actor1KnownGroupCode STRING,
  Actor1EthnicCode STRING,
  Actor1Religion1Code STRING,
  Actor1Religion2Code STRING,
  Actor1Type1Code STRING,
  Actor1Type2Code STRING,
  Actor1Type3Code STRING,
  Actor2Code STRING,
  Actor2Name STRING,
  Actor2CountryCode STRING,
  Actor2KnownGroupCode STRING,
  Actor2EthnicCode STRING,
  Actor2Religion1Code STRING,
  Actor2Religion2Code STRING,
  Actor2Type1Code STRING,
  Actor2Type2Code STRING,
  Actor2Type3Code STRING,
  IsRootEvent BIGINT,
  EventCode BIGINT,
  EventBaseCode BIGINT,
  EventRootCode BIGINT,
  QuadClass BIGINT,
  GoldsteinScale FLOAT,
  NumMentions BIGINT,
  NumSources BIGINT,
  NumArticles BIGINT,
  AvgTone FLOAT,
  Actor1Geo_Type BIGINT,
  Actor1Geo_FullName STRING,
  Actor1Geo_CountryCode STRING,
  Actor1Geo_ADM1Code STRING,
  Actor1Geo_Lat FLOAT,
  Actor1Geo_Long FLOAT,
  Actor1Geo_FeatureID STRING,
  Actor2Geo_Type BIGINT,
  Actor2Geo_FullName STRING,
  Actor2Geo_CountryCode STRING,
  Actor2Geo_ADM1Code STRING,
  Actor2Geo_Lat FLOAT,
  Actor2Geo_Long FLOAT,
  Actor2Geo_FeatureID STRING,
  ActionGeo_Type BIGINT,
  ActionGeo_FullName STRING,
  ActionGeo_CountryCode STRING,
  ActionGeo_ADM1Code STRING,
  ActionGeo_Lat FLOAT,
  ActionGeo_Long FLOAT,
  ActionGeo_FeatureID STRING,
  DATEADDED BIGINT,
  SOURCEURL STRING
)
row format delimited
fields terminated by '|'
stored as textfile;

select count(*) from events;
-- Query: select count(*) from events
-- +-----------+
-- | count(*)  |
-- +-----------+
-- | 130753485 |
-- +-----------+
-- Returned 1 row(s) in 25.56s
