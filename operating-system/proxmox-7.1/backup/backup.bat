::SSH into proxmox and backup important files


@echo off
set install_script_path=%~dp0
@echo %install_script_path%
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%install_script_path%`\"; & \`\".\backup.ps1\`\"`\"\" -Verb RunAs"
