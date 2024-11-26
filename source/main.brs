sub main()
    print "Starting Hello World Channel"
    
    ' Create and show the screen
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    ' Create the scene and show it
    scene = screen.CreateScene("HomeScene")
    screen.show()
    
    ' Event loop
    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed()
                return
            end if
        end if
    end while
end sub
