RENAME TABLE midata.`.inner.mi_visit_local` to midata.`.inner.mi_visit_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_local` to midata.`.inner.web_visit_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_action_local` to midata.`.inner.mi_action_local_bak_1108`;

RENAME TABLE midata.`.inner.web_action_local` to midata.`.inner.web_action_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_action_agg_customer_1m_local` to midata.`.inner.mi_action_agg_customer_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_action_agg_customer_1m_local` to midata.`.inner.web_action_agg_customer_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_http_local` to midata.`.inner.mi_http_local_bak_1108`;

RENAME TABLE midata.`.inner.web_http_local` to midata.`.inner.web_http_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_http_agg_customer_1m_local` to midata.`.inner.mi_http_agg_customer_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_http_agg_customer_1m_local` to midata.`.inner.web_http_agg_customer_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_1m_local` to midata.`.inner.mi_visit_agg_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_1m_local` to midata.`.inner.web_visit_agg_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_1h_local` to midata.`.inner.mi_visit_agg_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_1h_local` to midata.`.inner.web_visit_agg_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_1d_local` to midata.`.inner.mi_visit_agg_1d_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_1d_local` to midata.`.inner.web_visit_agg_1d_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_app_1m_local` to midata.`.inner.mi_visit_agg_app_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_app_1m_local` to midata.`.inner.web_visit_agg_app_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_app_1h_local` to midata.`.inner.mi_visit_agg_app_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_app_1h_local` to midata.`.inner.web_visit_agg_app_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_app_version_1m_local` to midata.`.inner.mi_visit_agg_app_version_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_app_version_1m_local` to midata.`.inner.web_visit_agg_app_version_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_app_version_1h_local` to midata.`.inner.mi_visit_agg_app_version_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_app_version_1h_local` to midata.`.inner.web_visit_agg_app_version_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_device_1m_local` to midata.`.inner.mi_visit_agg_device_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_device_1m_local` to midata.`.inner.web_visit_agg_device_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_device_1h_local` to midata.`.inner.mi_visit_agg_device_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_device_1h_local` to midata.`.inner.web_visit_agg_device_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_geo_1m_local` to midata.`.inner.mi_visit_agg_geo_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_geo_1m_local` to midata.`.inner.web_visit_agg_geo_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_geo_1h_local` to midata.`.inner.mi_visit_agg_geo_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_geo_1h_local` to midata.`.inner.web_visit_agg_geo_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_os_1m_local` to midata.`.inner.mi_visit_agg_os_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_os_1m_local` to midata.`.inner.web_visit_agg_os_1m_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_visit_agg_os_1h_local` to midata.`.inner.mi_visit_agg_os_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.web_visit_agg_os_1h_local` to midata.`.inner.web_visit_agg_os_1h_local_bak_1108`;

RENAME TABLE midata.`.inner.crash_local` to midata.`.inner.crash_local_bak_1108`;

RENAME TABLE midata.`.inner.anr_local` to midata.`.inner.anr_local_bak_1108`;

RENAME TABLE midata.`.inner.dns_local` to midata.`.inner.dns_local_bak_1108`;

RENAME TABLE midata.`.inner.socket_local` to midata.`.inner.socket_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_customer_agg_1d_local` to midata.`.inner.mi_customer_agg_1d_local_bak_1108`;

RENAME TABLE midata.`.inner.mi_active_device_agg_1d_local` to midata.`.inner.mi_active_device_agg_1d_local_bak_1108`;

RENAME TABLE midata.`.inner.view_loading_local` to midata.`.inner.view_loading_local_bak_1108`;

drop table if exists midata.mi_visit_local;

drop table if exists midata.web_visit_local;

drop table if exists midata.mi_action_local;

drop table if exists midata.web_action_local;

drop table if exists midata.mi_action_agg_customer_1m_local;

drop table if exists midata.web_action_agg_customer_1m_local;

drop table if exists midata.mi_http_local;

drop table if exists midata.web_http_local;

drop table if exists midata.mi_http_agg_customer_1m_local;

drop table if exists midata.web_http_agg_customer_1m_local;

drop table if exists midata.mi_visit_agg_1m_local;

drop table if exists midata.web_visit_agg_1m_local;

drop table if exists midata.mi_visit_agg_1h_local;

drop table if exists midata.web_visit_agg_1h_local;

drop table if exists midata.mi_visit_agg_1d_local;

drop table if exists midata.web_visit_agg_1d_local;

drop table if exists midata.mi_visit_agg_app_1m_local;

drop table if exists midata.web_visit_agg_app_1m_local;

drop table if exists midata.mi_visit_agg_app_1h_local;

drop table if exists midata.web_visit_agg_app_1h_local;

drop table if exists midata.mi_visit_agg_app_version_1m_local;

drop table if exists midata.web_visit_agg_app_version_1m_local;

drop table if exists midata.mi_visit_agg_app_version_1h_local;

drop table if exists midata.web_visit_agg_app_version_1h_local;

drop table if exists midata.mi_visit_agg_device_1m_local;

drop table if exists midata.web_visit_agg_device_1m_local;

drop table if exists midata.mi_visit_agg_device_1h_local;

drop table if exists midata.web_visit_agg_device_1h_local;

drop table if exists midata.mi_visit_agg_geo_1m_local;

drop table if exists midata.web_visit_agg_geo_1m_local;

drop table if exists midata.mi_visit_agg_geo_1h_local;

drop table if exists midata.web_visit_agg_geo_1h_local;

drop table if exists midata.mi_visit_agg_os_1m_local;

drop table if exists midata.web_visit_agg_os_1m_local;

drop table if exists midata.mi_visit_agg_os_1h_local;

drop table if exists midata.web_visit_agg_os_1h_local;

drop table if exists midata.crash_local;

drop table if exists midata.anr_local;

drop table if exists midata.dns_local;

drop table if exists midata.socket_local;

drop table if exists midata.mi_customer_agg_1d_local;

drop table if exists midata.mi_active_device_agg_1d_local;

