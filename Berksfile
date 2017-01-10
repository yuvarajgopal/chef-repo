source 'https://supermarket.chef.io'

# project cookbooks

def project_cookbooks
  %w( sncr_mapr )
end

cookbook 'mapr_installation',
      git: 'https://github.com/yuvarajgopal/mapr_installation.git'

def project_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook(name, version, {
    git: "https://github.com/yuvarajgopal/#{name}.git"
  }.merge(options))
end

project_cookbooks.each do |cb|
  project_cookbook cb
end

# Local Variables:
# mode: ruby
# End:
