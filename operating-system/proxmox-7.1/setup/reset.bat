:: SSH into proxmox and install configs

@echo off

set install_script_path=%~dp0
@echo %install_script_path%
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\reset.ps1\`\"`\"\" -Verb RunAs"
