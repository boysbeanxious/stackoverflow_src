create table tt_postnum_per_tag as
select a.id,
       a.cdate,
       a.tot,
       CAST(a.python_yn AS NUMERIC) / a.tot              as python_yn,
       CAST(a.javascript_yn AS NUMERIC) / a.tot          as javascript_yn,
       CAST(a.reactjs_yn AS NUMERIC) / a.tot             as reactjs_yn,
       CAST(a.java_yn AS NUMERIC) / a.tot                as java_yn,
       CAST(a.csharp_yn AS NUMERIC) / a.tot              as csharp_yn , CAST(a.html_yn AS NUMERIC) / a.tot as html_yn,
       CAST(a.r_yn AS NUMERIC) / a.tot                   as r_yn,
       CAST(a.pandas_yn AS NUMERIC) / a.tot              as pandas_yn,
       CAST(a.css_yn AS NUMERIC) / a.tot                 as css_yn,
       CAST(a.flutter_yn AS NUMERIC) / a.tot             as flutter_yn,
       CAST(a.sql_yn AS NUMERIC) / a.tot                 as sql_yn,
       CAST(a.android_yn AS NUMERIC) / a.tot             as android_yn,
       CAST(a.nodejs_yn AS NUMERIC) / a.tot              as nodejs_yn,
       CAST(a.cplusplus_yn AS NUMERIC) / a.tot           as cplusplus_yn,
       CAST(a.typescript_yn AS NUMERIC) / a.tot          as typescript_yn,
       CAST(a.php_yn AS NUMERIC) / a.tot                 as php_yn,
       CAST(a.python_3x_yn AS NUMERIC) / a.tot           as python_3x_yn,
       CAST(a.dataframe_yn AS NUMERIC) / a.tot           as dataframe_yn,
       CAST(a.arrays_yn AS NUMERIC) / a.tot              as arrays_yn,
       CAST(a.angular_yn AS NUMERIC) / a.tot             as angular_yn,
       CAST(a.django_yn AS NUMERIC) / a.tot              as django_yn,
       CAST(a.json_yn AS NUMERIC) / a.tot                as json_yn,
       CAST(a.dart_yn AS NUMERIC) / a.tot                as dart_yn,
       CAST(a.mysql_yn AS NUMERIC) / a.tot               as mysql_yn,
       CAST(a.c_yn AS NUMERIC) / a.tot                   as c_yn,
       CAST(a.excel_yn AS NUMERIC) / a.tot               as excel_yn,
       CAST(a.laravel_yn AS NUMERIC) / a.tot             as laravel_yn,
       CAST(a.swift_yn AS NUMERIC) / a.tot               as swift_yn,
       CAST(a.spring_boot_yn AS NUMERIC) / a.tot         as spring_boot_yn,
       CAST(a.amazon_web_services_yn AS NUMERIC) / a.tot as amazon_web_services_yn,
       CAST(a.react_native_yn AS NUMERIC) / a.tot        as react_native_yn,
       CAST(a.postgresql_yn AS NUMERIC) / a.tot          as postgresql_yn,
       CAST(a.azure_yn AS NUMERIC) / a.tot               as azure_yn,
       CAST(a.kotlin_yn AS NUMERIC) / a.tot              as kotlin_yn,
       CAST(a.docker_yn AS NUMERIC) / a.tot              as docker_yn,
       CAST(a.list_yn AS NUMERIC) / a.tot                as list_yn,
       CAST(a.firebase_yn AS NUMERIC) / a.tot            as firebase_yn,
       CAST(a.ios_yn AS NUMERIC) / a.tot                 as ios_yn,
       CAST(a.sql_server_yn AS NUMERIC) / a.tot          as sql_server_yn,
       CAST(a.jquery_yn AS NUMERIC) / a.tot              as jquery_yn,
       CAST(a.mongodb_yn AS NUMERIC) / a.tot             as mongodb_yn,
       CAST(a.vuejs_yn AS NUMERIC) / a.tot               as vuejs_yn,
       CAST(a.numpy_yn AS NUMERIC) / a.tot               as numpy_yn,
       CAST(a.net_yn AS NUMERIC) / a.tot                 as net_yn,
       CAST(a.vba_yn AS NUMERIC) / a.tot                 as vba_yn,
       CAST(a.regex_yn AS NUMERIC) / a.tot               as regex_yn,
       CAST(a.string_yn AS NUMERIC) / a.tot              as string_yn,
       CAST(a.spring_yn AS NUMERIC) / a.tot              as spring_yn,
       CAST(a.powershell_yn AS NUMERIC) / a.tot          as powershell_yn,
       CAST(a.linux_yn AS NUMERIC) / a.tot               as linux_yn

