set install_script_path=%~dp01_wininstall_choco_list\
@echo %install_script_path%

powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\install_programs.ps1\`\"`\"\" -Verb RunAs"

set install_script_path=%~dp02_setup_workspace\
@echo %install_script_path%
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\setup_workspace.ps1\`\"`\"\" -Verb RunAs"

pause 