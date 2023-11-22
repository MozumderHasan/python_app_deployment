docker build -t testbuild:1.1 .

docker run --rm -p 5000:8000 testbuild:1.1 

