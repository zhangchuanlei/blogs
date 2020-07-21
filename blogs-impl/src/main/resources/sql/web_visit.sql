insert into  midata.web_visit_agg_1d_local (
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
  ) SELECT
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
  FROM midata.`.inner.web_visit_agg_1d_local_bak_1108`
  where ch_start_date between '2019-11-04' and '2019-11-10'
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;
   ---
   insert into midata.mi_visit_agg_1d_local (
  app_id ,
  app_version_id ,
  os_id ,
  device_id ,
  country_id ,
  region_id ,
  city_id ,
  carrier_id ,
  ch_start_date ,
  timestamp ,
  visit_count ,
  customer_count ,
  device_uuid_count ,
  action_count ,
  http_count ,
  http_error_count ,
  crash_count ,
  anr_count ,
  slow_count ,
  http_third_count
  )  SELECT
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
  FROM midata.`.inner.mi_visit_agg_1d_local_bak_1108`
  where ch_start_date between '2019-11-04' and '2019-11-10'
  GROUP BY app_id, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, ch_start_date, timestamp;