drop table if exists midata.view_loading_local;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_local (
uuid String,
app_id Int64,
app_version_id Int64,
agent_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
customer_name String,
device_uuid String,
visit_status Int64,
first_visit_time Int64,
latest_visit_time Int64,
action_count Int64,
http_count Int64,
http_error_count Int64,
crash_count Int64,
anr_count Int64,
slow_count Int64,
timestamp Int64,
ch_start_date Date
  ,INDEX mi_visit_local_index(app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
)
ENGINE = MergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, customer_name, device_uuid, app_version_id, uuid, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id, visit_status)
SETTINGS index_granularity = 8192
AS SELECT
uuid,
app_id,
app_version_id,
agent_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
customer_name,
device_uuid,
visit_status,
first_visit_time,
latest_visit_time,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
timestamp,
ch_start_date
FROM midata.mi_visit_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_local (
uuid String,
app_id Int64,
app_version_id Int64,
agent_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
customer_name String,
device_uuid String,
visit_status Int64,
first_visit_time Int64,
latest_visit_time Int64,
action_count Int64,
http_count Int64,
http_error_count Int64,
crash_count Int64,
anr_count Int64,
slow_count Int64,
timestamp Int64,
ch_start_date Date
  ,INDEX web_visit_local_index(app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  )
ENGINE = MergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id, uuid)
SETTINGS index_granularity = 8192
AS SELECT
uuid,
app_id,
app_version_id,
agent_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
customer_name,
device_uuid,
visit_status,
first_visit_time,
latest_visit_time,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
timestamp,
ch_start_date
FROM midata.web_visit_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_action_local (
  uuid String,
  visit_id String,
  app_id Int64,
  app_version_id Int64,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  action_type Int64,
  action_name String,
  view_name String,
  is_slow Int64,
  customer_name String,
  device_uuid String,
  start_time Int64,
  end_time Int64,
  duration Int64,
  cpu Float64,
  mem Int64,
  battery Int64,
  visit_start_time Int64,
  http_total_count Int64,
  http_error_count Int64,
  http_slow_count Int64,
  http_bytes_sent Int64,
  http_bytes_received Int64,
  view_loading_time Int64,
  view_loading_count Int64,
  view_loading_slow_count Int64,
  timestamp Int64,
  ch_start_date Date
  ,INDEX mi_action_local_index(app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, action_name, view_name, action_type, is_slow, visit_id, uuid, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            uuid,
            visit_id,
            app_id,
            app_version_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            action_type,
            action_name,
            view_name,
            is_slow,
            customer_name,
            device_uuid,
            start_time,
            end_time,
            duration,
            cpu,
            mem,
            battery,
            visit_start_time,
            http_total_count,
            http_error_count,
            http_slow_count,
            http_bytes_sent,
            http_bytes_received,
            view_loading_time,
            view_loading_count,
            view_loading_slow_count,
            timestamp,
            ch_start_date
  FROM midata.mi_action_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_action_local (
  uuid String,
  visit_id String,
  app_id Int64,
  app_version_id Int64,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  action_type Int64,
  action_name String,
  view_name String,
  is_slow Int64,
  customer_name String,
  device_uuid String,
  start_time Int64,
  end_time Int64,
  duration Int64,
  cpu Float64,
  mem Int64,
  battery Int64,
  visit_start_time Int64,
  http_total_count Int64,
  http_error_count Int64,
  http_slow_count Int64,
  http_bytes_sent Int64,
  http_bytes_received Int64,
  view_loading_time Int64,
  view_loading_count Int64,
  view_loading_slow_count Int64,
  timestamp Int64,
  ch_start_date Date,
  browser_id Int64,
  ip String
   ,INDEX web_action_local_index(app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id, uuid)
  SETTINGS index_granularity = 8192
  AS SELECT
            uuid,
            visit_id,
            app_id,
            app_version_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            action_type,
            action_name,
            view_name,
            is_slow,
            customer_name,
            device_uuid,
            start_time,
            end_time,
            duration,
            cpu,
            mem,
            battery,
            visit_start_time,
            http_total_count,
            http_error_count,
            http_slow_count,
            http_bytes_sent,
            http_bytes_received,
            view_loading_time,
            view_loading_count,
            view_loading_slow_count,
            timestamp,
            ch_start_date,
            browser_id,
            ip
  FROM midata.web_action_insert;


CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_action_agg_customer_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  customer_name String,
  device_uuid String,
  action_type Int64,
  action_name String,
  view_name String,
  ch_start_date Date,
  timestamp UInt64,
  duration AggregateFunction(sum, Int64),
  error_count AggregateFunction(countIf, UInt8),
  slow_count AggregateFunction(sum, Int64),
  total_count AggregateFunction(count),
  bytes_sent AggregateFunction(sum, Int64),
  bytes_received AggregateFunction(sum, Int64)
  ,INDEX mi_action_agg_customer_1m_local_index(app_id,app_version_id,os_id,carrier_id, device_id, country_id, region_id, city_id,action_type,customer_name, device_uuid) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, customer_name, device_uuid, timestamp, action_type, app_version_id, os_id, carrier_id, device_id, country_id, region_id, city_id, action_name, view_name)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            customer_name,
            device_uuid,
            action_type,
            action_name,
            view_name,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            sumState(duration) AS duration,
            countIfState(http_error_count > 0) AS error_count,
            sumState(is_slow) AS slow_count,
            countState() AS total_count,
            sumState(http_bytes_sent) AS bytes_sent,
            sumState(http_bytes_received) AS bytes_received
  FROM midata.mi_action_insert
  GROUP BY app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, action_type, action_name, view_name, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_action_agg_customer_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  customer_name String,
  device_uuid String,
  action_type Int64,
  action_name String,
  view_name String,
  ch_start_date Date,
  timestamp UInt64,
  duration AggregateFunction(sum, Int64),
  error_count AggregateFunction(countIf, UInt8),
  slow_count AggregateFunction(sum, Int64),
  total_count AggregateFunction(count),
  bytes_sent AggregateFunction(sum, Int64),
  bytes_received AggregateFunction(sum, Int64),
  action_count AggregateFunction(count),
  view_loading_time AggregateFunction(sum, Int64),
  view_loading_count AggregateFunction(sum, Int64),
  view_loading_slow_count AggregateFunction(sum, Int64)
  ,INDEX web_action_agg_customer_1m_local_index(app_id,app_version_id,os_id,device_id,country_id,region_id,city_id,carrier_id,action_type,customer_name,device_uuid) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, customer_name, device_uuid, action_type, app_version_id, os_id, carrier_id, device_id, country_id, region_id, city_id, action_name, view_name)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            customer_name,
            device_uuid,
            action_type,
            action_name,
            view_name,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            sumState(duration) AS duration,
            countIfState(http_error_count > 0) AS error_count,
            sumState(is_slow) AS slow_count,
            countState() AS total_count,
            sumState(http_bytes_sent) AS bytes_sent,
            sumState(http_bytes_received) AS bytes_received,
            countState() AS action_count,
            sumState(view_loading_time) AS view_loading_time,
            sumState(view_loading_count) AS view_loading_count,
            sumState(view_loading_slow_count) AS view_loading_slow_count
  FROM midata.web_action_insert
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, customer_name, device_uuid, action_type, action_name, view_name, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_http_local (
  uuid String,
  visit_id String,
  action_id String,
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  agent_id Int64,
  customer_name String,
  device_uuid String,
  initiator Int64,
  seq_id Int64,
  url String,
  host String,
  path String,
  method String,
  status_code Int64,
  error_code Int64,
  bytes_sent Int64,
  bytes_received Int64,
  start_time Int64,
  duration Int64,
  first_byte_duration Int64,
  error_msg String,
  request_header String,
  request_params String,
  response_header String,
  response_msg String,
  server_duration Int64,
  server_guid String,
  server_transaction_name String,
  server_application_id Int64,
  server_browser_key String,
  is_self_owned Int64,
  is_slow Int64,
  visit_start_time Int64,
  total_count Int64,
  timestamp Int64,
  ch_start_date Date
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, is_slow, host, path, action_id, error_code, is_self_owned)
  SETTINGS index_granularity = 8192
  AS SELECT
            uuid,
            visit_id,
            action_id,
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            agent_id,
            customer_name,
            device_uuid,
            initiator,
            seq_id,
            url,
            host,
            path,
            method,
            status_code,
            error_code,
            bytes_sent,
            bytes_received,
            start_time,
            duration,
            first_byte_duration,
            error_msg,
            request_header,
            request_params,
            response_header,
            response_msg,
            server_duration,
            server_guid,
            server_transaction_name,
            server_application_id,
            server_browser_key,
            is_self_owned,
            is_slow,
            visit_start_time,
            total_count,
            timestamp,
            ch_start_date
  FROM midata.mi_http_insert;


CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_http_local (
  uuid String,
  visit_id String,
  action_id String,
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  agent_id Int64,
  customer_name String,
  device_uuid String,
  initiator Int64,
  seq_id Int64,
  url String,
  host String,
  path String,
  method String,
  status_code Int64,
  error_code Int64,
  bytes_sent Int64,
  bytes_received Int64,
  start_time Int64,
  duration Int64,
  first_byte_duration Int64,
  error_msg String,
  request_header String,
  request_params String,
  response_header String,
  response_msg String,
  server_duration Int64,
  server_guid String,
  server_transaction_name String,
  server_application_id Int64,
  server_browser_key String,
  is_self_owned Int64,
  is_slow Int64,
  visit_start_time Int64,
  total_count Int64,
  timestamp Int64,
  ch_start_date Date
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id, uuid)
  SETTINGS index_granularity = 8192
  AS SELECT
            uuid,
            visit_id,
            action_id,
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            agent_id,
            customer_name,
            device_uuid,
            initiator,
            seq_id,
            url,
            host,
            path,
            method,
            status_code,
            error_code,
            bytes_sent,
            bytes_received,
            start_time,
            duration,
            first_byte_duration,
            error_msg,
            request_header,
            request_params,
            response_header,
            response_msg,
            server_duration,
            server_guid,
            server_transaction_name,
            server_application_id,
            server_browser_key,
            is_self_owned,
            is_slow,
            visit_start_time,
            total_count,
            timestamp,
            ch_start_date
  FROM midata.web_http_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_http_agg_customer_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  initiator Int64,
  host String,
  path String,
  customer_name String,
  device_uuid String,
  status_code Int64,
  error_code Int64,
  is_self_owned Int64,
  ch_start_date Date,
  timestamp UInt64,
  duration AggregateFunction(sum, Int64),
  first_byte_duration AggregateFunction(sum, Int64),
  total_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(countIf, UInt8),
  bytes_sent AggregateFunction(sum, Int64),
  bytes_received AggregateFunction(sum, Int64),
  server_duration AggregateFunction(sum, Int64),
  total_count_with_server_duration AggregateFunction(countIf, UInt8)
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, customer_name, device_uuid, timestamp, host, path, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, status_code, error_code, is_self_owned, initiator)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            initiator,
            host,
            path,
            customer_name,
            device_uuid,
            status_code,
            error_code,
            is_self_owned,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            sumState(duration) AS duration,
            sumState(first_byte_duration) AS first_byte_duration,
            sumState(total_count) AS total_count,
            countIfState(is_slow > 0) AS slow_count,
            sumState(bytes_sent) AS bytes_sent,
            sumState(bytes_received) AS bytes_received,
            sumState(server_duration) AS server_duration,
            countIfState(server_guid != '') AS total_count_with_server_duration
  FROM midata.mi_http_insert
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, initiator, host, path, customer_name, device_uuid, status_code, error_code, is_self_owned, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_http_agg_customer_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  initiator Int64,
  host String,
  path String,
  method String,
  status_code Int64,
  error_code Int64,
  is_self_owned Int64,
  customer_name String,
  device_uuid String,
  ch_start_date Date,
  timestamp UInt64,
  duration AggregateFunction(sum, Int64),
  first_byte_duration AggregateFunction(sum, Int64),
  total_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(countIf, UInt8),
  bytes_sent AggregateFunction(sum, Int64),
  bytes_received AggregateFunction(sum, Int64),
  server_duration AggregateFunction(sum, Int64),
  total_count_with_server_duration AggregateFunction(countIf, UInt8)
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, customer_name, device_uuid, is_self_owned, host, app_version_id, os_id, carrier_id, country_id, region_id, city_id, device_id, status_code, error_code, path, method)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            initiator,
            host,
            path,
            method,
            status_code,
            error_code,
            is_self_owned,
            customer_name,
            device_uuid,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            sumState(duration) AS duration,
            sumState(first_byte_duration) AS first_byte_duration,
            sumState(total_count) AS total_count,
            countIfState(is_slow = 1) AS slow_count,
            sumState(bytes_sent) AS bytes_sent,
            sumState(bytes_received) AS bytes_received,
            sumState(server_duration) AS server_duration,
            countIfState(server_guid != '') AS total_count_with_server_duration
  FROM midata.web_http_insert
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, host, path, method, status_code, error_code, is_self_owned, initiator, customer_name, device_uuid, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_1m_local (
app_id Int64,
app_version_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
ch_start_date Date,
timestamp UInt64,
visit_count AggregateFunction(uniq, String),
customer_count AggregateFunction(uniq, String),
device_uuid_count AggregateFunction(uniq, String),
action_count AggregateFunction(sum, Int64),
http_count AggregateFunction(sum, Int64),
http_error_count AggregateFunction(sum, Int64),
crash_count AggregateFunction(sum, Int64),
anr_count AggregateFunction(sum, Int64),
slow_count AggregateFunction(sum, Int64),
http_third_count AggregateFunction(sum, Int64)
   ,INDEX mi_visit_agg_1m_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  )
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, timestamp, app_version_id, os_id, device_id, carrier_id, country_id, region_id, city_id)
SETTINGS index_granularity = 8192
AS SELECT
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
uniqState(uuid) AS visit_count,
uniqState(customer_name) AS customer_count,
uniqState(device_uuid) AS device_uuid_count,
sumState(action_count) AS action_count,
sumState(http_count) AS http_count,
sumState(http_error_count) AS http_error_count,
sumState(crash_count) AS crash_count,
sumState(anr_count) AS anr_count,
sumState(slow_count) AS slow_count,
sumState(http_third_count) AS http_third_count
FROM midata.mi_visit_insert
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_1m_local (
app_id Int64,
app_version_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
ch_start_date Date,
timestamp UInt64,
visit_count AggregateFunction(uniq, String),
customer_count AggregateFunction(uniq, String),
device_uuid_count AggregateFunction(uniq, String),
action_count AggregateFunction(sum, Int64),
http_count AggregateFunction(sum, Int64),
http_error_count AggregateFunction(sum, Int64),
crash_count AggregateFunction(sum, Int64),
anr_count AggregateFunction(sum, Int64),
slow_count AggregateFunction(sum, Int64),
http_third_count AggregateFunction(sum, Int64)
,INDEX web_visit_agg_1m_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
) ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, timestamp, app_version_id, os_id, device_id, carrier_id, country_id, region_id, city_id)
SETTINGS index_granularity = 8192
AS SELECT
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
uniqState(uuid) AS visit_count,
uniqState(customer_name) AS customer_count,
uniqState(device_uuid) AS device_uuid_count,
sumState(action_count) AS action_count,
sumState(http_count) AS http_count,
sumState(http_error_count) AS http_error_count,
sumState(crash_count) AS crash_count,
sumState(anr_count) AS anr_count,
sumState(slow_count) AS slow_count,
sumState(http_third_count) AS http_third_count
FROM midata.web_visit_insert
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_1h_local (
app_id Int64,
app_version_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
ch_start_date Date,
timestamp UInt64,
visit_count AggregateFunction(uniq, String),
customer_count AggregateFunction(uniq, String),
device_uuid_count AggregateFunction(uniq, String),
action_count AggregateFunction(sum, Int64),
http_count AggregateFunction(sum, Int64),
http_error_count AggregateFunction(sum, Int64),
crash_count AggregateFunction(sum, Int64),
anr_count AggregateFunction(sum, Int64),
slow_count AggregateFunction(sum, Int64),
http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_1h_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
) ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, timestamp, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id)
SETTINGS index_granularity = 8192
AS SELECT
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
uniqMergeState(visit_count) AS visit_count,
uniqMergeState(customer_count) AS customer_count,
uniqMergeState(device_uuid_count) AS device_uuid_count,
sumMergeState(action_count) AS action_count,
sumMergeState(http_count) AS http_count,
sumMergeState(http_error_count) AS http_error_count,
sumMergeState(crash_count) AS crash_count,
sumMergeState(anr_count) AS anr_count,
sumMergeState(slow_count) AS slow_count,
sumMergeState(http_third_count) AS http_third_count
FROM midata.mi_visit_agg_1m_local
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_1h_local (
app_id Int64,
app_version_id Int64,
os_id Int64,
device_id Int64,
country_id Int64,
region_id Int64,
city_id Int64,
carrier_id Int64,
ch_start_date Date,
timestamp UInt64,
visit_count AggregateFunction(uniq, String),
customer_count AggregateFunction(uniq, String),
device_uuid_count AggregateFunction(uniq, String),
action_count AggregateFunction(sum, Int64),
http_count AggregateFunction(sum, Int64),
http_error_count AggregateFunction(sum, Int64),
crash_count AggregateFunction(sum, Int64),
anr_count AggregateFunction(sum, Int64),
slow_count AggregateFunction(sum, Int64),
http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_1h_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
) ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMMDD(ch_start_date)
order by (app_id, timestamp, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id)
SETTINGS index_granularity = 8192
AS SELECT
          app_id,
          app_version_id,
          os_id,
          device_id,
          country_id,
          region_id,
          city_id,
          carrier_id,
          ch_start_date,
          toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
          uniqMergeState(visit_count) AS visit_count,
          uniqMergeState(customer_count) AS customer_count,
          uniqMergeState(device_uuid_count) AS device_uuid_count,
          sumMergeState(action_count) AS action_count,
          sumMergeState(http_count) AS http_count,
          sumMergeState(http_error_count) AS http_error_count,
          sumMergeState(crash_count) AS crash_count,
          sumMergeState(anr_count) AS anr_count,
          sumMergeState(slow_count) AS slow_count,
          sumMergeState(http_third_count) AS http_third_count
