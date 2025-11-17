*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set the counter to a specific value
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Input Text  value  0
    Input Text  value  30
    Click Button  Aseta
    Page Should Contain  nappia painettu 30 kertaa
