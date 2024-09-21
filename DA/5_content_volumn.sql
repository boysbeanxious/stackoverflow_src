select x.cdate, x.tag, count(id) as cnt
  from (
select id, cast(creationdate as date) as cdate, 
        case when tags like '%<.net>%' then '.net' when tags like '%<amazon-web-services>%' then 'amazon-web-services' when tags like '%<android>%' then 'android' when tags like '%<angular>%' then 'angular' when tags like '%<api>%' then 'api' when tags like '%<arrays>%' then 'arrays' when tags like '%<azure>%' then 'azure' when tags like '%<c>%' then 'c' when tags like '%<c#>%' then 'c#' when tags like '%<c++>%' then 'c++' when tags like '%<css>%' then 'css' when tags like '%<dart>%' then 'dart' when tags like '%<dataframe>%' then 'dataframe' when tags like '%<django>%' then 'django' when tags like '%<docker>%' then 'docker' when tags like '%<excel>%' then 'excel' when tags like '%<firebase>%' then 'firebase' when tags like '%<flutter>%' then 'flutter' when tags like '%<html>%' then 'html' when tags like '%<ios>%' then 'ios' when tags like '%<java>%' then 'java' when tags like '%<javascript>%' then 'javascript' when tags like '%<jquery>%' then 'jquery' when tags like '%<json>%' then 'json' when tags like '%<kotlin>%' then 'kotlin' when tags like '%<laravel>%' then 'laravel' when tags like '%<linux>%' then 'linux' when tags like '%<list>%' then 'list' when tags like '%<mongodb>%' then 'mongodb' when tags like '%<mysql>%' then 'mysql' when tags like '%<next.js>%' then 'next.js' when tags like '%<node.js>%' then 'node.js' when tags like '%<numpy>%' then 'numpy' when tags like '%<pandas>%' then 'pandas' when tags like '%<php>%' then 'php' when tags like '%<postgresql>%' then 'postgresql' when tags like '%<python>%' then 'python' when tags like '%<python-3.x>%' then 'python-3.x' when tags like '%<r>%' then 'r' when tags like '%<react-native>%' then 'react-native' when tags like '%<reactjs>%' then 'reactjs' when tags like '%<spring>%' then 'spring' when tags like '%<spring-boot>%' then 'spring-boot' when tags like '%<sql>%' then 'sql' when tags like '%<sql-server>%' then 'sql-server' when tags like '%<swift>%' then 'swift' when tags like '%<typescript>%' then 'typescript' when tags like '%<vba>%' then 'vba' when tags like '%<visual-studio-code>%' then 'visual-studio-code' when tags like '%<vue.js>%' then 'vue.js'
             end as tag 
   from postswithdeleted 
   where creationdate between '2022-10-05' and '2023-03-14'
    and posttypeid = '1'
    and (tags like '%<.net>%' or tags like '%<amazon-web-services>%' or tags like '%<android>%' or tags like '%<angular>%' or tags like '%<api>%' or tags like '%<arrays>%' or tags like '%<azure>%' or tags like '%<c>%' or tags like '%<c#>%' or tags like '%<c++>%' or tags like '%<css>%' or tags like '%<dart>%' or tags like '%<dataframe>%' or tags like '%<django>%' or tags like '%<docker>%' or tags like '%<excel>%' or tags like '%<firebase>%' or tags like '%<flutter>%' or tags like '%<html>%' or tags like '%<ios>%' or tags like '%<java>%' or tags like '%<javascript>%' or tags like '%<jquery>%' or tags like '%<json>%' or tags like '%<kotlin>%' or tags like '%<laravel>%' or tags like '%<linux>%' or tags like '%<list>%' or tags like '%<mongodb>%' or tags like '%<mysql>%' or tags like '%<next.js>%' or tags like '%<node.js>%' or tags like '%<numpy>%' or tags like '%<pandas>%' or tags like '%<php>%' or tags like '%<postgresql>%' or tags like '%<python>%' or tags like '%<python-3.x>%' or tags like '%<r>%' or tags like '%<react-native>%' or tags like '%<reactjs>%' or tags like '%<spring>%' or tags like '%<spring-boot>%' or tags like '%<sql>%' or tags like '%<sql-server>%' or tags like '%<swift>%' or tags like '%<typescript>%' or tags like '%<vba>%' or tags like '%<visual-studio-code>%' or tags like '%<vue.js>%')
    )x 
group by x.cdate, x.tag 
order by x.cdate
;

select x.cdate, x.tag, count(id) as cnt
  from (
select id, cast(creationdate as date) as cdate, 
        case when tags like '%<.net>%' then '.net' when tags like '%<amazon-web-services>%' then 'amazon-web-services' when tags like '%<android>%' then 'android' when tags like '%<angular>%' then 'angular' when tags like '%<api>%' then 'api' when tags like '%<arrays>%' then 'arrays' when tags like '%<azure>%' then 'azure' when tags like '%<c>%' then 'c' when tags like '%<c#>%' then 'c#' when tags like '%<c++>%' then 'c++' when tags like '%<css>%' then 'css' when tags like '%<dart>%' then 'dart' when tags like '%<dataframe>%' then 'dataframe' when tags like '%<django>%' then 'django' when tags like '%<docker>%' then 'docker' when tags like '%<excel>%' then 'excel' when tags like '%<firebase>%' then 'firebase' when tags like '%<flutter>%' then 'flutter' when tags like '%<html>%' then 'html' when tags like '%<ios>%' then 'ios' when tags like '%<java>%' then 'java' when tags like '%<javascript>%' then 'javascript' when tags like '%<jquery>%' then 'jquery' when tags like '%<json>%' then 'json' when tags like '%<kotlin>%' then 'kotlin' when tags like '%<laravel>%' then 'laravel' when tags like '%<linux>%' then 'linux' when tags like '%<list>%' then 'list' when tags like '%<mongodb>%' then 'mongodb' when tags like '%<mysql>%' then 'mysql' when tags like '%<next.js>%' then 'next.js' when tags like '%<node.js>%' then 'node.js' when tags like '%<numpy>%' then 'numpy' when tags like '%<pandas>%' then 'pandas' when tags like '%<php>%' then 'php' when tags like '%<postgresql>%' then 'postgresql' when tags like '%<python>%' then 'python' when tags like '%<python-3.x>%' then 'python-3.x' when tags like '%<r>%' then 'r' when tags like '%<react-native>%' then 'react-native' when tags like '%<reactjs>%' then 'reactjs' when tags like '%<spring>%' then 'spring' when tags like '%<spring-boot>%' then 'spring-boot' when tags like '%<sql>%' then 'sql' when tags like '%<sql-server>%' then 'sql-server' when tags like '%<swift>%' then 'swift' when tags like '%<typescript>%' then 'typescript' when tags like '%<vba>%' then 'vba' when tags like '%<visual-studio-code>%' then 'visual-studio-code' when tags like '%<vue.js>%' then 'vue.js'
             end as tag 
   from postswithdeleted 
   where cast(creationdate as date) between '2023-01-01' and '2023-03-14'
    and posttypeid = '1'
    and (tags like '%<.net>%' or tags like '%<amazon-web-services>%' or tags like '%<android>%' or tags like '%<angular>%' or tags like '%<api>%' or tags like '%<arrays>%' or tags like '%<azure>%' or tags like '%<c>%' or tags like '%<c#>%' or tags like '%<c++>%' or tags like '%<css>%' or tags like '%<dart>%' or tags like '%<dataframe>%' or tags like '%<django>%' or tags like '%<docker>%' or tags like '%<excel>%' or tags like '%<firebase>%' or tags like '%<flutter>%' or tags like '%<html>%' or tags like '%<ios>%' or tags like '%<java>%' or tags like '%<javascript>%' or tags like '%<jquery>%' or tags like '%<json>%' or tags like '%<kotlin>%' or tags like '%<laravel>%' or tags like '%<linux>%' or tags like '%<list>%' or tags like '%<mongodb>%' or tags like '%<mysql>%' or tags like '%<next.js>%' or tags like '%<node.js>%' or tags like '%<numpy>%' or tags like '%<pandas>%' or tags like '%<php>%' or tags like '%<postgresql>%' or tags like '%<python>%' or tags like '%<python-3.x>%' or tags like '%<r>%' or tags like '%<react-native>%' or tags like '%<reactjs>%' or tags like '%<spring>%' or tags like '%<spring-boot>%' or tags like '%<sql>%' or tags like '%<sql-server>%' or tags like '%<swift>%' or tags like '%<typescript>%' or tags like '%<vba>%' or tags like '%<visual-studio-code>%' or tags like '%<vue.js>%')
    )x 
group by x.cdate, x.tag 
;


