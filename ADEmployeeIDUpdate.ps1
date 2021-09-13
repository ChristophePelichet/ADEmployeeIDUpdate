<#

.SYNOPSIS
ADEmployeeIDUpdate.ps1

.DESCRIPTION
simple script to update the attribut "employeeID" in the Active Directroy from a .csv file.

.INPUTS
N/A

.OUTPUTS
N/A

.CONFIGURATION
set the $myCSVXXXXX variable with your information and run the script

.LINK
N/A

.EXAMPLE
N/A

.NOTES
Written by: Christophe Pelichet (cpelichet@protonmail.com)

Find me on: 

* LinkedIn:     https://linkedin.com/in/christophepelichet
* Github:       https://github.com/ChristophePelichet

Change Log 
V1.00 - 13/09/2021 - Initial version
#>


########################################################
######################## Path ##########################
########################################################

MyScriptPath    = split-path -parent MyInvocation.MyCommand.Definition

########################################################
###################### Functions #######################
########################################################


#######################################################
###################### Variables ######################
#######################################################

$myCSVList = ""                 # Path to the CSV file 
$myCSVDelimiter = ";"                                                   # CSV delimiter
$myCSVEncoding = "UTF7"                                                 # CSV encoding
$myCSVColUser = ""                                                      # CSV colum for user definition attribut
$myCSVColID   = ""                                                      # CSV colum for user employeeID attribut


#######################################################
################### Start Scripts #####################
#######################################################

## Import CSV list
$list = Import-Csv -Path $myCSVList -Encoding $myCSVEncoding -Delimiter $myCSVDelimiter

## DataProcessing
foreach ( $luser in $list ) { 

    $uDisplay   =   $luser.$myCSVColUser
    $eID        =   $luser.$myCSVColID
   

    Get-ADUser -filter { DisplayName -eq $uDisplay } | Set-ADUser -EmployeeID $eID


#######################################################
#################### End Scripts ######################
#######################################################
    
}