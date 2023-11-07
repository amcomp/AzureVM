@description('Specifies the location for resources.')
param location string = ''


@description('')
resource property '' = {
  name: 'group'
  location: location
  properties: {}
}
