@description('Specifies the location for resources.')
param location2 string = ''

@description('')
resource AzureVMHomelabUbuntuVM '' = {
  name: ''
  location: location2
  tags: {}
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B1s'
    }
    storageProfile: {
      imageReference: {
        publisher: 'Canonical'
        offer: '0001-com-ubuntu-server-jammy'
        sku: '22_04-lts-gen2'
        version: 'latest'
      }
      osDisk: {
        osType: 'Linux'
        name: ''
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: ''
        }
        deleteOption: 'Detach'
        diskSizeGB: 30
      }
      dataDisks: [
        {
          lun: 0
          name: ''
          createOption: 'Empty'
          caching: 'None'
          managedDisk: {
            storageAccountType: 'Premium_LRS'
            id: ''
          }
          deleteOption: 'Detach'
          diskSizeGB: 32
          toBeDetached: false
        }
      ]
      diskControllerType: 'SCSI'
    }
    osProfile: {
      computerName: ''
      adminUsername: defualt
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: ''
              keyData: ''
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: ''
        }
      ]
    }
  }
}
