*** Variables ***

${username_input}    email
${password_input}   password
${submit_login}   //button[contains(text(),"Login")]
${whoisit}        //html/body/aside/ul/li[1]

*** Keywords ***

Log in with correct credentials
    Input Text  ${username_input}   ${username}
    Input Text  ${password_input}   ${password}
    Click button  ${submit_login}

Check user name is Joe
    Element Text Should Be  ${whoisit}   Welcome Joe