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
	/*treat_X_X_condition3*/
	x.cdate ,
	x.del_yn, 
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
			when datediff(day , creationdate, deletiondate) <= 365 
			then 1
			else 0
		end as del_yn,
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
		-- treat_0_1_condition3.csv
		--cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat 0_2_condition3.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition3.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition3.csv
		cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		--and deletiondate <= '2023-12-03'
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
   ) ) x
group by
	x.cdate ,
	x.del_yn
 ;



select
	/*treat_X_X_condition2*/
	x.cdate ,
	x.del_yn, 
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
			when datediff(day , creationdate, deletiondate) <= 365 
			then 1
			else 0
		end as del_yn,
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
		-- treat_0_1_condition2.csv
		--cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat 0_2_condition2.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition2.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition2.csv
		cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		--and deletiondate <= '2023-12-03'
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
   ) ) x
group by
	x.cdate ,
	x.del_yn
 ;


select
	/*treat_X_X_condition2*/
	x.cdate ,
	x.del_yn, 
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
        when cast(deletiondate as date) <= '2023-12-03'
			then 1
			else 0
		end as del_yn,
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
		-- treat_0_1_condition2.csv
		cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat_0_2_condition2.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition2.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition2.csv
		--cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		--and deletiondate <= '2023-12-03'
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
   ) ) x
group by
	x.cdate ,
	x.del_yn
 ;


select
	/*treat_X_X_condition1*/
	x.cdate ,
	x.del_yn, 
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
        when deletiondate is not null 
			then 1
			else 0
		end as del_yn,
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
		-- treat_0_1_condition1.csv
		cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat_0_2_condition1.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition1.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition1.csv
		--cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		--and deletiondate <= '2023-12-03'
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
   ) ) x
group by
	x.cdate ,
	x.del_yn
 ;


select
	/*treat_X_X_condition1*/
	x.cdate ,
	x.del_yn, 
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
        when deletiondate is not null 
			then 1
			else 0
		end as del_yn,
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
		-- treat_0_1_condition1.csv
		--cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat_0_2_condition1.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition1.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition1.csv
		cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		and posttypeid = '1'
		--and deletiondate <= '2023-12-03'
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
   ) ) x
group by
	x.cdate ,
	x.del_yn
 ;



