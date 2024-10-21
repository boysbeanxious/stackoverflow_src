
select /*deletedwithin*/
       x.cdate
     , x.posttypeid
     , count(id) as deletedpostcnt
     , sum(deletedwithinamonth) as deletedwithinamonth
     , sum(deletedwithinaweek) as deletedwithinaweek
from (
  select id
       , cast(creationdate as date) as cdate
       , posttypeid
       , case when datediff(DAY , creationdate, deletiondate) <=30 then 1 else 0 end as deletedwithinamonth
       , case when datediff(DAY , creationdate, deletiondate) <=7 then 1 else 0 end as deletedwithinaweek
       , case when (deletiondate <= '2023-12-03' and parentid is not null) then 'Ans'
              when (deletiondate <= '2023-12-03' and parentid is null) then 'Que'
              else 'Ali'
              end as dreason
   from postswithdeleted
   where creationdate<= '2023-12-03'
  and posttypeid in ('1', '2')
  --and deletiondate is not null
  and datediff(DAY , creationdate, deletiondate) <=365 
) x 
group by x.cdate, x.posttypeid
;


select /*totdeletedwithin*/
	  x.cdate
     , x.posttypeid
     , count(id) as totpostcnt 
     , sum(deletedpostcnt) as deletedpostcnt
     , sum(deletedwithinamonth) as deletedwithinamonth
     , sum(deletedwithinaweek) as deletedwithinaweek
from (
  select id
       , cast(creationdate as date) as cdate
       , posttypeid
       --, case when deletiondate<='2023-12-03' then 1 else 0 end as deletedpostcnt
	   , case when datediff(DAY , creationdate, deletiondate) <=365 then 1 else 0 end as deletedpostcnt
       , case when datediff(DAY , creationdate, deletiondate) <=30 then 1 else 0 end as deletedwithinamonth
       , case when datediff(DAY , creationdate, deletiondate) <=7 then 1 else 0 end as deletedwithinaweek
       , case when (deletiondate <= '2023-12-03' and parentid is not null) then 'Ans'
              when (deletiondate <= '2023-12-03' and parentid is null) then 'Que'
              else 'Ali'
              end as dreason
   from postswithdeleted
   where creationdate<= '2023-12-03'
     --and datediff(DAY , creationdate, deletiondate) <=365
     and posttypeid in ('1', '2')
--  and deletiondate is not null
) x 
group by x.cdate, x.posttypeid
;


select /*totdeletedwithin*/
       x.cdate
     , x.posttypeid
     , count(id) as deletedpostcnt
     , sum(deletedwithintwoyear) as deletedwithintwoyear
     , sum(deletedwithinayear) as deletedwithinayear
     , sum(deletedwithinamonth) as deletedwithinamonth
     , sum(deletedwithinaweek) as deletedwithinaweek
from (
  select id
       , cast(creationdate as date) as cdate
       , posttypeid
       , case when datediff(DAY , creationdate, deletiondate) <=530 then 1 else 0 end as deletedwithintwoyear
       , case when datediff(DAY , creationdate, deletiondate) <=365 then 1 else 0 end as deletedwithinayear
       , case when datediff(DAY , creationdate, deletiondate) <=30 then 1 else 0 end as deletedwithinamonth
       , case when datediff(DAY , creationdate, deletiondate) <=7 then 1 else 0 end as deletedwithinaweek
       , case when (deletiondate <= '2023-12-03' and parentid is not null) then 'Ans'
              when (deletiondate <= '2023-12-03' and parentid is null) then 'Que'
              else 'Ali'
              end as dreason
   from postswithdeleted
   where creationdate<= '2023-12-03'
  and posttypeid in ('1', '2')
  --and deletiondate is not null 
) x 
group by x.cdate, x.posttypeid
;