select
	x.cdate,
	sum(x.net_yn) as net,
	sum(x.amazon_web_services_yn) as amazon_web_services,
	sum(x.android_yn) as android,
	sum(x.angular_yn) as angular,
	sum(x.api_yn) as api,
	sum(x.arrays_yn) as arrays,
	sum(x.azure_yn) as azure,
	sum(x.c_yn) as c,
	sum(x.c#_yn) as c#,
	sum(x.cplusplus_yn) as cplusplus,
	sum(x.css_yn) as css,
	sum(x.dart_yn) as dart,
	sum(x.dataframe_yn) as dataframe,
	sum(x.django_yn) as django,
	sum(x.docker_yn) as docker,
	sum(x.excel_yn) as excel,
	sum(x.firebase_yn) as firebase,
	sum(x.flutter_yn) as flutter,
	sum(x.html_yn) as html,
	sum(x.ios_yn) as ios,
	sum(x.java_yn) as java,
	sum(x.javascript_yn) as javascript,
	sum(x.jquery_yn) as jquery,
	sum(x.json_yn) as json,
	sum(x.kotlin_yn) as kotlin,
	sum(x.laravel_yn) as laravel,
	sum(x.linux_yn) as linux,
	sum(x.list_yn) as list,
	sum(x.mongodb_yn) as mongodb,
	sum(x.mysql_yn) as mysql,
	sum(x.nextjs_yn) as nextjs,
	sum(x.nodejs_yn) as nodejs,
	sum(x.numpy_yn) as numpy,
	sum(x.pandas_yn) as pandas,
	sum(x.php_yn) as php,
	sum(x.postgresql_yn) as postgresql,
	sum(x.python_yn) as python,
	sum(x.python_3x_yn) as python_3x,
	sum(x.r_yn) as r,
	sum(x.react_native_yn) as react_native,
	sum(x.reactjs_yn) as reactjs,
	sum(x.spring_yn) as spring,
	sum(x.spring_boot_yn) as spring_boot,
	sum(x.sql_yn) as sql,
	sum(x.sql_server_yn) as sql_server,
	sum(x.swift_yn) as swift,
	sum(x.typescript_yn) as typescript,
	sum(x.vba_yn) as vba,
	sum(x.visual_studio_code_yn) as visual_studio_code,
	sum(x.vuejs_yn) as vuejs
from
	(
	select
		id,
		cast(creationdate as date) as cdate,
		case
			when tags like '%.net%' then 1
			else 0
		end as net_yn,
		case
			when tags like '%<amazon-web-services>%' then 1
			else 0
		end as amazon_web_services_yn,
		case
			when tags like '%<android>%' then 1
			else 0
		end as android_yn,
		case
			when tags like '%<angular>%' then 1
			else 0
		end as angular_yn,
		case
			when tags like '%<api>%' then 1
			else 0
		end as api_yn,
		case
			when tags like '%<arrays>%' then 1
			else 0
		end as arrays_yn,
		case
			when tags like '%<azure>%' then 1
			else 0
		end as azure_yn,
		case
			when tags like '%<c>%' then 1
			else 0
		end as c_yn,
		case
			when tags like '%<c#>%' then 1
			else 0
		end as c#_yn,
		case
			when tags like '%<c++>%' then 1
			else 0
		end as cplusplus_yn,
		case
			when tags like '%<css>%' then 1
			else 0
		end as css_yn,
		case
			when tags like '%<dart>%' then 1
			else 0
		end as dart_yn,
		case
			when tags like '%<dataframe>%' then 1
			else 0
		end as dataframe_yn,
		case
			when tags like '%<django>%' then 1
			else 0
		end as django_yn,
		case
			when tags like '%<docker>%' then 1
			else 0
		end as docker_yn,
		case
			when tags like '%<excel>%' then 1
			else 0
		end as excel_yn,
		case
			when tags like '%<firebase>%' then 1
			else 0
		end as firebase_yn,
		case
			when tags like '%<flutter>%' then 1
			else 0
		end as flutter_yn,
		case
			when tags like '%<html>%' then 1
			else 0
		end as html_yn,
		case
			when tags like '%<ios>%' then 1
			else 0
		end as ios_yn,
		case
			when tags like '%<java>%' then 1
			else 0
		end as java_yn,
		case
			when tags like '%<javascript>%' then 1
			else 0
		end as javascript_yn,
		case
			when tags like '%<jquery>%' then 1
			else 0
		end as jquery_yn,
		case
			when tags like '%<json>%' then 1
			else 0
		end as json_yn,
		case
			when tags like '%<kotlin>%' then 1
			else 0
		end as kotlin_yn,
		case
			when tags like '%<laravel>%' then 1
			else 0
		end as laravel_yn,
		case
			when tags like '%<linux>%' then 1
			else 0
		end as linux_yn,
		case
			when tags like '%<list>%' then 1
			else 0
		end as list_yn,
		case
			when tags like '%<mongodb>%' then 1
			else 0
		end as mongodb_yn,
		case
			when tags like '%<mysql>%' then 1
			else 0
		end as mysql_yn,
		case
			when tags like '%<next.js>%' then 1
			else 0
		end as nextjs_yn,
		case
			when tags like '%<node.js>%' then 1
			else 0
		end as nodejs_yn,
		case
			when tags like '%<numpy>%' then 1
			else 0
		end as numpy_yn,
		case
			when tags like '%<pandas>%' then 1
			else 0
		end as pandas_yn,
		case
			when tags like '%<php>%' then 1
			else 0
		end as php_yn,
		case
			when tags like '%<postgresql>%' then 1
			else 0
		end as postgresql_yn,
		case
			when tags like '%<python>%' then 1
			else 0
		end as python_yn,
		case
			when tags like '%<python-3.x>%' then 1
			else 0
		end as python_3x_yn,
		case
			when tags like '%<r>%' then 1
			else 0
		end as r_yn,
		case
			when tags like '%<react-native>%' then 1
			else 0
		end as react_native_yn,
		case
			when tags like '%<reactjs>%' then 1
			else 0
		end as reactjs_yn,
		case
			when tags like '%<spring>%' then 1
			else 0
		end as spring_yn,
		case
			when tags like '%<spring-boot>%' then 1
			else 0
		end as spring_boot_yn,
		case
			when tags like '%<sql>%' then 1
			else 0
		end as sql_yn,
		case
			when tags like '%<sql-server>%' then 1
			else 0
		end as sql_server_yn,
		case
			when tags like '%<swift>%' then 1
			else 0
		end as swift_yn,
		case
			when tags like '%<typescript>%' then 1
			else 0
		end as typescript_yn,
		case
			when tags like '%<vba>%' then 1
			else 0
		end as vba_yn,
		case
			when tags like '%<visual-studio-code>%' then 1
			else 0
		end as visual_studio_code_yn,
		case
			when tags like '%<vue.js>%' then 1
			else 0
		end as vuejs_yn
	from
		postswithdeleted
	where
		cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		and (tags like '%.net%'
			or tags like '%<amazon-web-services>%'
			or tags like '%<android>%'
			or tags like '%<angular>%'
			or tags like '%<api>%'
			or tags like '%<arrays>%'
			or tags like '%<azure>%'
			or tags like '%<c>%'
			or tags like '%<c#>%'
			or tags like '%<c++>%'
			or tags like '%<css>%'
			or tags like '%<dart>%'
			or tags like '%<dataframe>%'
			or tags like '%<django>%'
			or tags like '%<docker>%'
			or tags like '%<excel>%'
			or tags like '%<firebase>%'
			or tags like '%<flutter>%'
			or tags like '%<html>%'
			or tags like '%<ios>%'
			or tags like '%<java>%'
			or tags like '%<javascript>%'
			or tags like '%<jquery>%'
			or tags like '%<json>%'
			or tags like '%<kotlin>%'
			or tags like '%<laravel>%'
			or tags like '%<linux>%'
			or tags like '%<list>%'
			or tags like '%<mongodb>%'
			or tags like '%<mysql>%'
			or tags like '%<next.js>%'
			or tags like '%<node.js>%'
			or tags like '%<numpy>%'
			or tags like '%<pandas>%'
			or tags like '%<php>%'
			or tags like '%<postgresql>%'
			or tags like '%<python>%'
			or tags like '%<python-3.x>%'
			or tags like '%<r>%'
			or tags like '%<react-native>%'
			or tags like '%<reactjs>%'
			or tags like '%<spring>%'
			or tags like '%<spring-boot>%'
			or tags like '%<sql>%'
			or tags like '%<sql-server>%'
			or tags like '%<swift>%'
			or tags like '%<typescript>%'
			or tags like '%<vba>%'
			or tags like '%<visual-studio-code>%'
			or tags like '%<vue.js>%')
    )x
group by
	x.cdate





select
	x.cdate,
    x.del_yn,
	sum(x.net_yn) as net,
	sum(x.amazon_web_services_yn) as amazon_web_services,
	sum(x.android_yn) as android,
	sum(x.angular_yn) as angular,
	sum(x.api_yn) as api,
	sum(x.arrays_yn) as arrays,
	sum(x.azure_yn) as azure,
	sum(x.c_yn) as c,
	sum(x.c#_yn) as c#,
	sum(x.cplusplus_yn) as cplusplus,
	sum(x.css_yn) as css,
	sum(x.dart_yn) as dart,
	sum(x.dataframe_yn) as dataframe,
	sum(x.django_yn) as django,
	sum(x.docker_yn) as docker,
	sum(x.excel_yn) as excel,
	sum(x.firebase_yn) as firebase,
	sum(x.flutter_yn) as flutter,
	sum(x.html_yn) as html,
	sum(x.ios_yn) as ios,
	sum(x.java_yn) as java,
	sum(x.javascript_yn) as javascript,
	sum(x.jquery_yn) as jquery,
	sum(x.json_yn) as json,
	sum(x.kotlin_yn) as kotlin,
	sum(x.laravel_yn) as laravel,
	sum(x.linux_yn) as linux,
	sum(x.list_yn) as list,
	sum(x.mongodb_yn) as mongodb,
	sum(x.mysql_yn) as mysql,
	sum(x.nextjs_yn) as nextjs,
	sum(x.nodejs_yn) as nodejs,
	sum(x.numpy_yn) as numpy,
	sum(x.pandas_yn) as pandas,
	sum(x.php_yn) as php,
	sum(x.postgresql_yn) as postgresql,
	sum(x.python_yn) as python,
	sum(x.python_3x_yn) as python_3x,
	sum(x.r_yn) as r,
	sum(x.react_native_yn) as react_native,
	sum(x.reactjs_yn) as reactjs,
	sum(x.spring_yn) as spring,
	sum(x.spring_boot_yn) as spring_boot,
	sum(x.sql_yn) as sql,
	sum(x.sql_server_yn) as sql_server,
	sum(x.swift_yn) as swift,
	sum(x.typescript_yn) as typescript,
	sum(x.vba_yn) as vba,
	sum(x.visual_studio_code_yn) as visual_studio_code,
	sum(x.vuejs_yn) as vuejs
from
	(
	select
		id,
		cast(creationdate as date) as cdate
,
		case
			when tags like '%.net%' then 1
			else 0
		end as net_yn,
		case
			when tags like '%<amazon-web-services>%' then 1
			else 0
		end as amazon_web_services_yn,
		case
			when tags like '%<android>%' then 1
			else 0
		end as android_yn,
		case
			when tags like '%<angular>%' then 1
			else 0
		end as angular_yn,
		case
			when tags like '%<api>%' then 1
			else 0
		end as api_yn,
		case
			when tags like '%<arrays>%' then 1
			else 0
		end as arrays_yn,
		case
			when tags like '%<azure>%' then 1
			else 0
		end as azure_yn,
		case
			when tags like '%<c>%' then 1
			else 0
		end as c_yn,
		case
			when tags like '%<c#>%' then 1
			else 0
		end as c#_yn,
		case
			when tags like '%<c++>%' then 1
			else 0
		end as cplusplus_yn,
		case
			when tags like '%<css>%' then 1
			else 0
		end as css_yn,
		case
			when tags like '%<dart>%' then 1
			else 0
		end as dart_yn,
		case
			when tags like '%<dataframe>%' then 1
			else 0
		end as dataframe_yn,
		case
			when tags like '%<django>%' then 1
			else 0
		end as django_yn,
		case
			when tags like '%<docker>%' then 1
			else 0
		end as docker_yn,
		case
			when tags like '%<excel>%' then 1
			else 0
		end as excel_yn,
		case
			when tags like '%<firebase>%' then 1
			else 0
		end as firebase_yn,
		case
			when tags like '%<flutter>%' then 1
			else 0
		end as flutter_yn,
		case
			when tags like '%<html>%' then 1
			else 0
		end as html_yn,
		case
			when tags like '%<ios>%' then 1
			else 0
		end as ios_yn,
		case
			when tags like '%<java>%' then 1
			else 0
		end as java_yn,
		case
			when tags like '%<javascript>%' then 1
			else 0
		end as javascript_yn,
		case
			when tags like '%<jquery>%' then 1
			else 0
		end as jquery_yn,
		case
			when tags like '%<json>%' then 1
			else 0
		end as json_yn,
		case
			when tags like '%<kotlin>%' then 1
			else 0
		end as kotlin_yn,
		case
			when tags like '%<laravel>%' then 1
			else 0
		end as laravel_yn,
		case
			when tags like '%<linux>%' then 1
			else 0
		end as linux_yn,
		case
			when tags like '%<list>%' then 1
			else 0
		end as list_yn,
		case
			when tags like '%<mongodb>%' then 1
			else 0
		end as mongodb_yn,
		case
			when tags like '%<mysql>%' then 1
			else 0
		end as mysql_yn,
		case
			when tags like '%<next.js>%' then 1
			else 0
		end as nextjs_yn,
		case
			when tags like '%<node.js>%' then 1
			else 0
		end as nodejs_yn,
		case
			when tags like '%<numpy>%' then 1
			else 0
		end as numpy_yn,
		case
			when tags like '%<pandas>%' then 1
			else 0
		end as pandas_yn,
		case
			when tags like '%<php>%' then 1
			else 0
		end as php_yn,
		case
			when tags like '%<postgresql>%' then 1
			else 0
		end as postgresql_yn,
		case
			when tags like '%<python>%' then 1
			else 0
		end as python_yn,
		case
			when tags like '%<python-3.x>%' then 1
			else 0
		end as python_3x_yn,
		case
			when tags like '%<r>%' then 1
			else 0
		end as r_yn,
		case
			when tags like '%<react-native>%' then 1
			else 0
		end as react_native_yn,
		case
			when tags like '%<reactjs>%' then 1
			else 0
		end as reactjs_yn,
		case
			when tags like '%<spring>%' then 1
			else 0
		end as spring_yn,
		case
			when tags like '%<spring-boot>%' then 1
			else 0
		end as spring_boot_yn,
		case
			when tags like '%<sql>%' then 1
			else 0
		end as sql_yn,
		case
			when tags like '%<sql-server>%' then 1
			else 0
		end as sql_server_yn,
		case
			when tags like '%<swift>%' then 1
			else 0
		end as swift_yn,
		case
			when tags like '%<typescript>%' then 1
			else 0
		end as typescript_yn,
		case
			when tags like '%<vba>%' then 1
			else 0
		end as vba_yn,
		case
			when tags like '%<visual-studio-code>%' then 1
			else 0
		end as visual_studio_code_yn,
		case
			when tags like '%<vue.js>%' then 1
			else 0
		end as vuejs_yn,
        case
        when deletiondate<='2023-12-03' then 'Y' 
        else 'N' end 
        as del_yn
        
	from
		postswithdeleted
	where
		cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		and (tags like '%.net%'
			or tags like '%<amazon-web-services>%'
			or tags like '%<android>%'
			or tags like '%<angular>%'
			or tags like '%<api>%'
			or tags like '%<arrays>%'
			or tags like '%<azure>%'
			or tags like '%<c>%'
			or tags like '%<c#>%'
			or tags like '%<c++>%'
			or tags like '%<css>%'
			or tags like '%<dart>%'
			or tags like '%<dataframe>%'
			or tags like '%<django>%'
			or tags like '%<docker>%'
			or tags like '%<excel>%'
			or tags like '%<firebase>%'
			or tags like '%<flutter>%'
			or tags like '%<html>%'
			or tags like '%<ios>%'
			or tags like '%<java>%'
			or tags like '%<javascript>%'
			or tags like '%<jquery>%'
			or tags like '%<json>%'
			or tags like '%<kotlin>%'
			or tags like '%<laravel>%'
			or tags like '%<linux>%'
			or tags like '%<list>%'
			or tags like '%<mongodb>%'
			or tags like '%<mysql>%'
			or tags like '%<next.js>%'
			or tags like '%<node.js>%'
			or tags like '%<numpy>%'
			or tags like '%<pandas>%'
			or tags like '%<php>%'
			or tags like '%<postgresql>%'
			or tags like '%<python>%'
			or tags like '%<python-3.x>%'
			or tags like '%<r>%'
			or tags like '%<react-native>%'
			or tags like '%<reactjs>%'
			or tags like '%<spring>%'
			or tags like '%<spring-boot>%'
			or tags like '%<sql>%'
			or tags like '%<sql-server>%'
			or tags like '%<swift>%'
			or tags like '%<typescript>%'
			or tags like '%<vba>%'
			or tags like '%<visual-studio-code>%'
			or tags like '%<vue.js>%')
    )x
group by
	x.cdate, x.del_yn