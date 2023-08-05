::
:: Calling powershell script from correct folder to simplify process
::

@echo off

set install_script_path=%~dp0
@echo %install_script_path%
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\setup.ps1\`\"`\"\" -Verb RunAs"
