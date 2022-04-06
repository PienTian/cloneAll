#
# Module manifest for module 'cloneAll'
#
# Generated by: Pien
#
# Generated on: 4/6/2022
#

@{
    RootModule = "cloneAll.psm1"
    ModuleVersion = '1.0'

    GUID = '13df17cf-22c3-451c-bf92-9b73ee5e988d'

    Author = 'Pien'
    Copyright = '(c) 2022 Pien. All rights reserved.'

    FunctionsToExport = @('Clone-All')
    AliasesToExport = @('clall')

    Description = "This command let you clone one's all public repository on github.com. This command script is destributed under the MIT license by Pien."


    PrivateData = @{
        PSData = @{
            ProjectUri = 'https://github.com/PienTian/Clone-All'
        }
    }
}