# Active Directory EmployeeID Attribut Update  V1.0

[![CodeQL](https://github.com/ChristophePelichet/ADEmployeeIDUpdate/workflows/PSScriptAnalyzer/badge.svg)](https://github.com/ChristophePelichet/ADEmployeeIDUpdate/actions?query=workflow%3APSScriptAnalyzer)

## Description
Simple script to update the attribut "EmployeeID" in the active directory with a csv file as source.

## Configuration
Configure this variable selon according to your configuration

    - $myCSVList               -> Path of you csv file
    - $myCSVDelimiter          -> For set your .csv delimiter
    - $myCSVEncoding           -> Select with encoding you want for the import
    - $myCSVColUser            -> Set the colum header name for the user idientification
    - $myCSVColID              -> Set the colum header name for the employee ID

### Version 
V1.00 - 13/09/2021 - Initial version

