LS_HOME=/opt/logstash
export LS_HOME
clear
echo $0 started as $$
echo "Now first starting a Code Quality Verification"
echo ""
$LS_HOME/bin/logstash --configtest -f ./example4
echo ""
echo "Installing Development plugin for Test Driven Development TDD"
sudo $LS_HOME/bin/plugin install --development
echo ""
echo "Now starting the Unit test with RSpec"
sudo $LS_HOME/bin/rspec example5/UnitTest.rb 
