require 'net/ping'
require 'win32ole'

internet = "No"

while internet == "No"
    time = Time.new
    google = Net::Ping::External.new('google.com')
    
    if google.ping? == true
        internet = "yes"
        
        puts time.strftime("%I:%M:%S %p") + ": Internet, ho!"
        
        player = WIN32OLE.new('WMPlayer.OCX')
        player.OpenPlayer('C:\Users\Andrew\Desktop\internetCheck\04 The Sign.wma')
    else
        puts time.strftime("%I:%M:%S %p") + ": No internet yet"
    end
    
    sleep(60)
end