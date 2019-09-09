﻿$Services = [ordered] @{
    Enable = $true
    Source = @{
        Name       = 'Service Status'
        Data       = {
            $Services = @('ADWS', 'DNS', 'DFS', 'DFSR', 'Eventlog', 'EventSystem', 'KDC', 'LanManWorkstation', 'LanManServer', 'NetLogon', 'NTDS', 'RPCSS', 'SAMSS', 'Spooler', 'W32Time')
            Get-PSService -Computers $DomainController -Services $Services
        }
        Details = [ordered] @{
            Area             = ''
            Explanation      = ''
            Recommendation   = ''
            RiskLevel        = 10
            RecommendedLinks = @(

            )
        }
    }
    Tests  = [ordered] @{
        ADWSServiceStatus                 = @{
            Enable     = $true
            Name       = 'ADWS Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'ADWS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        ADWSServiceStartType              = @{
            Enable     = $true
            Name       = 'ADWS Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'ADWS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        DNSServiceStatus                  = @{
            Enable     = $true
            Name       = 'DNS Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DNS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        DNSServiceStartType               = @{
            Enable     = $true
            Name       = 'DNS Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DNS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        DFSServiceStatus                  = @{
            Enable     = $true
            Name       = 'DFS Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DFS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        DFSServiceStartType               = @{
            Enable     = $true
            Name       = 'DFS Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DFS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        DFSRServiceStatus                 = @{
            Enable     = $true
            Name       = 'DFSR Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DFSR' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        DFSRServiceStartType              = @{
            Enable     = $true
            Name       = 'DFSR Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'DFSR' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        EventlogServiceStatus             = @{
            Enable     = $true
            Name       = 'Eventlog Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'Eventlog' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        EventlogServiceStartType          = @{
            Enable     = $true
            Name       = 'Eventlog Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'Eventlog' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        EventSystemServiceStatus          = @{
            Enable     = $true
            Name       = 'EventSystem Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'EventSystem' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        EventSystemServiceStartType       = @{
            Enable     = $true
            Name       = 'EventSystem Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'EventSystem' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        KDCServiceStatus                  = @{
            Enable     = $true
            Name       = 'KDC Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'KDC' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        KDCServiceStartType               = @{
            Enable     = $true
            Name       = 'KDC Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'KDC' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        LanManWorkstationServiceStatus    = @{
            Enable     = $true
            Name       = 'LanManWorkstation Service is RUNNING'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'LanManWorkstation' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        LanManWorkstationServiceStartType = @{
            Enable     = $true
            Name       = 'LanManWorkstation Service START TYPE is Automatic'
            Parameters = @{
                WhereObject   = { $_.Name -eq 'LanManWorkstation' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        LanManServerServiceStatus         = @{
            Enable     = $true
            Name       = 'LanManServer Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'LanManServer' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        LanManServerServiceStartType      = @{
            Enable     = $true
            Name       = 'LanManServer Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'LanManServer' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        NetLogonServiceStatus             = @{
            Enable     = $true
            Name       = 'NetLogon Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'NetLogon' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        NetLogonServiceStartType          = @{
            Enable     = $true
            Name       = 'NetLogon Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'NetLogon' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        NTDSServiceStatus                 = @{
            Enable     = $true
            Name       = 'NTDS Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'NTDS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        NTDSServiceStartType              = @{
            Enable     = $true
            Name       = 'NTDS Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'NTDS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        RPCSSServiceStatus                = @{
            Enable     = $true
            Name       = 'RPCSS Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'RPCSS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        RPCSSServiceStartType             = @{
            Enable     = $true
            Name       = 'RPCSS Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'RPCSS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        SAMSSServiceStatus                = @{
            Enable     = $true
            Name       = 'SAMSS Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'SAMSS' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        SAMSSServiceStartType             = @{
            Enable     = $true
            Name       = 'SAMSS Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'SAMSS' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
        SpoolerServiceStatus              = @{
            Enable     = $true
            Name       = 'Spooler Service is STOPPED'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'Spooler' }
                Property      = 'Status'
                ExpectedValue = 'Stopped'
                OperationType = 'eq'
            }

        }
        SpoolerServiceStartType           = @{
            Enable     = $true
            Name       = 'Spooler Service START TYPE is DISABLED'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'Spooler' }
                Property      = 'StartType'
                ExpectedValue = 'Disabled'
                OperationType = 'eq'
            }
        }
        W32TimeServiceStatus              = @{
            Enable     = $true
            Name       = 'W32Time Service is RUNNING'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'W32Time' }
                Property      = 'Status'
                ExpectedValue = 'Running'
                OperationType = 'eq'
            }

        }
        W32TimeServiceStartType           = @{
            Enable     = $true
            Name       = 'W32Time Service START TYPE is Automatic'

            Parameters = @{
                WhereObject   = { $_.Name -eq 'W32Time' }
                Property      = 'StartType'
                ExpectedValue = 'Automatic'
                OperationType = 'eq'
            }
        }
    }
}