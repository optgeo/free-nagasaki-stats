task :default do
  sh <<-EOS
curl --silent https://raw.githubusercontent.com/optgeo/free-nagasaki/main/convert/dst/list.csv |
ruby size.rb
  EOS
end

