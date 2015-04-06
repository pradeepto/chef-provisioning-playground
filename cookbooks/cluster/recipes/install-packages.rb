%w(gcc).each do |rpm|
  package rpm do
    action :install
  end 
end