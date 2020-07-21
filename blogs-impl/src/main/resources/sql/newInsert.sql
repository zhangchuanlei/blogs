insert into midata.mi_action_local (
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
) SELECT
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
FROM midata.`.inner.mi_action_local_bak_1108`;
---
insert into  midata.web_action_local (
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
) SELECT
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
FROM midata.`.inner.web_action_local_bak_1108`
 where ch_start_date='2019-11-4';
---
insert into midata.mi_action_agg_customer_1m_local (
    app_id ,
    app_version_id ,
    os_id ,
    device_id ,
    country_id ,
    region_id ,
    city_id ,
    carrier_id ,
    customer_name ,
    device_uuid ,
    action_type ,
    action_name ,
    view_name ,
    ch_start_date ,
    timestamp ,
    duration ,
    error_count ,
    slow_count ,
    total_count ,
    bytes_sent ,
    bytes_received
) SELECT
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
FROM midata.mi_action_local
 where ch_start_date='2019-11-4'
GROUP BY app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, action_type, action_name, view_name, ch_start_date, timestamp;
---
insert into midata.web_action_agg_customer_1m_local (
    app_id ,
    app_version_id ,
    os_id ,
    device_id ,
    country_id ,
    region_id ,
    city_id ,
    carrier_id ,
    customer_name ,
    device_uuid ,
    action_type ,
    action_name ,
    view_name ,
    ch_start_date ,
    timestamp ,
    duration ,
    error_count ,
    slow_count ,
    total_count ,
    bytes_sent ,
    bytes_received ,
    action_count ,
    view_loading_time ,
    view_loading_count ,
    view_loading_slow_count
) SELECT
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
FROM midata.web_action_local
 where ch_start_date='2019-11-4'
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, customer_name, device_uuid, action_type, action_name, view_name, ch_start_date, timestamp;
---
insert into  midata.mi_http_local (
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
)SELECT
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
FROM midata.`.inner.mi_http_local_bak_1108`
 where ch_start_date='2019-11-20' and timestamp>=1574244000000 and timestamp < 1574247600000;
---
insert into midata.web_http_local (
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
)SELECT
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
FROM midata.`.inner.web_http_local_bak_1108`
 where ch_start_date='2019-11-20';
---
insert into midata.mi_http_agg_customer_1m_local (
    app_id ,
    app_version_id ,
    os_id ,
    device_id ,
    country_id ,
    region_id ,
    city_id ,
    carrier_id ,
    initiator ,
    host ,
    path ,
    customer_name ,
    device_uuid ,
    status_code ,
    error_code ,
    is_self_owned ,
    ch_start_date ,
    timestamp ,
    duration ,
    first_byte_duration ,
    total_count ,
    slow_count ,
    bytes_sent ,
    bytes_received ,
    server_duration ,
    total_count_with_server_duration
) SELECT
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
FROM midata.mi_http_local
 where ch_start_date='2019-11-9' and timestamp>=1573246800000 and timestamp < 1573250400000
GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, initiator, host, path, customer_name, device_uuid, status_code, error_code, is_self_owned, ch_start_date, timestamp;
---
insert into midata.web_http_agg_customer_1m_local (
    app_id ,
    app_version_id ,
    os_id ,
    device_id ,
    country_id ,
    region_id ,
    city_id ,
    carrier_id ,
    initiator ,
    host ,
    path ,
    method ,
    status_code ,
    error_code ,
    is_self_owned ,
    customer_name ,
    device_uuid ,
    ch_start_date ,
    timestamp ,
    duration ,
    first_byte_duration ,
    total_count ,
    slow_count ,
    bytes_sent ,
    bytes_received ,
    server_duration ,
    total_count_with_server_duration
) SELECT
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
FROM midata.web_http_local
 where ch_start_date='2019-11-4'
 GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, host, path, method, status_code, error_code, is_self_owned, initiator, customer_name, device_uuid, ch_start_date, timestamp;
---
insert into midata.mi_visit_local (
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
)SELECT
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
FROM midata.`.inner.mi_visit_local_bak_1108`
   where ch_start_date between '2019-11-04' and '2019-11-10';
---
insert into midata.web_visit_local (
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
) SELECT
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
FROM midata.`.inner.web_visit_local_bak_1108`
   where ch_start_date between '2019-11-11' and '2019-11-14';
---
insert into  midata.mi_visit_agg_1m_local (
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
timestamp,
visit_count,
customer_count,
device_uuid_count,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
http_third_count)
SELECT
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
timestamp,
visit_count,
customer_count,
device_uuid_count,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
http_third_count
FROM midata.`.inner.mi_visit_agg_1m_local_bak_1108`
   where ch_start_date between '2019-11-04' and '2019-11-10';
---
insert into midata.web_visit_agg_1m_local (
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
timestamp,
visit_count,
customer_count,
device_uuid_count,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
http_third_count
)SELECT
app_id,
app_version_id,
os_id,
device_id,
country_id,
region_id,
city_id,
carrier_id,
ch_start_date,
timestamp,
visit_count,
customer_count,
device_uuid_count,
action_count,
http_count,
http_error_count,
crash_count,
anr_count,
slow_count,
http_third_count
FROM midata.`.inner.web_visit_agg_1m_local_bak_1108`
   where ch_start_date between '2019-11-04' and '2019-11-10';
---
insert into midata.crash_local (
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
  method_name ,
  line_number ,
  threads ,
  crash_log ,
  cause ,
  location ,
  running_apps ,
  cpu ,
  memory ,
  hard_disk ,
  is_symbol ,
  visit_start_time ,
  crash_time ,
  timestamp ,
  ch_start_date
  ) SELECT
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
  FROM midata.`.inner.crash_local_bak_1108`
     where ch_start_date = '2019-11-04';
---
insert into  midata.anr_local (
    uuid ,
    app_id ,
    app_version_id ,
    agent_id ,
    os_id ,
    device_id ,
    country_id ,
    region_id ,
    city_id ,
    carrier_id ,
    visit_id ,
    customer_name ,
    device_uuid ,
    occur_package ,
    occur_location ,
    message ,
    description ,
    mobile_app_name ,
    anr_thread ,
    other_threads ,
    trace ,
    cpu ,
    memory ,
    memory_available ,
    hard_disk ,
    root ,
    visit_start_time ,
    anr_time ,
    timestamp ,
    ch_start_date
) SELECT
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
FROM midata.`.inner.anr_local_bak_1108`
 where ch_start_date='2019-11-20' and timestamp>=1574244000000 and timestamp < 1574247600000;
---
insert into  midata.socket_local (
  app_id ,
  app_version_id ,
  visit_id ,
  agent_id ,
  os_id ,
  device_id ,
  customer_name ,
  device_uuid ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  action_id ,
  uuid ,
  ui_orientation ,
  domain ,
  ip ,
  port ,
  connect_time ,
  dns_time ,
  read_time ,
  write_time ,
  bytes_sent ,
  bytes_received ,
  connect_count ,
  read_count ,
  write_count ,
  error_count ,
  slow_count ,
  is_slow ,
  is_error ,
  connect_info ,
  dns_info ,
  read_info ,
  write_info ,
  exception_info ,
  start_time ,
  end_time ,
  timestamp ,
  ch_start_date
  ) SELECT
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
  FROM midata.`.inner.socket_local_bak_1108`
     where ch_start_date between '2019-11-04' and '2019-11-20';
---
insert into  midata.dns_local (
  app_id ,
  app_version_id ,
  visit_id ,
  agent_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  uuid ,
  domain ,
  ip_address ,
  duration ,
  error_code ,
  error_description ,
  timestamp ,
  ch_start_date
  ) SELECT
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
  FROM midata.`.inner.dns_local_bak_1108`
 where ch_start_date between '2019-11-04' and '2019-11-20';
---
insert into  midata.mi_active_device_agg_1d_local (
  app_id ,
  device_count ,
  timestamp ,
  ch_start_date
  ) SELECT
            app_id,
            uniqState(device_uuid) AS device_count,
            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,
            ch_start_date
  FROM midata.mi_visit_local
 where ch_start_date between '2019-11-04' and '2019-11-10'
  GROUP BY app_id, ch_start_date, timestamp;
---
insert into  midata.mi_customer_agg_1d_local (
  customer_name ,
  device_uuid ,
  app_id ,
  app_version_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  visit_count ,
  action_count ,
  http_count ,
  http_error_count ,
  crash_count ,
  slow_count ,
  latest_visit_time ,
  earliest_visit_time ,
  timestamp ,
  ch_start_date
  ) SELECT
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
  FROM midata.mi_visit_local
 where ch_start_date between '2019-11-04' and '2019-11-10'
  GROUP BY app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, ch_start_date, timestamp;
---
insert into midata.view_loading_local (
  app_id,
  app_version_id ,
  agent_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  action_id ,
  uuid ,
  seq_id ,
  event_type ,
  page_action_from ,
  page_action_to ,
  duration ,
  start_time ,
  previous_disappeared_time ,
  did_load_time ,
  did_load_duration ,
  will_appear_time ,
  will_appear_duration ,
  did_appear_time ,
  did_appear_duration ,
  timestamp ,
  ch_start_date
  )SELECT
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
  FROM midata.view_loading_local_bak_1108;
---
insert into webviewdata.web_js_error_local (
  app_id ,
  app_version_id ,
  visit_id ,
  action_id ,
  agent_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  browser_id ,
  page_url ,
  iframe_status ,
  exception_class ,
  request_uri ,
  message ,
  browser_stack_hash ,
  request_referer ,
  browser_name ,
  timestamp ,
  ch_start_date
  ) SELECT
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
  FROM webviewdata.`.inner.web_js_error_local_bak_1108`;
---
insert into webviewdata.web_view_loading_local (
  app_id ,
  visit_id ,
  app_version_id ,
  action_id ,
  agent_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  customer_name ,
  device_uuid ,
  cpu ,
  mem ,
  battery ,
  visit_start_time ,
  page_id ,
  page_url ,
  host ,
  path ,
  iframe_status ,
  navigation_start_time ,
  unloadevent_start_time ,
  unloadevent_end_time ,
  domloading_time ,
  dominteractive_time ,
  domcontentloadedevent_start_time ,
  domcontentloadedevent_end_time ,
  domcomplete_time ,
  loadevent_start_time ,
  loadevent_end_time ,
  redirect_start_time ,
  redirect_end_time ,
  fetch_start_time ,
  domainlookup_start_time ,
  domainlookup_end_time ,
  connect_start_time ,
  connect_end_time ,
  secureconnection_start_time ,
  request_start_time ,
  response_start_time ,
  response_end_time ,
  all_time ,
  is_slow ,
  ch_start_date ,
  timestamp Int64
  ) SELECT
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
  FROM webviewdata.`.inner.web_view_loading_local_bak_1108`;
---
insert into  webviewdata.web_view_loading_resources_local (
  app_id ,
  app_version_id ,
  agent_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  visit_id ,
  customer_name ,
  device_uuid ,
  page_url ,
  navigation_start_time ,
  resources_origin ,
  resources_type ,
  resource_start_time ,
  domain_lookup_start_time ,
  domain_lookup_end_time ,
  connect_start_time ,
  connect_end_time ,
  request_start_time ,
  response_start_time ,
  response_end_time ,
  fetch_start_time ,
  resource_duration_time ,
  page_id ,
  ch_start_date ,
  timestamp
  ) SELECT
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
  FROM webviewdata.`.inner.web_view_loading_resources_local_bak_1108`;
---
insert into webviewdata.web_view_loading_agg_1m_local (
  app_id ,
  app_version_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  host ,
  path ,
  ch_start_date ,
  timestamp ,
  visit_count ,
  action_count ,
  redirect_duration,
  cache_duration ,
  dns_duration ,
  tcp_duration ,
  request_duration ,
  response_duration ,
  process_duration ,
  load_duration ,
  white_screen_duration ,
  page_loading_duration ,
  slow_count ,
  total_count ,
  normal_count
  )  SELECT
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
  FROM webviewdata.`.inner.web_view_loading_local`
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, host, path, ch_start_date, timestamp;
---
insert into  webviewdata.web_view_loading_agg_customer_1m_local (
  app_id ,
  app_version_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  customer_name ,
  device_uuid ,
  host ,
  path ,
  ch_start_date ,
  timestamp ,
  visit_count ,
  action_count ,
  redirect_duration ,
  cache_duration ,
  dns_duration ,
  tcp_duration ,
  request_duration ,
  response_duration ,
  process_duration ,
  load_duration ,
  white_screen_duration ,
  page_loading_duration ,
  slow_count ,
  total_count ,
  normal_count
  ) SELECT
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
  FROM webviewdata.`.inner.web_view_loading_local`
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, customer_name, device_uuid, host, path, ch_start_date, timestamp;