select
	/*deletedATags*/
	x.cdate ,
	x.deletedwithinamonth, 
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.c#_yn) as c#,
	sum(x.html_yn) as html,
	sum(x.r_yn) as r,
	sum(x.pandas_yn) as pandas,
	sum(x.css_yn) as css,
	sum(x.flutter_yn) as flutter,
	sum(x.sql_yn) as sql,
	sum(x.android_yn) as android,
	sum(x.nodejs_yn) as nodejs,
	sum(x.cplusplus_yn) as cplusplus,
	sum(x.typescript_yn) as typescript,
	sum(x.php_yn) as php,
	sum(x.python_3x_yn) as python_3x,
	sum(x.dataframe_yn) as dataframe,
	sum(x.arrays_yn) as arrays,
	sum(x.angular_yn) as angular,
	sum(x.django_yn) as django,
	sum(x.json_yn) as json,
	sum(x.dart_yn) as dart,
	sum(x.mysql_yn) as mysql,
	sum(x.c_yn) as c,
	sum(x.excel_yn) as excel,
	sum(x.laravel_yn) as laravel,
	sum(x.swift_yn) as swift,
	sum(x.spring_boot_yn) as spring_boot,
	sum(x.amazon_web_services_yn) as amazon_web_services,
	sum(x.react_native_yn) as react_native,
	sum(x.postgresql_yn) as postgresql,
	sum(x.azure_yn) as azure,
	sum(x.kotlin_yn) as kotlin,
	sum(x.docker_yn) as docker,
	sum(x.list_yn) as list,
	sum(x.firebase_yn) as firebase,
	sum(x.ios_yn) as ios,
	sum(x.sql_server_yn) as sql_server,
	sum(x.jquery_yn) as jquery,
	sum(x.mongodb_yn) as mongodb,
	sum(x.vuejs_yn) as vuejs,
	sum(x.numpy_yn) as numpy,
	sum(x.net_yn) as net,
	sum(x.vba_yn) as vba,
	sum(x.regex_yn) as regex,
	sum(x.string_yn) as string,
	sum(x.spring_yn) as spring,
	sum(x.powershell_yn) as powershell,
	sum(x.linux_yn) as linux
