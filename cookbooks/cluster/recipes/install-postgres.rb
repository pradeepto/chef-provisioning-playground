%w(postgresql).each do |rpm|
  package rpm do
    action :install
  end 
end