select /*post_treat_X*/
		x.cdate, x.tag, count(id) as cnt
  from (
select id, cast(creationdate as date) as cdate, 
        case when tags like '%<.net>%' then '.net' when tags like '%<amazon-web-services>%' then 'amazon-web-services' when tags like '%<android>%' then 'android' when tags like '%<angular>%' then 'angular' when tags like '%<api>%' then 'api' when tags like '%<arrays>%' then 'arrays' when tags like '%<azure>%' then 'azure' when tags like '%<c>%' then 'c' when tags like '%<c#>%' then 'c#' when tags like '%<c++>%' then 'c++' when tags like '%<css>%' then 'css' when tags like '%<dart>%' then 'dart' when tags like '%<dataframe>%' then 'dataframe' when tags like '%<django>%' then 'django' when tags like '%<docker>%' then 'docker' when tags like '%<excel>%' then 'excel' when tags like '%<firebase>%' then 'firebase' when tags like '%<flutter>%' then 'flutter' when tags like '%<html>%' then 'html' when tags like '%<ios>%' then 'ios' when tags like '%<java>%' then 'java' when tags like '%<javascript>%' then 'javascript' when tags like '%<jquery>%' then 'jquery' when tags like '%<json>%' then 'json' when tags like '%<kotlin>%' then 'kotlin' when tags like '%<laravel>%' then 'laravel' when tags like '%<linux>%' then 'linux' when tags like '%<list>%' then 'list' when tags like '%<mongodb>%' then 'mongodb' when tags like '%<mysql>%' then 'mysql' when tags like '%<next.js>%' then 'next.js' when tags like '%<node.js>%' then 'node.js' when tags like '%<numpy>%' then 'numpy' when tags like '%<pandas>%' then 'pandas' when tags like '%<php>%' then 'php' when tags like '%<postgresql>%' then 'postgresql' when tags like '%<python>%' then 'python' when tags like '%<python-3.x>%' then 'python-3.x' when tags like '%<r>%' then 'r' when tags like '%<react-native>%' then 'react-native' when tags like '%<reactjs>%' then 'reactjs' when tags like '%<spring>%' then 'spring' when tags like '%<spring-boot>%' then 'spring-boot' when tags like '%<sql>%' then 'sql' when tags like '%<sql-server>%' then 'sql-server' when tags like '%<swift>%' then 'swift' when tags like '%<typescript>%' then 'typescript' when tags like '%<vba>%' then 'vba' when tags like '%<visual-studio-code>%' then 'visual-studio-code' when tags like '%<vue.js>%' then 'vue.js'
             end as tag 
   from posts
  where
    	-- post_treat_0_1.csv
		-- cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- post_treat_0_2.csv
		-- cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- post_treat_1_1.csv
		-- cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- post_treat_1_2.csv
		-- cast(creationdate as date) between '2023-01-01' and '2023-03-14'

    and posttypeid = '1'
    and (tags like '%<.net>%' or tags like '%<amazon-web-services>%' or tags like '%<android>%' or tags like '%<angular>%' or tags like '%<api>%' or tags like '%<arrays>%' or tags like '%<azure>%' or tags like '%<c>%' or tags like '%<c#>%' or tags like '%<c++>%' or tags like '%<css>%' or tags like '%<dart>%' or tags like '%<dataframe>%' or tags like '%<django>%' or tags like '%<docker>%' or tags like '%<excel>%' or tags like '%<firebase>%' or tags like '%<flutter>%' or tags like '%<html>%' or tags like '%<ios>%' or tags like '%<java>%' or tags like '%<javascript>%' or tags like '%<jquery>%' or tags like '%<json>%' or tags like '%<kotlin>%' or tags like '%<laravel>%' or tags like '%<linux>%' or tags like '%<list>%' or tags like '%<mongodb>%' or tags like '%<mysql>%' or tags like '%<next.js>%' or tags like '%<node.js>%' or tags like '%<numpy>%' or tags like '%<pandas>%' or tags like '%<php>%' or tags like '%<postgresql>%' or tags like '%<python>%' or tags like '%<python-3.x>%' or tags like '%<r>%' or tags like '%<react-native>%' or tags like '%<reactjs>%' or tags like '%<spring>%' or tags like '%<spring-boot>%' or tags like '%<sql>%' or tags like '%<sql-server>%' or tags like '%<swift>%' or tags like '%<typescript>%' or tags like '%<vba>%' or tags like '%<visual-studio-code>%' or tags like '%<vue.js>%')
    )x 
group by x.cdate, x.tag 
;