from
	(
	select
		a.id ,
		cast(a.creationdate as date) as cdate, 
		case
			when datediff(day ,
			a.creationdate,
			a.deletiondate) <= 30 then 1
			else 0
		end as deletedwithinamonth,
		case
			when b.tags like '%<python>%' then 1
			else 0
		end as python_yn,
		case
			when b.tags like '%<javascript>%' then 1
			else 0
		end as javascript_yn,
		case
			when b.tags like '%<reactjs>%' then 1
			else 0
		end as reactjs_yn,
		case
			when b.tags like '%<java>%' then 1
			else 0
		end as java_yn,
		case
			when b.tags like '%<c#>%' then 1
			else 0
		end as c#_yn,
		case
			when b.tags like '%<html>%' then 1
			else 0
		end as html_yn,
		case
			when b.tags like '%<r>%' then 1
			else 0
		end as r_yn,
		case
			when b.tags like '%<pandas>%' then 1
			else 0
		end as pandas_yn,
		case
			when b.tags like '%<css>%' then 1
			else 0
		end as css_yn,
		case
			when b.tags like '%<flutter>%' then 1
			else 0
		end as flutter_yn,
		case
			when b.tags like '%<sql>%' then 1
			else 0
		end as sql_yn,
		case
			when b.tags like '%<android>%' then 1
			else 0
		end as android_yn,
		case
			when b.tags like '%<node.js>%' then 1
			else 0
		end as nodejs_yn,
		case
			when b.tags like '%<c++>%' then 1
			else 0
		end as cplusplus_yn,
		case
			when b.tags like '%<typescript>%' then 1
			else 0
		end as typescript_yn,
		case
			when b.tags like '%<php>%' then 1
			else 0
		end as php_yn,
		case
			when b.tags like '%<python-3.x>%' then 1
			else 0
		end as python_3x_yn,
		case
			when b.tags like '%<dataframe>%' then 1
			else 0
		end as dataframe_yn,
		case
			when b.tags like '%<arrays>%' then 1
			else 0
		end as arrays_yn,
		case
			when b.tags like '%<angular>%' then 1
			else 0
		end as angular_yn,
		case
			when b.tags like '%<django>%' then 1
			else 0
		end as django_yn,
		case
			when b.tags like '%<json>%' then 1
			else 0
		end as json_yn,
		case
			when b.tags like '%<dart>%' then 1
			else 0
		end as dart_yn,
		case
			when b.tags like '%<mysql>%' then 1
			else 0
		end as mysql_yn,
		case
			when b.tags like '%<c>%' then 1
			else 0
		end as c_yn,
		case
			when b.tags like '%<excel>%' then 1
			else 0
		end as excel_yn,
		case
			when b.tags like '%<laravel>%' then 1
			else 0
		end as laravel_yn,
		case
			when b.tags like '%<swift>%' then 1
			else 0
		end as swift_yn,
		case
			when b.tags like '%<spring-boot>%' then 1
			else 0
		end as spring_boot_yn,
		case
			when b.tags like '%<amazon-web-services>%' then 1
			else 0
		end as amazon_web_services_yn,
		case
			when b.tags like '%<react-native>%' then 1
			else 0
		end as react_native_yn,
		case
			when b.tags like '%<postgresql>%' then 1
			else 0
		end as postgresql_yn,
		case
			when b.tags like '%<azure>%' then 1
			else 0
		end as azure_yn,
		case
			when b.tags like '%<kotlin>%' then 1
			else 0
		end as kotlin_yn,
		case
			when b.tags like '%<docker>%' then 1
			else 0
		end as docker_yn,
		case
			when b.tags like '%<list>%' then 1
			else 0
		end as list_yn,
		case
			when b.tags like '%<firebase>%' then 1
			else 0
		end as firebase_yn,
		case
			when b.tags like '%<ios>%' then 1
			else 0
		end as ios_yn,
		case
			when b.tags like '%<sql-server>%' then 1
			else 0
		end as sql_server_yn,
		case
			when b.tags like '%<jquery>%' then 1
			else 0
		end as jquery_yn,
		case
			when b.tags like '%<mongodb>%' then 1
			else 0
		end as mongodb_yn,
		case
			when b.tags like '%<vue.js>%' then 1
			else 0
		end as vuejs_yn,
		case
			when b.tags like '%<numpy>%' then 1
			else 0
		end as numpy_yn,
		case
			when b.tags like '%<.net>%' then 1
			else 0
		end as net_yn,
		case
			when b.tags like '%<vba>%' then 1
			else 0
		end as vba_yn,
		case
			when b.tags like '%<regex>%' then 1
			else 0
		end as regex_yn,
		case
			when b.tags like '%<string>%' then 1
			else 0
		end as string_yn,
		case
			when b.tags like '%<spring>%' then 1
			else 0
		end as spring_yn,
		case
			when b.tags like '%<powershell>%' then 1
			else 0
		end as powershell_yn,
		case
			when b.tags like '%<linux>%' then 1
			else 0
		end as linux_yn
	from
		postswithdeleted a 
	   ,
		postswithdeleted b
	where
		a.parentid = b.id
		and a.creationdate <= '2023-11-30'
		and a.creationdate >= '2022-11-30'
		and a.posttypeid = '2'
		and datediff(day ,
		a.creationdate,
		a.deletiondate) <= 365
		--and a.deletiondate <= '2023-12-03' 
		and 
   ( b.tags like '%<python>%'
			or b.tags like '%<javascript>%'
			or b.tags like '%<reactjs>%'
			or b.tags like '%<java>%'
			or b.tags like '%<c#>%'
			or b.tags like '%<html>%'
			or b.tags like '%<r>%'
			or b.tags like '%<pandas>%'
			or b.tags like '%<css>%'
			or b.tags like '%<flutter>%'
			or b.tags like '%<sql>%'
			or b.tags like '%<android>%'
			or b.tags like '%<node.js>%'
			or b.tags like '%<c++>%'
			or b.tags like '%<typescript>%'
			or b.tags like '%<php>%'
			or b.tags like '%<python-3.x>%'
			or b.tags like '%<dataframe>%'
			or b.tags like '%<arrays>%'
			or b.tags like '%<angular>%'
			or b.tags like '%<django>%'
			or b.tags like '%<json>%'
			or b.tags like '%<dart>%'
			or b.tags like '%<mysql>%'
			or b.tags like '%<c>%'
			or b.tags like '%<excel>%'
			or b.tags like '%<laravel>%'
			or b.tags like '%<swift>%'
			or b.tags like '%<spring-boot>%'
			or b.tags like '%<amazon-web-services>%'
			or b.tags like '%<react-native>%'
			or b.tags like '%<postgresql>%'
			or b.tags like '%<azure>%'
			or b.tags like '%<kotlin>%'
			or b.tags like '%<docker>%'
			or b.tags like '%<list>%'
			or b.tags like '%<firebase>%'
			or b.tags like '%<ios>%'
			or b.tags like '%<sql-server>%'
			or b.tags like '%<jquery>%'
			or b.tags like '%<mongodb>%'
			or b.tags like '%<vue.js>%'
			or b.tags like '%<numpy>%'
			or b.tags like '%<.net>%'
			or b.tags like '%<vba>%'
			or b.tags like '%<regex>%'
			or b.tags like '%<string>%'
			or b.tags like '%<spring>%'
			or b.tags like '%<powershell>%'
			or b.tags like '%<linux>%')) x
	group by
		x.cdate ,
		x.deletedwithinamonth
 ;


