USE ROLE ACCOUNTADMIN;
CREATE OR REPLACE API INTEGRATION WS_TEST_GIT_INTEGRATION
    api_provider = git_https_api
    api_allowed_prefixes = ('https://github.com/rifqikurniawan-sys')
    api_user_authentication = (type = snowflake_github_app ) -- enable OAuth support
    enabled = true;
    -- comment='<comment>';

grant usage on integration WS_TEST_GIT_INTEGRATION to ROLE PUBLIC
