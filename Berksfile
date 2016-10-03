source 'https://supermarket.chef.io'

# project cookbooks

def project_cookbooks
  %w( role_base role_nat role_bastion
      role_deploy role_esap role_mapr role_swap role_rsyslog role_rtfe
      sncr_mapr role_bda_nginx openstack_base role_saw role_activemq
      )
end

# shared cookbooks from stash sncr-cookbooks
def sncr_cookbooks
  %w( sncr_artifacts
      sncr_awstools sncr_aws_nat_monitor
      sncr_common_base
      sncr_logicmon
      sncr_motd
      sncr_netcat
      sncr_snmp
      sncr_sssd
      sncr_zabbix_agent
      sncr_external_service_tomcat8
      )
end

cookbook 'mapr_installation',
      git: 'https://github.com/corbesero/mapr_installation.git'

# these communuity cookbooks must be locked at these versions
cookbook 'cron',  '~> 1.6.0'
cookbook 'iptables',  '~> 1.0'
cookbook 'build-essential', '< 2.3.0'
cookbook 'nginx', '= 2.7.6'
cookbook 'rsyslog', '~> 2.2'

#-------------------------------------------------------

def project_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook(name, version, {
    git: "ssh://git@stash.synchronoss.net:7999/bda/#{name}.git"
  }.merge(options))
end

def sncr_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook(name, version, {
    git: "ssh://git@stash.synchronoss.net:7999/sncr-cookbooks/#{name}.git"
  }.merge(options))
end

project_cookbooks.each do |cb|
  project_cookbook cb
end

sncr_cookbooks.each do |cb|
  sncr_cookbook cb
end

# Local Variables:
# mode: ruby
# End:
