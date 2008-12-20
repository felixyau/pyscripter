  ; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=PyScripter
AppVersion=1.9.9.3
AppVerName=PyScripter 1.9.9.3
AppPublisher=MMM-Experts, Inc.
AppPublisherURL=http://mmm-experts.com
AppSupportURL=http://mmm-experts.com
AppUpdatesURL=http://mmm-experts.com
DefaultDirName={pf}\PyScripter
DefaultGroupName=PyScripter
InfoBeforeFile=BeforeInstallPyScripter.txt
InfoAfterFile=AfterInstallPyScripter.txt
OutputDir=Output
OutputBaseFilename=PyScripter-v1.9.9.3-Setup
Compression=lzma
SolidCompression=true
ChangesAssociations=true
UninstallDisplayIcon={app}\PyScripter.exe
PrivilegesRequired=poweruser
AppCopyright=� Kiriakos Vlahos

[Languages]
Name: eng; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: fileexplorercontextmenu; Description: """Edit with PyScripter"" File Explorer context menu"; GroupDescription: Shell Integration:

[Files]
Source: ..\..\PythonIDE\PyScripter.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\PythonIDE\PyScripter.chm; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\..\PythonIDE\PyProject.ico; DestDir: {app}
Source: ..\..\PythonIDE\locale\default.po; DestDir: {app}\locale
Source: ..\..\PythonIDE\locale\languagecodes.mo; DestDir: {app}\locale
Source: ..\..\PythonIDE\locale\languagecodes.po; DestDir: {app}\locale
Source: ..\..\PythonIDE\locale\languages.po; DestDir: {app}\locale
Source: ..\..\PythonIDE\locale\el\LC_MESSAGES\default.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\el\LC_MESSAGES\default.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\el\LC_MESSAGES\languages.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\el\LC_MESSAGES\languages.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\ja\LC_MESSAGES\default.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\ja\LC_MESSAGES\default.po; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\ja\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\..\PythonIDE\locale\ja\LC_MESSAGES\languages.po; DestDir: {app}\locale\ja\LC_MESSAGES\
;Source: ..\..\PythonIDE\Scripts\pyscripter_init.py; DestDir: {userappdata}\PyScripter; Flags: uninsneveruninstall onlyifdoesntexist
;Source: ..\..\PythonIDE\Scripts\python_init.py; DestDir: {userappdata}\PyScripter; Flags: uninsneveruninstall onlyifdoesntexist

[Icons]
Name: {group}\PyScripter (Latest Python Version); Filename: {app}\PyScripter.exe
Name: {group}\PyScripter Help; Filename: {app}\PyScripter.chm
Name: {group}\PyScripter for Python 2.3; Filename: {app}\PyScripter.exe; Parameters: --PYTHON23
Name: {group}\PyScripter for Python 2.4; Filename: {app}\PyScripter.exe; Parameters: --PYTHON24
Name: {group}\PyScripter for Python 2.5; Filename: {app}\PyScripter.exe; Parameters: --PYTHON25
Name: {group}\PyScripter for Python 2.6; Filename: {app}\PyScripter.exe; Parameters: --PYTHON26
;Name: {group}\PyScripter for Python 3.0; Filename: {app}\PyScripter.exe; Parameters: --PYTHON30
Name: {group}\{cm:UninstallProgram,PyScripter}; Filename: {uninstallexe}
Name: {userdesktop}\PyScripter; Filename: {app}\PyScripter.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\PyScripter; Filename: {app}\PyScripter.exe; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: Python.File\shell\Edit with Pyscripter; ValueType: string; ValueData: Edit with PyScripter; Flags: uninsdeletekey; Tasks: " fileexplorercontextmenu"; Languages: 
Root: HKCR; Subkey: Python.File\shell\Edit with Pyscripter\command; ValueType: string; ValueData: """{app}\PyScripter.exe"" ""%1"""; Flags: uninsdeletekey; Tasks: " fileexplorercontextmenu"; Languages: 
Root: HKCR; SubKey: .psproj; ValueType: string; ValueData: PyScripter project; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project; ValueType: string; ValueData: PyScripter project file; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project\Shell\Open\Command; ValueType: string; ValueData: """{app}\PyScripter.exe"" --PROJECT ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: PyScripter project\DefaultIcon; ValueType: string; ValueData: {app}\PyProject.ico,-1; Flags: uninsdeletevalue

[Run]
Filename: {app}\PyScripter.exe; Description: {cm:LaunchProgram,PyScripter}; Flags: nowait postinstall skipifsilent