FROM midata.web_visit_agg_1m_local
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_1d_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_1d_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            ch_start_date,
            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1h_local
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_1d_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_1d_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            ch_start_date,
            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1h_local
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_app_1m_local (
  app_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_app_1m_local_index(app_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_app_1m_local (
  app_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX web_visit_agg_app_1m_local_index(app_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_app_1h_local (
  app_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX mi_visit_agg_app_1h_local_index(app_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_app_1h_local (
  app_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX web_visit_agg_app_1h_local_index(app_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_app_version_1m_local (
  app_id Int64,
  app_version_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX mi_visit_agg_app_version_1m_local_index(app_id, app_version_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, app_version_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_app_version_1m_local (
  app_id Int64,
  app_version_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
   ,INDEX web_visit_agg_app_version_1m_local_index(app_id, app_version_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, app_version_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_app_version_1h_local (
  app_id Int64,
  app_version_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
   ,INDEX mi_visit_agg_app_version_1h_local_index(app_id, app_version_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_app_version_1m_local
  GROUP BY app_id, app_version_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_app_version_1h_local (
  app_id Int64,
  app_version_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
   ,INDEX web_visit_agg_app_version_1h_local_index(app_id, app_version_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_app_version_1m_local
  GROUP BY app_id, app_version_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_device_1m_local (
  app_id Int64,
  device_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
   ,INDEX mi_visit_agg_device_1m_local_index(app_id,device_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, device_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            device_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, device_id, ch_start_date, timestamp;


CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_device_1m_local (
  app_id Int64,
  device_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_device_1m_local_index(app_id,device_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, device_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            device_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, device_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_device_1h_local (
  app_id Int64,
  device_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_device_1h_local_index(app_id,device_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, device_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            device_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_device_1m_local
  GROUP BY app_id, device_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_device_1h_local (
  app_id Int64,
  device_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_device_1h_local_index(app_id,device_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, device_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            device_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_device_1m_local
  GROUP BY app_id, device_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_geo_1m_local (
  app_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_geo_1m_local_index(app_id,country_id, region_id, city_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, country_id, region_id, city_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            country_id,
            region_id,
            city_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, country_id, region_id, city_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_geo_1m_local (
  app_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX web_visit_agg_geo_1m_local_index(app_id,country_id, region_id, city_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
    PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, country_id, region_id, city_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            country_id,
            region_id,
            city_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, country_id, region_id, city_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_geo_1h_local (
  app_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX mi_visit_agg_geo_1h_local_index(app_id,country_id, region_id, city_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, country_id, region_id, city_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            country_id,
            region_id,
            city_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_geo_1m_local
  GROUP BY app_id, country_id, region_id, city_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_geo_1h_local (
  app_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX web_visit_agg_geo_1h_local_index(app_id,country_id, region_id, city_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, country_id, region_id, city_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            country_id,
            region_id,
            city_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_geo_1m_local
  GROUP BY app_id, country_id, region_id, city_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_os_1m_local (
  app_id Int64,
  os_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
    ,INDEX mi_visit_agg_os_1m_local_index(app_id,os_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, os_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            os_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_1m_local
  GROUP BY app_id, os_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_os_1m_local (
  app_id Int64,
  os_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_os_1m_local_index(app_id,os_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, os_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            os_id,
            ch_start_date,
            timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_1m_local
  GROUP BY app_id, os_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_visit_agg_os_1h_local (
  app_id Int64,
  os_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX mi_visit_agg_os_1h_local_index(app_id,os_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, os_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            os_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.mi_visit_agg_os_1m_local
  GROUP BY app_id, os_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.web_visit_agg_os_1h_local (
  app_id Int64,
  os_id Int64,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  customer_count AggregateFunction(uniq, String),
  device_uuid_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  anr_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  http_third_count AggregateFunction(sum, Int64)
  ,INDEX web_visit_agg_os_1h_local_index(app_id,os_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
   PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, os_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            os_id,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000 * 60) * (60000 * 60)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(customer_count) AS customer_count,
            uniqMergeState(device_uuid_count) AS device_uuid_count,
            sumMergeState(action_count) AS action_count,
            sumMergeState(http_count) AS http_count,
            sumMergeState(http_error_count) AS http_error_count,
            sumMergeState(crash_count) AS crash_count,
            sumMergeState(anr_count) AS anr_count,
            sumMergeState(slow_count) AS slow_count,
            sumMergeState(http_third_count) AS http_third_count
  FROM midata.web_visit_agg_os_1m_local
  GROUP BY app_id, os_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.crash_local (
  app_id Int64,
  app_version_id Int64,
  visit_id String,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  customer_name String,
  device_uuid String,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  uuid String,
  mem_available Int64,
  battery Int64,
  ui_orientation String,
  carrier String,
  crash_type String,
  mobile_app_name String,
  file_name String,
  class_name String,
  method_name String,
  line_number Int64,
  threads String,
  crash_log String,
  cause String,
  location String,
  running_apps String,
  cpu Float64,
  memory Int64,
  hard_disk Int64,
  is_symbol Int64,
  visit_start_time Int64,
  crash_time Int64,
  timestamp Int64,
  ch_start_date Date
  ,INDEX crash_local_index(app_id,app_version_id, agent_id, os_id, device_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, crash_type, class_name, line_number, visit_id, app_version_id, agent_id, os_id, device_id, customer_name, device_uuid, region_id, city_id, carrier_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            visit_id,
            agent_id,
            os_id,
            device_id,
            customer_name,
            device_uuid,
            country_id,
            region_id,
            city_id,
            carrier_id,
            uuid,
            mem_available,
            battery,
            ui_orientation,
            carrier,
            crash_type,
            mobile_app_name,
            file_name,
            class_name,
            method_name,
            line_number,
            threads,
            crash_log,
            cause,
            location,
            running_apps,
            cpu,
            memory,
            hard_disk,
            is_symbol,
            visit_start_time,
            crash_time,
            timestamp,
            ch_start_date
  FROM midata.crash_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.anr_local (
  uuid String,
  app_id Int64,
  app_version_id Int64,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  visit_id String,
  customer_name String,
  device_uuid String,
  occur_package String,
  occur_location String,
  message String,
  description String,
  mobile_app_name String,
  anr_thread String,
  other_threads String,
  trace String,
  cpu Float64,
  memory Int64,
  memory_available Int64,
  hard_disk Int64,
  root Int64,
  visit_start_time Int64,
  anr_time Int64,
  timestamp Int64,
  ch_start_date Date
  ,INDEX anr_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, description, occur_location, visit_id, uuid, app_version_id, os_id, device_id, country_id, region_id, carrier_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            uuid,
            app_id,
            app_version_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            visit_id,
            customer_name,
            device_uuid,
            occur_package,
            occur_location,
            message,
            description,
            mobile_app_name,
            anr_thread,
            other_threads,
            trace,
            cpu,
            memory,
            memory_available,
            hard_disk,
            root,
            visit_start_time,
            anr_time,
            timestamp,
            ch_start_date
  FROM midata.anr_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.socket_local (
  app_id Int64,
  app_version_id Int64,
  visit_id String,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  customer_name String,
  device_uuid String,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  action_id String,
  uuid String,
  ui_orientation String,
  domain String,
  ip String,
  port String,
  connect_time Int64,
  dns_time Int64,
  read_time Int64,
  write_time Int64,
  bytes_sent Int64,
  bytes_received Int64,
  connect_count Int64,
  read_count Int64,
  write_count Int64,
  error_count Int64,
  slow_count Int64,
  is_slow Int64,
  is_error Int64,
  connect_info String,
  dns_info String,
  read_info String,
  write_info String,
  exception_info String,
  start_time Int64,
  end_time Int64,
  timestamp Int64,
  ch_start_date Date
  ,INDEX socket_local_index(app_id,app_version_id, visit_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, ip, port, app_version_id, visit_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            visit_id,
            agent_id,
            os_id,
            device_id,
            customer_name,
            device_uuid,
            country_id,
            region_id,
            city_id,
            carrier_id,
            action_id,
            uuid,
            ui_orientation,
            domain,
            ip,
            port,
            connect_time,
            dns_time,
            read_time,
            write_time,
            bytes_sent,
            bytes_received,
            connect_count,
            read_count,
            write_count,
            error_count,
            slow_count,
            is_slow,
            is_error,
            connect_info,
            dns_info,
            read_info,
            write_info,
            exception_info,
            start_time,
            end_time,
            timestamp,
            ch_start_date
  FROM midata.socket_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.dns_local (
  app_id Int64,
  app_version_id Int64,
  visit_id String,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  uuid String,
  domain String,
  ip_address String,
  duration Float64,
  error_code Int64,
  error_description String,
  timestamp Int64,
  ch_start_date Date
  ,INDEX dns_local_index(app_id,app_version_id, visit_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id) TYPE minmax GRANULARITY 3
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, domain, ip_address, app_version_id, visit_id, agent_id, os_id, device_id, country_id, region_id, city_id, carrier_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            visit_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            uuid,
            domain,
            ip_address,
            duration,
            error_code,
            error_description,
            timestamp,
            ch_start_date
  FROM midata.dns_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_customer_agg_1d_local (
  customer_name String,
  device_uuid String,
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  visit_count AggregateFunction(uniq, String),
  action_count AggregateFunction(sum, Int64),
  http_count AggregateFunction(sum, Int64),
  http_error_count AggregateFunction(sum, Int64),
  crash_count AggregateFunction(sum, Int64),
  slow_count AggregateFunction(sum, Int64),
  latest_visit_time AggregateFunction(max, Int64),
  earliest_visit_time AggregateFunction(max, Int64),
  timestamp UInt64,  ch_start_date Date
  ,INDEX mi_customer_agg_1d_local_index(app_id,app_version_id, os_id, device_id, country_id, region_id, city_id,customer_name, device_uuid) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            customer_name,
            device_uuid,
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            uniqState(uuid) AS visit_count,
            sumState(action_count) AS action_count,
            sumState(http_count) AS http_count,
            sumState(http_error_count) AS http_error_count,
            sumState(crash_count) AS crash_count,
            sumState(slow_count) AS slow_count,
            maxState(latest_visit_time) AS latest_visit_time,
            maxState(first_visit_time) AS earliest_visit_time,
            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,
            ch_start_date
  FROM midata.mi_visit_insert
  GROUP BY app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.mi_active_device_agg_1d_local (
  app_id Int64,
  device_count AggregateFunction(uniq, String),
  timestamp UInt64,
  ch_start_date Date
  ,INDEX mi_active_device_agg_1d_local_index(app_id) TYPE minmax GRANULARITY 3
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            uniqState(device_uuid) AS device_count,
            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,
            ch_start_date
  FROM midata.mi_visit_insert
  GROUP BY app_id, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS midata.view_loading_local (
  app_id Int64,
  app_version_id Int64,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  action_id String,
  uuid String,
  seq_id Int64,
  event_type Int64,
  page_action_from String,
  page_action_to String,
  duration Int64,
  start_time Int64,
  previous_disappeared_time Int64,
  did_load_time Int64,
  did_load_duration Int64,
  will_appear_time Int64,
  will_appear_duration Int64,
  did_appear_time Int64,
  did_appear_duration Int64,
  timestamp Int64,
  ch_start_date Date)
  ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, action_id)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            action_id,
            uuid,
            seq_id,
            event_type,
            page_action_from,
            page_action_to,
            duration,
            start_time,
            previous_disappeared_time,
            did_load_time,
            did_load_duration,
            will_appear_time,
            will_appear_duration,
            did_appear_time,
            did_appear_duration,
            timestamp,
            ch_start_date
  FROM midata.view_loading_insert;



--webviewdata

RENAME TABLE webviewdata.`.inner.web_js_error_local` to webviewdata.`.inner.web_js_error_local_bak_1108`;

RENAME TABLE webviewdata.`.inner.web_view_loading_local` to webviewdata.`.inner.web_view_loading_local_bak_1108`;

RENAME TABLE webviewdata.`.inner.web_view_loading_resources_local` to webviewdata.`.inner.web_view_loading_resources_local_bak_1108`;

RENAME TABLE webviewdata.`.inner.web_view_loading_agg_1m_local` to webviewdata.`.inner.web_view_loading_agg_1m_local_bak_1108`;

RENAME TABLE webviewdata.`.inner.web_view_loading_agg_1h_local` to webviewdata.`.inner.web_view_loading_agg_1h_local_bak_1108`;

RENAME TABLE webviewdata.`.inner.web_view_loading_agg_customer_1m_local` to webviewdata.`.inner.web_view_loading_agg_customer_1m_local_bak_1108`;

DROP TABLE IF EXISTS webviewdata.web_js_error_local;

DROP TABLE IF EXISTS webviewdata.web_view_loading_local;

DROP TABLE IF EXISTS webviewdata.web_view_loading_resources_local;

DROP TABLE IF EXISTS webviewdata.web_view_loading_agg_1m_local;

DROP TABLE IF EXISTS webviewdata.web_view_loading_agg_1h_local;

DROP TABLE IF EXISTS webviewdata.web_view_loading_agg_customer_1m_local;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_js_error_local (
  app_id Int64,
  app_version_id Int64,
  visit_id String,
  action_id String,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  browser_id Int64,
  page_url String,
  iframe_status UInt8,
  exception_class String,
  request_uri String,
  message String,
  browser_stack_hash String,
  request_referer String,
  browser_name String,
  timestamp Int64,
  ch_start_date Date
  ) ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, browser_id, os_id, device_id, region_id, country_id, city_id, action_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            visit_id,
            action_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            browser_id,
            page_url,
            iframe_status,
            exception_class,
            request_uri,
            message,
            browser_stack_hash,
            request_referer,
            browser_name,
            timestamp,
            ch_start_date
  FROM webviewdata.web_js_error_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_view_loading_local (
  app_id Int64,
  visit_id String,
  app_version_id Int64,
  action_id String,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  customer_name String,
  device_uuid String,
  cpu Float64,
  mem Int64,
  battery Int64,
  visit_start_time Int64,
  page_id String,
  page_url String,
  host String,
  path String,
  iframe_status UInt8,
  navigation_start_time Int64,
  unloadevent_start_time Int64,
  unloadevent_end_time Int64,
  domloading_time Int64,
  dominteractive_time Int64,
  domcontentloadedevent_start_time Int64,
  domcontentloadedevent_end_time Int64,
  domcomplete_time Int64,
  loadevent_start_time Int64,
  loadevent_end_time Int64,
  redirect_start_time Int64,
  redirect_end_time Int64,
  fetch_start_time Int64,
  domainlookup_start_time Int64,
  domainlookup_end_time Int64,
  connect_start_time Int64,
  connect_end_time Int64,
  secureconnection_start_time Int64,
  request_start_time Int64,
  response_start_time Int64,
  response_end_time Int64,
  all_time Int64,
  is_slow Int64,
  ch_start_date Date,
  timestamp Int64)
  ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            visit_id,
            app_version_id,
            action_id,
            agent_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            customer_name,
            device_uuid,
            cpu,
            mem,
            battery,
            visit_start_time,
            page_id,
            page_url,
            host,
            path,
            iframe_status,
            navigation_start_time,
            unloadevent_start_time,
            unloadevent_end_time,
            domloading_time,
            dominteractive_time,
            domcontentloadedevent_start_time,
            domcontentloadedevent_end_time,
            domcomplete_time,
            loadevent_start_time,
            loadevent_end_time,
            redirect_start_time,
            redirect_end_time,
            fetch_start_time,
            domainlookup_start_time,
            domainlookup_end_time,
            connect_start_time,
            connect_end_time,
            secureconnection_start_time,
            request_start_time,
            response_start_time,
            response_end_time,
            all_time,
            is_slow,
            ch_start_date,
            timestamp
  FROM webviewdata.web_view_loading_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_view_loading_resources_local (
  app_id Int64,
  app_version_id Int64,
  agent_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  visit_id String,
  customer_name String,
  device_uuid String,
  page_url String,
  navigation_start_time Int64,
  resources_origin String,
  resources_type String,
  resource_start_time Int64,
  domain_lookup_start_time Int64,
  domain_lookup_end_time Int64,
  connect_start_time Int64,
  connect_end_time Int64,
  request_start_time Int64,
  response_start_time Int64,
  response_end_time Int64,
  fetch_start_time Int64,
  resource_duration_time Int64,
  page_id String,
  ch_start_date Date,
  timestamp Int64)
  ENGINE = MergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, visit_id, page_id, os_id, device_id, region_id, country_id, city_id, page_url, timestamp)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            agent_id, os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            visit_id,
            customer_name,
            device_uuid,
            page_url,
            navigation_start_time,
            resources_origin,
            resources_type,
            resource_start_time,
            domain_lookup_start_time,
            domain_lookup_end_time,
            connect_start_time,
            connect_end_time,
            request_start_time,
            response_start_time,
            response_end_time,
            fetch_start_time,
            resource_duration_time,
            page_id,
            ch_start_date,
            timestamp
  FROM webviewdata.web_view_loading_resources_insert;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_view_loading_agg_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  host String,
  path String,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  action_count AggregateFunction(uniq, String),
  redirect_duration AggregateFunction(avg, Int64),
  cache_duration AggregateFunction(avg, Int64),
  dns_duration AggregateFunction(avg, Int64),
  tcp_duration AggregateFunction(avg, Int64),
  request_duration AggregateFunction(avg, Int64),
  response_duration AggregateFunction(avg, Int64),
  process_duration AggregateFunction(avg, Int64),
  load_duration AggregateFunction(avg, Int64),
  white_screen_duration AggregateFunction(avg, Int64),
  page_loading_duration AggregateFunction(avg, Int64),
  slow_count AggregateFunction(sum, Int64),
  total_count AggregateFunction(count),
  normal_count AggregateFunction(countIf, UInt8)
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id, os_id, carrier_id, device_id, country_id, region_id, city_id, host, path)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            host,
            path,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            uniqState(visit_id) AS visit_count,
            uniqState(action_id) AS action_count,
            avgState(redirect_end_time - redirect_start_time) AS redirect_duration,
            avgState(fetch_start_time - domainlookup_start_time) AS cache_duration,
            avgState(domainlookup_end_time - domainlookup_start_time) AS dns_duration,
            avgState(domainlookup_end_time - domainlookup_start_time) AS tcp_duration,
            avgState(response_start_time - request_start_time) AS request_duration,
            avgState(response_end_time - request_start_time) AS response_duration,
            avgState(domcomplete_time - domloading_time) AS process_duration,
            avgState(loadevent_end_time - loadevent_start_time) AS load_duration,
            avgState(domloading_time) AS white_screen_duration,
            avgState(loadevent_end_time) AS page_loading_duration,
            sumState(is_slow) AS slow_count,
            countState() AS total_count,
            countIfState(is_slow = 0) AS normal_count
  FROM webviewdata.web_view_loading_insert
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, host, path, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_view_loading_agg_1h_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  host String,
  path String,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  action_count AggregateFunction(uniq, String),
  redirect_duration AggregateFunction(avg, Int64),
  cache_duration AggregateFunction(avg, Int64),
  dns_duration AggregateFunction(avg, Int64),
  tcp_duration AggregateFunction(avg, Int64),
  request_duration AggregateFunction(avg, Int64),
  response_duration AggregateFunction(avg, Int64),
  process_duration AggregateFunction(avg, Int64),
  load_duration AggregateFunction(avg, Int64),
  white_screen_duration AggregateFunction(avg, Int64),
  page_loading_duration AggregateFunction(avg, Int64),
  slow_count AggregateFunction(sum, Int64),
  total_count AggregateFunction(count),
  normal_count AggregateFunction(countIf, UInt8)
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, timestamp, app_version_id, os_id, carrier_id, device_id, country_id, region_id, city_id, host, path)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            host,
            path,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60 * 60000) * (60 * 60000)) AS timestamp,
            uniqMergeState(visit_count) AS visit_count,
            uniqMergeState(action_count) AS action_count,
            avgMergeState(redirect_duration) AS redirect_duration,
            avgMergeState(cache_duration) AS cache_duration,
            avgMergeState(dns_duration) AS dns_duration,
            avgMergeState(tcp_duration) AS tcp_duration,
            avgMergeState(request_duration) AS request_duration,
            avgMergeState(response_duration) AS response_duration,
            avgMergeState(process_duration) AS process_duration,
            avgMergeState(load_duration) AS load_duration,
            avgMergeState(white_screen_duration) AS white_screen_duration,
            avgMergeState(page_loading_duration) AS page_loading_duration,
            sumMergeState(slow_count) AS slow_count,
            countMergeState(total_count) AS total_count,
            countIfMergeState(normal_count) AS normal_count
  FROM webviewdata.web_view_loading_agg_1m_local
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, host, path, ch_start_date, timestamp;

CREATE MATERIALIZED VIEW IF NOT EXISTS webviewdata.web_view_loading_agg_customer_1m_local (
  app_id Int64,
  app_version_id Int64,
  os_id Int64,
  device_id Int64,
  country_id Int64,
  region_id Int64,
  city_id Int64,
  carrier_id Int64,
  customer_name String,
  device_uuid String,
  host String,
  path String,
  ch_start_date Date,
  timestamp UInt64,
  visit_count AggregateFunction(uniq, String),
  action_count AggregateFunction(uniq, String),
  redirect_duration AggregateFunction(avg, Int64),
  cache_duration AggregateFunction(avg, Int64),
  dns_duration AggregateFunction(avg, Int64),
  tcp_duration AggregateFunction(avg, Int64),
  request_duration AggregateFunction(avg, Int64),
  response_duration AggregateFunction(avg, Int64),
  process_duration AggregateFunction(avg, Int64),
  load_duration AggregateFunction(avg, Int64),
  white_screen_duration AggregateFunction(avg, Int64),
  page_loading_duration AggregateFunction(avg, Int64),
  slow_count AggregateFunction(sum, Int64),
  total_count AggregateFunction(count),
  normal_count AggregateFunction(countIf, UInt8)
  ) ENGINE = AggregatingMergeTree()
  PARTITION BY toYYYYMMDD(ch_start_date)
  order by (app_id, customer_name, device_uuid, timestamp, app_version_id, os_id, carrier_id, device_id, country_id, region_id, city_id, host, path)
  SETTINGS index_granularity = 8192
  AS SELECT
            app_id,
            app_version_id,
            os_id,
            device_id,
            country_id,
            region_id,
            city_id,
            carrier_id,
            customer_name,
            device_uuid,
            host,
            path,
            ch_start_date,
            toUInt64(intDiv(timestamp, 60000) * 60000) AS timestamp,
            uniqState(visit_id) AS visit_count,
            uniqState(action_id) AS action_count,
            avgState(redirect_end_time - redirect_start_time) AS redirect_duration,
            avgState(domainlookup_start_time - fetch_start_time) AS cache_duration,
            avgState(domainlookup_end_time - domainlookup_start_time) AS dns_duration,
            avgState(connect_end_time - connect_start_time) AS tcp_duration,
            avgState(response_start_time - request_start_time) AS request_duration,
            avgState(response_end_time - response_start_time) AS response_duration,
            avgState(domcomplete_time - domloading_time) AS process_duration,
            avgState(loadevent_end_time - loadevent_start_time) AS load_duration,
            avgState(domloading_time) AS white_screen_duration,
            avgState(loadevent_end_time) AS page_loading_duration,
            sumState(is_slow) AS slow_count,
            countState() AS total_count,
            countIfState(is_slow = 0) AS normal_count
  FROM webviewdata.web_view_loading_insert
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, customer_name, device_uuid, host, path, ch_start_date, timestamp;




