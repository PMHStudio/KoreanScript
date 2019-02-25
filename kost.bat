@echo off
node -v
if not "%ERRORLEVEL%" == "0" (
    cls
    echo Node.js is not installed
    echo Open Installation site..
    start https://nodejs.org
    pause
    exit
)
if not exist ./node_modules (
    echo Downloading Modules...
    npm install
)
echo * �̱��� ���δٸ� ��ġ�۾��� �������Դϴ�! >./WorkStation/input.kost
echo * ���� �Ʒ��� �ѱ۽�ũ��Ʈ�� �ۼ�, �����Ͻ��� >>./WorkStation/input.kost
echo * �� â�� �����ø� �˴ϴ�! >>./WorkStation/input.kost
start /wait notepad ./WorkStation/input.kost
node kost.js input
start ./output.txt
echo on