from (
         select xx.id,
                xx.cdate,
                xx.python_yn,
                xx.javascript_yn,
                xx.reactjs_yn,
                xx.java_yn,
                xx.csharp_yn,
                xx.html_yn,
                xx.r_yn,
                xx.pandas_yn,
                xx.css_yn,
                xx.flutter_yn,
                xx.sql_yn,
                xx.android_yn,
                xx.nodejs_yn,
                xx.cplusplus_yn,
                xx.typescript_yn,
                xx.php_yn,
                xx.python_3x_yn,
                xx.dataframe_yn,
                xx.arrays_yn,
                xx.angular_yn,
                xx.django_yn,
                xx.json_yn,
                xx.dart_yn,
                xx.mysql_yn,
                xx.c_yn,
                xx.excel_yn,
                xx.laravel_yn,
                xx.swift_yn,
                xx.spring_boot_yn,
                xx.amazon_web_services_yn,
                xx.react_native_yn,
                xx.postgresql_yn,
                xx.azure_yn,
                xx.kotlin_yn,
                xx.docker_yn,
                xx.list_yn,
                xx.firebase_yn,
                xx.ios_yn,
                xx.sql_server_yn,
                xx.jquery_yn,
                xx.mongodb_yn,
                xx.vuejs_yn,
                xx.numpy_yn,
                xx.net_yn,
                xx.vba_yn,
                xx.regex_yn,
                xx.string_yn,
                xx.spring_yn,
                xx.powershell_yn,
                xx.linux_yn,
                xx.python_yn + xx.javascript_yn + xx.reactjs_yn + xx.java_yn + xx.csharp_yn + xx.html_yn + xx.r_yn +
                xx.pandas_yn + xx.css_yn + xx.flutter_yn + xx.sql_yn + xx.android_yn +
                xx.nodejs_yn + xx.cplusplus_yn + xx.typescript_yn + xx.php_yn + xx.python_3x_yn + xx.dataframe_yn +
                xx.arrays_yn + xx.angular_yn + xx.django_yn + xx.json_yn + xx.dart_yn + xx.mysql_yn + xx.c_yn +
                xx.excel_yn + xx.laravel_yn + xx.swift_yn + xx.spring_boot_yn + xx.amazon_web_services_yn +
                xx.react_native_yn + xx.postgresql_yn + xx.azure_yn + xx.kotlin_yn + xx.docker_yn + xx.list_yn +
                xx.firebase_yn + xx.ios_yn + xx.sql_server_yn + xx.jquery_yn + xx.mongodb_yn + xx.vuejs_yn +
                xx.numpy_yn + xx.net_yn + xx.vba_yn + xx.regex_yn + xx.string_yn + xx.spring_yn + xx.powershell_yn +
                xx.linux_yn as tot
         from (
                  select id,
                         to_char(creationdate, 'yyyy-mm-dd') as cdate,
                         case
                             when tags like '%<python>%' then 1
                             else 0
                             end                             as python_yn,
                         case
                             when tags like '%<javascript>%' then 1
                             else 0
                             end                             as javascript_yn,
                         case
                             when tags like '%<reactjs>%' then 1
                             else 0
                             end                             as reactjs_yn,
                         case
                             when tags like '%<java>%' then 1
                             else 0
                             end                             as java_yn,
                         case
                             when tags like '%<c#>%' then 1
                             else 0
                             end                             as csharp_yn
                          ,
                         case
                             when tags like '%<html>%' then 1
                             else 0
                             end                             as html_yn,
                         case
                             when tags like '%<r>%' then 1
                             else 0
                             end                             as r_yn,
                         case
                             when tags like '%<pandas>%' then 1
                             else 0
                             end                             as pandas_yn,
                         case
                             when tags like '%<css>%' then 1
                             else 0
                             end                             as css_yn,
                         case
                             when tags like '%<flutter>%' then 1
                             else 0
                             end                             as flutter_yn,
                         case
                             when tags like '%<sql>%' then 1
                             else 0
                             end                             as sql_yn,
                         case
                             when tags like '%<android>%' then 1
                             else 0
                             end                             as android_yn,
                         case
                             when tags like '%<node.js>%' then 1
                             else 0
                             end                             as nodejs_yn,
                         case
                             when tags like '%<c++>%' then 1
                             else 0
                             end                             as cplusplus_yn,
                         case
                             when tags like '%<typescript>%' then 1
                             else 0
                             end                             as typescript_yn,
                         case
                             when tags like '%<php>%' then 1
                             else 0
                             end                             as php_yn,
                         case
                             when tags like '%<python-3.x>%' then 1
                             else 0
                             end                             as python_3x_yn,
                         case
                             when tags like '%<dataframe>%' then 1
                             else 0
                             end                             as dataframe_yn,
                         case
                             when tags like '%<arrays>%' then 1
                             else 0
                             end                             as arrays_yn,
                         case
                             when tags like '%<angular>%' then 1
                             else 0
                             end                             as angular_yn,
                         case
                             when tags like '%<django>%' then 1
                             else 0
                             end                             as django_yn,
                         case
                             when tags like '%<json>%' then 1
                             else 0
                             end                             as json_yn,
                         case
                             when tags like '%<dart>%' then 1
                             else 0
                             end                             as dart_yn,
                         case
                             when tags like '%<mysql>%' then 1
                             else 0
                             end                             as mysql_yn,
                         case
                             when tags like '%<c>%' then 1
                             else 0
                             end                             as c_yn,
                         case
                             when tags like '%<excel>%' then 1
                             else 0
                             end                             as excel_yn,
                         case
                             when tags like '%<laravel>%' then 1
                             else 0
                             end                             as laravel_yn,
                         case
                             when tags like '%<swift>%' then 1
                             else 0
                             end                             as swift_yn,
                         case
                             when tags like '%<spring-boot>%' then 1
                             else 0
                             end                             as spring_boot_yn,
                         case
                             when tags like '%<amazon-web-services>%' then 1
                             else 0
                             end                             as amazon_web_services_yn,
                         case
                             when tags like '%<react-native>%' then 1
                             else 0
                             end                             as react_native_yn,
                         case
                             when tags like '%<postgresql>%' then 1
                             else 0
                             end                             as postgresql_yn,
                         case
                             when tags like '%<azure>%' then 1
                             else 0
                             end                             as azure_yn,
                         case
                             when tags like '%<kotlin>%' then 1
                             else 0
                             end                             as kotlin_yn,
                         case
                             when tags like '%<docker>%' then 1
                             else 0
                             end                             as docker_yn,
                         case
                             when tags like '%<list>%' then 1
                             else 0
                             end                             as list_yn,
                         case
                             when tags like '%<firebase>%' then 1
                             else 0
                             end                             as firebase_yn,
                         case
                             when tags like '%<ios>%' then 1
                             else 0
                             end                             as ios_yn,
                         case
                             when tags like '%<sql-server>%' then 1
                             else 0
                             end                             as sql_server_yn,
                         case
                             when tags like '%<jquery>%' then 1
                             else 0
                             end                             as jquery_yn,
                         case
                             when tags like '%<mongodb>%' then 1
                             else 0
                             end                             as mongodb_yn,
                         case
                             when tags like '%<vue.js>%' then 1
                             else 0
                             end                             as vuejs_yn,
                         case
                             when tags like '%<numpy>%' then 1
                             else 0
                             end                             as numpy_yn,
                         case
                             when tags like '%<.net>%' then 1
                             else 0
                             end                             as net_yn,
                         case
                             when tags like '%<vba>%' then 1
                             else 0
                             end                             as vba_yn,
                         case
                             when tags like '%<regex>%' then 1
                             else 0
                             end                             as regex_yn,
                         case
                             when tags like '%<string>%' then 1
                             else 0
                             end                             as string_yn,
                         case
                             when tags like '%<spring>%' then 1
                             else 0
                             end                             as spring_yn,
                         case
                             when tags like '%<powershell>%' then 1
                             else 0
                             end                             as powershell_yn,
                         case
                             when tags like '%<linux>%' then 1
                             else 0
                             end                             as linux_yn
                  from posts
                  where creationdate between '2021-10-06' and '2023-03-15'
                    and posttypeid = '1'
                    and (tags like '%<python>%'
                      or tags like '%<javascript>%'
                      or tags like '%<reactjs>%'
                      or tags like '%<java>%'
                      or tags like '%<c#>%'
                      or tags like '%<html>%'
                      or tags like '%<r>%'
                      or tags like '%<pandas>%'
                      or tags like '%<css>%'
                      or tags like '%<flutter>%'
                      or tags like '%<sql>%'
                      or tags like '%<android>%'
                      or tags like '%<node.js>%'
                      or tags like '%<c++>%'
                      or tags like '%<typescript>%'
                      or tags like '%<php>%'
                      or tags like '%<python-3.x>%'
                      or tags like '%<dataframe>%'
                      or tags like '%<arrays>%'
                      or tags like '%<angular>%'
                      or tags like '%<django>%'
                      or tags like '%<json>%'
                      or tags like '%<dart>%'
                      or tags like '%<mysql>%'
                      or tags like '%<c>%'
                      or tags like '%<excel>%'
                      or tags like '%<laravel>%'
                      or tags like '%<swift>%'
                      or tags like '%<spring-boot>%'
                      or tags like '%<amazon-web-services>%'
                      or tags like '%<react-native>%'
                      or tags like '%<postgresql>%'
                      or tags like '%<azure>%'
                      or tags like '%<kotlin>%'
                      or tags like '%<docker>%'
                      or tags like '%<list>%'
                      or tags like '%<firebase>%'
                      or tags like '%<ios>%'
                      or tags like '%<sql-server>%'
                      or tags like '%<jquery>%'
                      or tags like '%<mongodb>%'
                      or tags like '%<vue.js>%'
                      or tags like '%<numpy>%'
                      or tags like '%<.net>%'
                      or tags like '%<vba>%'
                      or tags like '%<regex>%'
                      or tags like '%<string>%'
                      or tags like '%<spring>%'
                      or tags like '%<powershell>%'
                      or tags like '%<linux>%'
                      )) xx
     ) a
;