@echo off
chcp 65001 >nul
title 膝影骺现·膝关节MRI骨骺自动分割系统 - 本地服务器
echo ========================================
echo   膝影骺现·膝关节MRI骨骺自动分割系统 - 本地服务器
echo ========================================
echo.
echo 正在启动本地服务器，请保持本窗口打开...
echo.
echo 启动后请在浏览器中访问（已自动打开）：
echo   http://localhost:8002/
echo.
echo 关闭本窗口或按 Ctrl+C 即可停止服务器
echo ========================================
echo.

cd /d "%~dp0"

:: 延迟2秒后自动用默认浏览器打开页面
start "" cmd /c "timeout /t 2 /nobreak >nul && start http://localhost:8002/"

python -m http.server 8002

if errorlevel 1 (
  echo.
  echo [提示] 未检测到 Python，请先安装 Python（安装时勾选 Add Python to PATH），
  echo 或改用 VS Code 的 Live Server 打开 index.html。
  pause
)
