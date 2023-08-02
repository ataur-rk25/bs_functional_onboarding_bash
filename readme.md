Bash Script Collection

This repository contains a collection of three bash scripts, each serving a specific purpose to process log files and retrieve important information.

Requirements

Bash: The scripts are written in Bash awk and require a Bash-compatible environment to run.
Input Log Format: The scripts expect the log file to be in specific formats where the required information can be extracted.

Script 1: Request which took longest time

Description
This script is designed to process a log file and extract request which took the longest time and print the time to console

Usage
Ensure that you have the necessary permissions to execute the script.

Input:

Bash script from max_execution_time.awk and logfile.log (Feel free to replace with your logfile)

Expected Output:

Maximum execution time: 161364 ms

Script 2: Request which took longest time

Description
This script is designed to process a log file and extract request which took the longest time and print the complete to console

Usage
Ensure that you have the necessary permissions to execute the script.

Input:

Bash script from max_execution_time_request.awk and logfile.log (Feel free to replace with your logfile)

Expected Output: Request details which took the highest time

13613474:prod9.browserstack.com/2015-06-10/home/app/railsApp/shared/log/production.log:2219249:Completed 200 OK in 161364ms (Views: 2.6ms | ActiveRecord: 161351.4ms | Sphinx: 0.0ms) bash-3.2$

Script 3: Unique endpoints and their hit count

Description
This script is designed to process a log file and extract out unique endpoints and the number of times each endpoint was hit and print it to console

Usage
Ensure that you have the necessary permissions to execute the script.

Input:

Bash script from unique_endpoint_with_count.awk and logfile.log (Feel free to replace with your logfile)

Expected Output:

18 GET "/proxy/port"
14 GET "/user/disconnect_tunnel"
13 POST "/terminal/find_session_id"
5 GET "/terminal/is_on"
3 POST "/terminal/start"
3 GET "/admin/automation_stats"
2 POST "/main/sns_data"
2 POST "/admin/user_search"
2 GET "/terminal/stop"
2 GET "/automate"
1 POST "/user/onboarded"
1 POST "/user/features_seen"
1 POST "/admin/run_query"
1 POST "/admin/blacklist_and_block_ip"
1 GET "/terminal/update_time"
1 GET "/automate/dashboard_update/28105389/new"
1 GET "/automate/dashboard_update/28091011/new"
1 GET "/automate/dashboard_update/28090539/new"
1 GET "/automate/dashboard_update/28032107/new"
1 GET "/automate/builds/71652f6a4b5270fbf9c1fd727d169df78a60e173/sessions/a47b4d1c2fb984695035fff62a74d83b170884df"
1 GET "/automate/builds/71652f6a4b5270fbf9c1fd727d169df78a60e173/sessions/2f791dca945ec933e1131cbd29f2623ba28fa5c7"
1 GET "/automate/a8c63b75a162f98506c8563f6dc58ea636e7f53a/error_logs"
1 GET "/automate/9d1f22d3e2df4170283248234c7ba39618a02d42/error_logs"
1 GET "/automate/8c7560d37c308befea72bea54db5253b9a2fbe50/error_logs"
1 GET "/automate/2f791dca945ec933e1131cbd29f2623ba28fa5c7/error_logs"

License

Feel free to further customize this template with additional information or formatting to best suit your specific use case.
