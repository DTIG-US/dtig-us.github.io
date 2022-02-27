####################
# DTIG Code Quality Standards (CQS)
#
# Please fill out each section below
# Each Section will have a label and Usage
#
# Identifier - File name of module 
# TYPE HERE
#
# Module - Type of module
# TYPE HERE
#
# Author - Name of Creator
# TYPE HERE
#
# Keywords - Subject keywords
# TYPE HERE
#
# DevOps Linked Work item
# TYPE HERE
#
# Purpose - general purpose of module
# TYPE HERE
#
# Comments
# TYPE HERE
#
# Version
# TYPE HERE
#
# Returns - Return values for functions
# TYPE HERE
#
# Enviroment - Special enviroment requirments
# TYPE HERE
#
#
#####################


function UpradeAzureCLIforWindows{
<#
.SYNOPSIS
Installs the Azure CLI if it is not present.  Upgrades the Azure CLI if it is.
For Windows.  There are other functions for Mac and Linux

.DESCRIPTION
Installs the Azure CLI if it is not present.  Upgrades the Azure CLI if it is.
For Windows

.EXAMPLE
UpgradeAzureCLI

.NOTES
This function is not intended to have any parameters passed to it.
#>

#!TODO az extension add --name azure-devops

#region Install or Update Azure CLI installed.
# Try/Catch for Install or Update
# Update Azure CLI
    if (!(az version)){                                                     #Checks to see if command returns response.  If not, Azure CLI requires installation.

        Write-Host "This workstation does not have Azure CLI installed." -ForegroundColor White -BackgroundColor Green
        Write-Host "Installing Azure Command Line Interface..." -ForegroundColor White -BackgroundColor Green
        Write-Host "Downloading and installing Azure CLI..." -ForegroundColor White -BackgroundColor Green
        Write-Host "This may take some time..." -ForegroundColor White -BackgroundColor Green

        # Downloads and installs Azure CLI
        Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; Remove-Item .\AzureCLI.msi

        # Auto Update Configuration
        az config set auto-upgrade.enable=yes                               #Enables auto-upgrade
        az config set auto-upgrade.prompt=no                                #Removes prompt from auto-upgrade

        Write-Host "Installation Complete!" -ForegroundColor Green -BackgroundColor White
    }
    else{                                                                   #If command returns reponse, Azure CLI is installed and can be upgraded

        Write-Host "This workstation has Azure CLI installed." -ForegroundColor White -BackgroundColor Green
        Write-Host "Checking for update to Azure Command Line Interface..." -ForegroundColor White -BackgroundColor Green
        Write-Host "This may take some time..." -ForegroundColor White -BackgroundColor Green

        #Attempt upgrade and configuration changes
        try {

            # Auto Update Configuration
            Write-Host "Making configuration changes for updates" -ForegroundColor White -BackgroundColor Green
            az config set auto-upgrade.enable=yes                           #Enables auto-upgrade
            az config set auto-upgrade.prompt=no                            #Removes prompt from auto-upgrade
            Write-Host "Configuration changes complete!" -ForegroundColor White -BackgroundColor Green

            Write-Host "Attempting upgrade"
            az upgrade --all true --yes                                     #Upgrades the Azure CLI installation
            Write-Host "Upgrade Complete" -ForegroundColor Green -BackgroundColor White

        }
        #Catch exception
        catch {
            Write-Host "Cannot upgrade Azure CLI!" -ForegroundColor Red -BackgroundColor White
        }
    }

UpgradeAzureCLIforWindows
}

