[Setup]
AppName=DISCOM Bill Manager
AppVersion=1.0.0
DefaultDirName={pf}\DISCOM Bill Manager
DefaultGroupName=DISCOM Bill Manager
OutputBaseFilename=DISCOMBillManager_Setup
Compression=lzma
SolidCompression=yes

[Files]
; Main application files
Source: "build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Required VC++ Runtime DLLs to prevent MSVCP140 / VCRUNTIME errors
Source: "installer_runtime\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_runtime\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_runtime\vcruntime140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_runtime\concrt140.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\DISCOM Bill Manager"; Filename: "{app}\discom_bill_manager.exe"
Name: "{commondesktop}\DISCOM Bill Manager"; Filename: "{app}\discom_bill_manager.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a Desktop Shortcut"; GroupDescription: "Additional Options:"; Flags: unchecked

[Run]
Filename: "{app}\discom_bill_manager.exe"; Description: "Launch DISCOM Bill Manager"; Flags: nowait postinstall