--select
--	/*treat_X_X_condition1*/
--	x.cdate ,
--	x.del_yn, 
--	sum(x.python_yn) as python,
--	sum(x.javascript_yn) as javascript,
--	sum(x.reactjs_yn) as reactjs,
--	sum(x.java_yn) as java,
--	sum(x.c#_yn) as c#,
--	sum(x.html_yn) as html,
--	sum(x.r_yn) as r,
--	sum(x.pandas_yn) as pandas,
--	sum(x.css_yn) as css,
--	sum(x.flutter_yn) as flutter,
--	sum(x.sql_yn) as sql,
--	sum(x.android_yn) as android,
--	sum(x.nodejs_yn) as nodejs,
--	sum(x.cplusplus_yn) as cplusplus,
--	sum(x.typescript_yn) as typescript,
--	sum(x.php_yn) as php,
--	sum(x.python_3x_yn) as python_3x,
--	sum(x.dataframe_yn) as dataframe,
--	sum(x.arrays_yn) as arrays,
--	sum(x.angular_yn) as angular,
--	sum(x.django_yn) as django,
--	sum(x.json_yn) as json,
--	sum(x.dart_yn) as dart,
--	sum(x.mysql_yn) as mysql,
--	sum(x.c_yn) as c,
--	sum(x.excel_yn) as excel,
--	sum(x.laravel_yn) as laravel,
--	sum(x.swift_yn) as swift,
--	sum(x.spring_boot_yn) as spring_boot,
--	sum(x.amazon_web_services_yn) as amazon_web_services,
--	sum(x.react_native_yn) as react_native,
--	sum(x.postgresql_yn) as postgresql,
--	sum(x.azure_yn) as azure,
--	sum(x.kotlin_yn) as kotlin,
--	sum(x.docker_yn) as docker,
--	sum(x.list_yn) as list,
--	sum(x.firebase_yn) as firebase,
--	sum(x.ios_yn) as ios,
--	sum(x.sql_server_yn) as sql_server,
--	sum(x.jquery_yn) as jquery,
--	sum(x.mongodb_yn) as mongodb,
--	sum(x.vuejs_yn) as vuejs,
--	sum(x.numpy_yn) as numpy,
--	sum(x.net_yn) as net,
--	sum(x.vba_yn) as vba,
--	sum(x.regex_yn) as regex,
--	sum(x.string_yn) as string,
--	sum(x.spring_yn) as spring,
--	sum(x.powershell_yn) as powershell,
--	sum(x.linux_yn) as linux
--from
--	(
	select
        a.id,
		a.cdate, 
		a.del_yn, 
		a.tot,
        a.python_yn test, 
        convert (float, a.python_yn/a.tot) as python_yn ,
		a.javascript_yn / a.tot as javascript_yn ,
		a.reactjs_yn / a.tot as reactjs_yn ,
		a.java_yn / a.tot as java_yn ,
		a.c#_yn / a.tot as c#_yn ,
		a.html_yn / a.tot as html_yn ,
		a.r_yn / a.tot as r_yn ,
		a.pandas_yn / a.tot as pandas_yn ,
		a.css_yn / a.tot as css_yn ,
		a.flutter_yn / a.tot as flutter_yn ,
		a.sql_yn / a.tot as sql_yn ,
		a.android_yn / a.tot as android_yn ,
		a.nodejs_yn / a.tot as nodejs_yn ,
		a.cplusplus_yn / a.tot as cplusplus_yn ,
		a.typescript_yn / a.tot as typescript_yn ,
		a.php_yn / a.tot as php_yn ,
		a.python_3x_yn / a.tot as python_3x_yn ,
		a.dataframe_yn / a.tot as dataframe_yn ,
		a.arrays_yn / a.tot as arrays_yn ,
		a.angular_yn / a.tot as angular_yn ,
		a.django_yn / a.tot as django_yn ,
		a.json_yn / a.tot as json_yn ,
		a.dart_yn / a.tot as dart_yn ,
		a.mysql_yn / a.tot as mysql_yn ,
		a.c_yn / a.tot as c_yn ,
		a.excel_yn / a.tot as excel_yn ,
		a.laravel_yn / a.tot as laravel_yn ,
		a.swift_yn / a.tot as swift_yn ,
		a.spring_boot_yn / a.tot as spring_boot_yn ,
		a.amazon_web_services_yn / a.tot as amazon_web_services_yn ,
		a.react_native_yn / a.tot as react_native_yn ,
		a.postgresql_yn / a.tot as postgresql_yn ,
		a.azure_yn / a.tot as azure_yn ,
		a.kotlin_yn / a.tot as kotlin_yn ,
		a.docker_yn / a.tot as docker_yn ,
		a.list_yn / a.tot as list_yn ,
		a.firebase_yn / a.tot as firebase_yn ,
		a.ios_yn / a.tot as ios_yn ,
		a.sql_server_yn / a.tot as sql_server_yn ,
		a.jquery_yn / a.tot as jquery_yn ,
		a.mongodb_yn / a.tot as mongodb_yn ,
		a.vuejs_yn / a.tot as vuejs_yn ,
		a.numpy_yn / a.tot as numpy_yn ,
		a.net_yn / a.tot as net_yn ,
		a.vba_yn / a.tot as vba_yn ,
		a.regex_yn / a.tot as regex_yn ,
		a.string_yn / a.tot as string_yn ,
		a.spring_yn / a.tot as spring_yn ,
		a.powershell_yn / a.tot as powershell_yn ,
		a.linux_yn / a.tot as linux_yn
	from
		(
		select
            xx.id ,
			xx.cdate, 
			xx.del_yn, 
			xx.python_yn ,
			xx.javascript_yn ,
			xx.reactjs_yn ,
			xx.java_yn ,
			xx.c#_yn ,
			xx.html_yn ,
			xx.r_yn ,
			xx.pandas_yn ,
			xx.css_yn ,
			xx.flutter_yn ,
			xx.sql_yn ,
			xx.android_yn ,
			xx.nodejs_yn ,
			xx.cplusplus_yn ,
			xx.typescript_yn ,
			xx.php_yn ,
			xx.python_3x_yn ,
			xx.dataframe_yn ,
			xx.arrays_yn ,
			xx.angular_yn ,
			xx.django_yn ,
			xx.json_yn ,
			xx.dart_yn ,
			xx.mysql_yn ,
			xx.c_yn ,
			xx.excel_yn ,
			xx.laravel_yn ,
			xx.swift_yn ,
			xx.spring_boot_yn ,
			xx.amazon_web_services_yn ,
			xx.react_native_yn ,
			xx.postgresql_yn ,
			xx.azure_yn ,
			xx.kotlin_yn ,
			xx.docker_yn ,
			xx.list_yn ,
			xx.firebase_yn ,
			xx.ios_yn ,
			xx.sql_server_yn ,
			xx.jquery_yn ,
			xx.mongodb_yn ,
			xx.vuejs_yn ,
			xx.numpy_yn ,
			xx.net_yn ,
			xx.vba_yn ,
			xx.regex_yn ,
			xx.string_yn ,
			xx.spring_yn ,
			xx.powershell_yn ,
			xx.linux_yn ,
			xx.python_yn + xx.javascript_yn + xx.reactjs_yn + xx.java_yn + xx.c#_yn + xx.html_yn + xx.r_yn + xx.pandas_yn + xx.css_yn + xx.flutter_yn + xx.sql_yn + xx.android_yn + xx.nodejs_yn + xx.cplusplus_yn + xx.typescript_yn + xx.php_yn + xx.python_3x_yn + xx.dataframe_yn + xx.arrays_yn + xx.angular_yn + xx.django_yn + xx.json_yn + xx.dart_yn + xx.mysql_yn + xx.c_yn + xx.excel_yn + xx.laravel_yn + xx.swift_yn + xx.spring_boot_yn + xx.amazon_web_services_yn + xx.react_native_yn + xx.postgresql_yn + xx.azure_yn + xx.kotlin_yn + xx.docker_yn + xx.list_yn + xx.firebase_yn + xx.ios_yn + xx.sql_server_yn + xx.jquery_yn + xx.mongodb_yn + xx.vuejs_yn + xx.numpy_yn + xx.net_yn + xx.vba_yn + xx.regex_yn + xx.string_yn + xx.spring_yn + xx.powershell_yn + xx.linux_yn as tot
		from
			(
			select
				id ,
				cast(creationdate as date) as cdate,
				case
					when deletiondate is not null 
			then 1
					else 0
				end as del_yn,
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
				-- posts_treat_0_1.csv
				-- cast(creationdate as date) between '2021-10-06' and '2021-12-31'
				-- posts_treat_0_2.csv
				-- cast(creationdate as date) between '2022-01-01' and '2022-03-15'
				-- posts_treat_1_1.csv
				-- cast(creationdate as date) between '2022-10-05' and '2022-12-31'
				-- posts_treat_1_2.csv
                -- cast(creationdate as date) between '2023-01-01' and '2023-03-14' 
                cast(creationdate as date) = '2023-01-01'
				and posttypeid = '1'
				--and deletiondate <= '2023-12-03'
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
           ))xx 
        )a 
--      ) x
--group by
--	x.cdate,
--	x.del_yn
 ;