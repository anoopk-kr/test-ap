SFTP Recv V4


		
SFTP Recv V2016
<ReceiveHandler Name="ReceiveHost" HostTrusted="false">
            <TransportType Name="nsoftware.SFTP 2016" Capabilities="15627" ConfigurationClsid="7571227c-f326-4248-a478-8748270376f7" />
          </ReceiveHandler>
<PrimaryTransport>
        <TransportType Name="nsoftware.SFTP 2016" Capabilities="15627" ConfigurationClsid="7571227c-f326-4248-a478-8748270376f7" />
		
SFTP SEND V4
SFTP SEND V2016
  <SendHandler Name="TrackingHost" HostTrusted="false">
          <TransportType Name="nsoftware.SFTP 2016" Capabilities="15627" ConfigurationClsid="7571227c-f326-4248-a478-8748270376f7" />
        </SendHandler>
POWERSHELL SEND V4
<TransportType Name="nsoftware.PowerShell v4" Capabilities="9474" ConfigurationClsid="7142887c-f326-4248-a478-8748270376f7" />

<SendHandler Name="BizTalkServerApplication" HostTrusted="false">
          <TransportType Name="nsoftware.PowerShell v4" Capabilities="9474" ConfigurationClsid="7142887c-f326-4248-a478-8748270376f7" />
        </SendHandler>
POWERSHELL SEND V2016
<TransportType Name="nsoftware.PowerShell 2016" Capabilities="9474" ConfigurationClsid="7571287c-f326-4248-a478-8748270376f7" />
  <SendHandler Name="TrackingHost" HostTrusted="false">
          <TransportType Name="nsoftware.PowerShell 2016" Capabilities="9474" ConfigurationClsid="7571287c-f326-4248-a478-8748270376f7" />
        </SendHandler>
		


