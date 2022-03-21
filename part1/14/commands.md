14/frontend$ docker build . -t example-frontend
14/frontend$ docker run -d -p 5000:5000 example-frontend
14/frontend$ cd ..
14$ cd backend
14/backend$ docker build . -t example-backend
14/backend$ docker run -d -p 8080:8080 example-backend