select
	/*deletedQTags*/
	x.cdate ,
	x.deletedwithinamonth, 
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.c#_yn) as c#,
	sum(x.html_yn) as html,
	sum(x.r_yn) as r,
	sum(x.pandas_yn) as pandas,
	sum(x.css_yn) as css,
	sum(x.flutter_yn) as flutter,
	sum(x.sql_yn) as sql,
	sum(x.android_yn) as android,
	sum(x.nodejs_yn) as nodejs,
	sum(x.cplusplus_yn) as cplusplus,
	sum(x.typescript_yn) as typescript,
	sum(x.php_yn) as php,
	sum(x.python_3x_yn) as python_3x,
	sum(x.dataframe_yn) as dataframe,
	sum(x.arrays_yn) as arrays,
	sum(x.angular_yn) as angular,
	sum(x.django_yn) as django,
	sum(x.json_yn) as json,
	sum(x.dart_yn) as dart,
	sum(x.mysql_yn) as mysql,
	sum(x.c_yn) as c,
	sum(x.excel_yn) as excel,
	sum(x.laravel_yn) as laravel,
	sum(x.swift_yn) as swift,
	sum(x.spring_boot_yn) as spring_boot,
	sum(x.amazon_web_services_yn) as amazon_web_services,
	sum(x.react_native_yn) as react_native,
	sum(x.postgresql_yn) as postgresql,
	sum(x.azure_yn) as azure,
	sum(x.kotlin_yn) as kotlin,
	sum(x.docker_yn) as docker,
	sum(x.list_yn) as list,
	sum(x.firebase_yn) as firebase,
	sum(x.ios_yn) as ios,
	sum(x.sql_server_yn) as sql_server,
	sum(x.jquery_yn) as jquery,
	sum(x.mongodb_yn) as mongodb,
	sum(x.vuejs_yn) as vuejs,
	sum(x.numpy_yn) as numpy,
	sum(x.net_yn) as net,
	sum(x.vba_yn) as vba,
	sum(x.regex_yn) as regex,
	sum(x.string_yn) as string,
	sum(x.spring_yn) as spring,
	sum(x.powershell_yn) as powershell,
	sum(x.linux_yn) as linux
