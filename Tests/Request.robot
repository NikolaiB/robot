*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${base_url}=  https://sb-merck-promomats.veevavault.com/


*** Test Cases ***
Get a list of companies
    create session  session  ${base_url}  verify=True
    ${data}=  create dictionary  Authorization=BE391B9165A8A19E62325E37950512C9C36105341B9E02BDC6AF599F474319E2B8A55FF4452790A3A9F0FDE64C19EE51497C5FCC5459A0B345359FDB3300D08C  Accept=application/json  Content-Type=application/json
#    ${headers}=  create dictionary  Accept=application/json  Content-Type=application/json
    ${Response}=  get request  session  api/v19.1/objects/documents  headers=${data}

    ${actual_code}=  convert to string  ${Response.status_code}

    should be equal  ${actual_code}  200

    log to console  ${Response.status_code}
    log to console  ${Response.content}