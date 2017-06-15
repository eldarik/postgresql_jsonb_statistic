create database load_testing_1;
\c load_testing_1;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 10), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_1;

create database load_testing_2;
\c load_testing_2;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 100), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_2;

create database load_testing_3;
\c load_testing_3;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 300), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_3;

create database load_testing_4;
\c load_testing_4;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 1000), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_4;

create database load_testing_5;
\c load_testing_5;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 2000), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_5;

create database load_testing_6;
\c load_testing_6;
create extension jsonb_statistic ;
create table jsonb_example(x jsonb);
insert into jsonb_example
values (
  '{
    "Member": {
      "DelegateCur": 4,"DelegateMin": 2,"Name": "postgresql-master",
      "Addr": "10.0.3.245","Port": 8301,"Tags": {"vsn_min": "1","vsn_max": "3","vsn": "2","role": "consul","port": "8300","expect": "3","dc": "dc1","build": "0.6.1:68969ce5"},
      "Status": 1,"ProtocolMin": 1,"ProtocolMax": 3,"ProtocolCur": 2
    },
    "Config": {
      "Reap": null,"SessionTTLMinRaw": "","SessionTTLMin": 0,
      "UnixSockets": {"Perms": "","Grp": "","Usr": ""},
      "VersionPrerelease": "","Version": "0.6.1","Revision": "68969ce5f4499cbe3a4f946917be2e580f1b1936+CHANGES","CAFile": "","VerifyServerHostname": false,
      "VerifyOutgoing": false,"VerifyIncoming": false,"EnableDebug": false,"Protocol": 2,"DogStatsdTags": null,"DogStatsdAddr": "",
      "StatsdAddr": "","StatsitePrefix": "consul","StatsiteAddr": "","SkipLeaveOnInt": false,"LeaveOnTerm": false,"Addresses": {"RPC": "","HTTPS": "","HTTP": "","DNS": ""},
      "Ports": {"Server": 8300,"SerfWan": 8302,"SerfLan": 8301,"RPC": 8400,"HTTPS": -1,"HTTP": 8500,"DNS": 8600},
      "AdvertiseAddrWan": "10.0.3.245","HTTPAPIResponseHeaders": null,"AtlasInfrastructure": "","AtlasJoin": false,"AtlasEndpoint": "","DisableCoordinates": false
    }
  }'
);
create table test(n integer, x jsonb);
insert into test select * from generate_series(1, 5000), jsonb_example;
select now();SELECT generate_statistic_for_database();select now();
\l+
\dt+
drop table test;
\c postgres;
drop database load_testing_6;
