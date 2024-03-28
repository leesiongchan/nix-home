{ pkgs, ... }:

{
  home.file.".aws/config".text = ''
    [profile configura-analytics-test]
    sso_session = configura
    sso_account_id = 545608796330
    sso_role_name = AWSAdministratorAccess
    region = eu-central-1
      
    [sso-session configura]
    sso_start_url = https://configura.awsapps.com/start#/
    sso_region = eu-central-1
    sso_registration_scopes = sso:account:access
  '';
}
