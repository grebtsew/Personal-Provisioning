::
:: Calling powershell script from correct folder to simplify installation
::

@echo off

set install_script_path=%~dp0
@echo %install_script_path%
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\shutdown.ps1\`\" %1`\"\" -Verb RunAs"
