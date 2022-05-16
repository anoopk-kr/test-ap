Import-Module -Name "C:\Program Files (x86)\Microsoft BizTalk Server 2013 R2\Developer Tools\Microsoft.BizTalk.ExplorerOM.dll"
#Import-Module -Name "C:\Windows\assembly\GAC_MSIL\nsoftware.BizTalk.SFTPAdapter\16.0.6589.0__cdc168f89cffe9cf\nsoftware.BizTalk.SFTPAdapter.dll"
#Import-Module -Name "C:\Windows\assembly\GAC_MSIL\nsoftware.BizTalk.PowerShellAdapter\16.0.6589.0__cdc168f89cffe9cf\nsoftware.BizTalk.PowerShellAdapter.dll"
$btsCatalog = New-Object Microsoft.BizTalk.ExplorerOM.BtsCatalogExplorer

$btsCatalog.ConnectionString = "SERVER=DEERMOUSE\INST3;DATABASE=BizTalkMgmtDb;Integrated Security=SSPI"
$port=$btsCatalog.Applications["SFTP.Test"].ReceivePorts["RecvPort_SFTP.Test_IN"]
$sftpRecvLoc=$port.ReceiveLocations["RecvLoc_SFTP_V2016.Test_IN"]
$sftpRecvLoc_backup=$port.ReceiveLocations["Receive Location2"]


$Name=$sftpRecvLoc.Name
$Address=$sftpRecvLoc.Address
$PublicAddress=$sftpRecvLoc.PublicAddress
$CustomData=$sftpRecvLoc.CustomData
$TransportType=$sftpRecvLoc.TransportType
$TransportTypeData=$sftpRecvLoc.TransportTypeData
$IsPrimary=$sftpRecvLoc.IsPrimary
$FragmentMessages=$sftpRecvLoc.FragmentMessages
$ReceiveHandler=$sftpRecvLoc.ReceiveHandler
$ReceivePipeline=$sftpRecvLoc.ReceivePipeline
$ReceivePipelineData=$sftpRecvLoc.ReceivePipelineData
$Enable=$sftpRecvLoc.Enable
$ServiceWindowEnabled=$sftpRecvLoc.ServiceWindowEnabled
$StartDateEnabled=$sftpRecvLoc.StartDateEnabled
$StartDate=$sftpRecvLoc.StartDate
$EndDateEnabled=$sftpRecvLoc.EndDateEnabled
$EndDate=$sftpRecvLoc.EndDate
$FromTime=$sftpRecvLoc.FromTime
$ToTime=$sftpRecvLoc.ToTime
$ReceivePort=$sftpRecvLoc.ReceivePort
$SendPipeline=$sftpRecvLoc.SendPipeline
$SendPipelineData=$sftpRecvLoc.SendPipelineData
$EncryptionCert=$sftpRecvLoc.EncryptionCert
$Description=$sftpRecvLoc.Description



$Name=$sftpRecvLoc.Name
$Address=$sftpRecvLoc.Address
$PublicAddress=$sftpRecvLoc.PublicAddress
$CustomData=$sftpRecvLoc.CustomData
$TransportType=$sftpRecvLoc.TransportType
$TransportTypeData=$sftpRecvLoc.TransportTypeData
$IsPrimary=$sftpRecvLoc.IsPrimary
$FragmentMessages=$sftpRecvLoc.FragmentMessages
$ReceiveHandler=$sftpRecvLoc.ReceiveHandler
$ReceivePipeline=$sftpRecvLoc.ReceivePipeline
$ReceivePipelineData=$sftpRecvLoc.ReceivePipelineData
$Enable=$sftpRecvLoc.Enable
$ServiceWindowEnabled=$sftpRecvLoc.ServiceWindowEnabled
$StartDateEnabled=$sftpRecvLoc.StartDateEnabled
$StartDate=$sftpRecvLoc.StartDate
$EndDateEnabled=$sftpRecvLoc.EndDateEnabled
$EndDate=$sftpRecvLoc.EndDate
$FromTime=$sftpRecvLoc.FromTime
$ToTime=$sftpRecvLoc.ToTime
$ReceivePort=$sftpRecvLoc.ReceivePort
$SendPipeline=$sftpRecvLoc.SendPipeline
$SendPipelineData=$sftpRecvLoc.SendPipelineData
$EncryptionCert=$sftpRecvLoc.EncryptionCert
$Description=$sftpRecvLoc.Description






$sftpRecvLoc.Name=$Name
$sftpRecvLoc.Address=$Address
$sftpRecvLoc.PublicAddress=$PublicAddress
$sftpRecvLoc.CustomData=$CustomData
#$sftpRecvLoc.TransportType=$TransportType
$sftpRecvLoc.TransportType=$btsCatalog.ProtocolTypes["nsoftware.SFTP 2016"]
$sftpRecvLoc.TransportTypeData=$TransportTypeData
#$sftpRecvLoc.IsPrimary=$IsPrimary
$sftpRecvLoc.FragmentMessages=$FragmentMessages

$sftpRecvLoc.ReceivePipeline=$ReceivePipeline
$sftpRecvLoc.ReceivePipelineData=$ReceivePipelineData

$sftpRecvLoc.Enable=$Enable
$sftpRecvLoc.ServiceWindowEnabled=$ServiceWindowEnabled
$sftpRecvLoc.StartDateEnabled=$StartDateEnabled
$sftpRecvLoc.StartDate=$StartDate
$sftpRecvLoc.EndDateEnabled=$EndDateEnabled

$sftpRecvLoc.EndDate=$EndDate
$sftpRecvLoc.FromTime=$FromTime
$sftpRecvLoc.ToTime=$ToTime
#$sftpRecvLoc.ReceivePort=$ReceivePort
$sftpRecvLoc.SendPipeline=$SendPipeline

$sftpRecvLoc.SendPipelineData=$SendPipelineData
$sftpRecvLoc.EncryptionCert=$EncryptionCert
$sftpRecvLoc.Description=$Description
$sftpRecvLoc.ReceiveHandler=$sftpRecvLoc_backup.ReceiveHandler



#foreach ($handler in  $btsCatalog.ReceiveHandlers){ if($handler.Name -ne 'BizTalkServerApplication') { $sftpRecvLoc.ReceiveHandler = $handler; break;}  }
$btsCatalog.SaveChanges();  

