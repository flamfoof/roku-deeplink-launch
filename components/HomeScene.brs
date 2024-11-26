function init()
    ? "[HomeScene] init"
    m.top.setFocus(true)
    
    ' Create a label for Hello World
    m.helloLabel = m.top.findNode("helloLabel")
    if m.helloLabel = invalid
        m.helloLabel = CreateObject("roSGNode", "Label")
        m.helloLabel.id = "helloLabel"
        m.top.appendChild(m.helloLabel)
    end if
    
    ' Set the label properties
    m.helloLabel.text = "Hello World!"
    m.helloLabel.width = 1280
    m.helloLabel.height = 720
    m.helloLabel.horizAlign = "center"
    m.helloLabel.vertAlign = "center"
    m.helloLabel.font = "font:LargeBoldSystemFont"
end function
