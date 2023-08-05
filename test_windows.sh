docker build -t pp-test-windows-10 -f ./operating-system/windows/windows-10/Dockerfile ./operating-system/windows/windows-10/
docker run --name pp-test-windows-10 pp-test-windows-10

docker build -t pp-test-windows-11 -f ./operating-system/windows/windows-11/Dockerfile ./operating-system/windows/windows-11/
docker run --name pp-test-windows-11 pp-test-windows-11
