include_attribute "conda"

# hops-util-py version, when value is "master" install from git, when value is "0.6.0.0" do pip install hops==0.6.0.0
default["kagent"]["hops-util-py-version"]          = "master"

# Default values for configuration parameters
default["kagent"]["version"]                       = node["install"]["version"]
default["kagent"]["user"]                          = node["install"]["user"].empty? ? "kagent" : node["install"]["user"]
default["kagent"]["group"]                         = node["install"]["user"].empty? ? "kagent" : node["install"]["user"]
default["kagent"]["certs_group"]                   = "certs"


default["kagent"]["dir"]                           = node["install"]["dir"].empty? ? "/var/lib/kagent" : node["install"]["dir"] + "/kagent"
default["kagent"]["base_dir"]                      = "#{node["kagent"]["dir"]}/kagent"
default["kagent"]["home"]                          = "#{node["kagent"]["dir"]}/kagent-#{node["kagent"]["version"]}"
default["kagent"]["etc"]                           = "#{node["kagent"]["dir"]}/etc"

default["kagent"]["enabled"]                       = "true"

default["kagent"]["certs_dir"]                     = "#{node["kagent"]["dir"]}/host-certs"

# API calls
default["kagent"]["dashboard"]["api"]["register"]  = "api/agentresource?action=register"
default["kagent"]["dashboard"]["api"]["login"]     = "api/auth/login"
default["kagent"]["dashboard"]["api"]["ca_host"]   = "v2/certificate/host"
default["kagent"]["dashboard"]["api"]["heartbeat"] = "api/agentresource?action=heartbeat"
default["kagent"]["dashboard"]["api"]["alert"]     = "api/agentresource/alert"

# Username/Password for the dashboard connecting to Hopsworks
default["kagent"]["dashboard"]["user"]             = "agent@hops.io"
default["kagent"]["dashboard"]["password"]         = "admin"

# Username/Password for the keystore

default["hopsworks"]["master"]["password"]         = "adminpw"

# Agent's local certificate for SSL connections
default["kagent"]["certificate_file"]              = "server.pem"

# dashboard ip:port endpoint
default["kagent"]["dashboard_app"]                 = "hopsworks-api"
default["kagent"]["ca_app"]                        = "hopsworks-ca"

# local settings for agent
default["kagent"]["port"]                          = 8090
default["kagent"]["heartbeat_interval"]            = 3
default["kagent"]["watch_interval"]                = "2s"
default["kagent"]["pid_file"]                      = node["kagent"]["dir"] + "/kagent.pid"
default["kagent"]["logging_level"]                 = "INFO"
default["kagent"]["max_log_size"]                  = "10000000"

default["kagent"]["network"]["interface"]          = ""

default["kagent"][:default][:public_ips]              = ['10.0.2.15']
default["kagent"][:default][:private_ips]             = ['10.0.2.15']
default["kagent"][:default][:gateway_ips]             = ['10.0.2.2']

# services file contains locally installed services

default["kagent"]["services"]                      = node["kagent"]["etc"] + "/services"

# name of cluster as shown in Dashboard
default["kagent"]["cluster"]                       = "Hops"

default["kagent"]["hostid"]                        = 100

default["kagent"]["hostname"]                      =

default["kagent"]["password"]                      = ""

default["kagent"]["keystore_dir"] 		   = node["kagent"]["certs_dir"] + "/keystores"

default["kagent"]["dns"]                           = "false"

default["public_ips"]                              = ['10.0.2.15']
default["private_ips"]                             = ['10.0.2.15']
default["gateway_ips"]                             = ['10.0.2.2']
default["kagent"]["allow_ssh_access"]              = "false"

node.default["download_url"]                       = "http://193.10.67.171/hops"
node.default["systemd"]                            = "true"
node.default["ndb"]["mysql_socket"]                = "/tmp/mysql.sock"
node.default["ndb"]["mysql.jdbc_url"]              = ""
node.default["ndb"]["mysql_port"]                  = "3306"

node.default["vagrant"]                            = "false"

node.default["ntp"]["install"]                     = "false"
# Servers to sync ntp time with
# '0.pool.ntp.org', '1.pool.ntp.org'
node.normal["ntp"]["servers"]                      = ['0.europe.pool.ntp.org', '1.europe.pool.ntp.org', '2.europe.pool.ntp.org', '3.europe.pool.ntp.org']

node.normal["ntp"]["peers"]                        = ['time0.int.example.org', 'time1.int.example.org']

default["kagent"]["test"]                          = false


default["kagent"]["keystore"]                      = "#{node["kagent"]["base_dir"]}/node_server_keystore.jks"
default["kagent"]["keystore_password"]             = "changeit"


default["smtp"]["host"]                            = "smtp.gmail.com"
default["smtp"]["port"]                            = "587"
default["smtp"]["ssl_port"]                        = "465"
default["smtp"]["email"]                           = "smtp@gmail.com"
default["smtp"]["email_password"]                  = "password"
default["smtp"]["gmail.placeholder"]               = "http://snurran.sics.se/hops/hopsworks.email"


default["services"]["enabled"]                     = "true"

default["certs"]["dir"]                            = node["install"]["dir"].empty? ? node["kagent"]["dir"] + "/certs-dir" : node["install"]["dir"] + "/certs-dir"

default["java"]["install_flavor"]                  = "openjdk"
default["java"]["jdk_version"]                     = 8

default["kagent"]["conda_gc_interval"]             = "1h"
default["kagent"]["python_conda_versions"]         = "2.7, 3.6"
