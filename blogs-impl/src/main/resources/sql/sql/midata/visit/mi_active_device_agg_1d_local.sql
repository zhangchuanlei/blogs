
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2020-1-4'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2020-1-3'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2020-1-2'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2020-1-1'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-31'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-30'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-29'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-28'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-27'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-26'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-25'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-24'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-23'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-22'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-21'
GROUP BY app_id, ch_start_date, timestamp;
insert into  midata.mi_active_device_agg_1d_local (  app_id ,  device_count ,  timestamp ,  ch_start_date  ) SELECT            app_id,            uniqState(device_uuid) AS device_count,            toUInt64((intDiv(timestamp + ((60000 * 60) * 8), (60000 * 60) * 24) * ((60000 * 60) * 24)) - ((60000 * 60) * 8)) AS timestamp,            ch_start_date    FROM midata.mi_visit_local 
 where ch_start_date='2019-12-20'
GROUP BY app_id, ch_start_date, timestamp;