from
	(
	select
		id ,
		cast(creationdate as date) as cdate, 
		case
			when datediff(day ,
			creationdate,
			deletiondate) <= 30 then 1
			else 0
		end as deletedwithinamonth,
		case
			when tags like '%<python>%' then 1
			else 0
		end as python_yn,
		case
			when tags like '%<javascript>%' then 1
			else 0
		end as javascript_yn,
		case
			when tags like '%<reactjs>%' then 1
			else 0
		end as reactjs_yn,
		case
			when tags like '%<java>%' then 1
			else 0
		end as java_yn,
		case
			when tags like '%<c#>%' then 1
			else 0
		end as c#_yn,
		case
			when tags like '%<html>%' then 1
			else 0
		end as html_yn,
		case
			when tags like '%<r>%' then 1
			else 0
		end as r_yn,
		case
			when tags like '%<pandas>%' then 1
			else 0
		end as pandas_yn,
		case
			when tags like '%<css>%' then 1
			else 0
		end as css_yn,
		case
			when tags like '%<flutter>%' then 1
			else 0
		end as flutter_yn,
		case
			when tags like '%<sql>%' then 1
			else 0
		end as sql_yn,
		case
			when tags like '%<android>%' then 1
			else 0
		end as android_yn,
		case
			when tags like '%<node.js>%' then 1
			else 0
		end as nodejs_yn,
		case
			when tags like '%<c++>%' then 1
			else 0
		end as cplusplus_yn,
		case
			when tags like '%<typescript>%' then 1
			else 0
		end as typescript_yn,
		case
			when tags like '%<php>%' then 1
			else 0
		end as php_yn,
		case
			when tags like '%<python-3.x>%' then 1
			else 0
		end as python_3x_yn,
		case
			when tags like '%<dataframe>%' then 1
			else 0
		end as dataframe_yn,
		case
			when tags like '%<arrays>%' then 1
			else 0
		end as arrays_yn,
		case
			when tags like '%<angular>%' then 1
			else 0
		end as angular_yn,
		case
			when tags like '%<django>%' then 1
			else 0
		end as django_yn,
		case
			when tags like '%<json>%' then 1
			else 0
		end as json_yn,
		case
			when tags like '%<dart>%' then 1
			else 0
		end as dart_yn,
		case
			when tags like '%<mysql>%' then 1
			else 0
		end as mysql_yn,
		case
			when tags like '%<c>%' then 1
			else 0
		end as c_yn,
		case
			when tags like '%<excel>%' then 1
			else 0
		end as excel_yn,
		case
			when tags like '%<laravel>%' then 1
			else 0
		end as laravel_yn,
		case
			when tags like '%<swift>%' then 1
			else 0
		end as swift_yn,
		case
			when tags like '%<spring-boot>%' then 1
			else 0
		end as spring_boot_yn,
		case
			when tags like '%<amazon-web-services>%' then 1
			else 0
		end as amazon_web_services_yn,
		case
			when tags like '%<react-native>%' then 1
			else 0
		end as react_native_yn,
		case
			when tags like '%<postgresql>%' then 1
			else 0
		end as postgresql_yn,
		case
			when tags like '%<azure>%' then 1
			else 0
		end as azure_yn,
		case
			when tags like '%<kotlin>%' then 1
			else 0
		end as kotlin_yn,
		case
			when tags like '%<docker>%' then 1
			else 0
		end as docker_yn,
		case
			when tags like '%<list>%' then 1
			else 0
		end as list_yn,
		case
			when tags like '%<firebase>%' then 1
			else 0
		end as firebase_yn,
		case
			when tags like '%<ios>%' then 1
			else 0
		end as ios_yn,
		case
			when tags like '%<sql-server>%' then 1
			else 0
		end as sql_server_yn,
		case
			when tags like '%<jquery>%' then 1
			else 0
		end as jquery_yn,
		case
			when tags like '%<mongodb>%' then 1
			else 0
		end as mongodb_yn,
		case
			when tags like '%<vue.js>%' then 1
			else 0
		end as vuejs_yn,
		case
			when tags like '%<numpy>%' then 1
			else 0
		end as numpy_yn,
		case
			when tags like '%<.net>%' then 1
			else 0
		end as net_yn,
		case
			when tags like '%<vba>%' then 1
			else 0
		end as vba_yn,
		case
			when tags like '%<regex>%' then 1
			else 0
		end as regex_yn,
		case
			when tags like '%<string>%' then 1
			else 0
		end as string_yn,
		case
			when tags like '%<spring>%' then 1
			else 0
		end as spring_yn,
		case
			when tags like '%<powershell>%' then 1
			else 0
		end as powershell_yn,
		case
			when tags like '%<linux>%' then 1
			else 0
		end as linux_yn
	from
		postswithdeleted
	where
		creationdate <= '2023-11-30'
		and creationdate >= '2022-11-30'
		and posttypeid = '1'
		and datediff(day , creationdate, deletiondate) <= 365
		--and deletiondate <= '2023-12-03'
		and 
   (  
	tags like '%<python>%'
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
   ) ) x
group by
	x.cdate ,
	x.deletedwithinamonth
 ;


