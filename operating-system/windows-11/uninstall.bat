set install_script_path=%~dp01_wininstall_choco_list\
@echo %install_script_path%

powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\uninstall_programs.ps1\`\"`\"\" -Verb RunAs"

pause 