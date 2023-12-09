cd api
docker build -t ai-backend-image -f docker/Dockerfile .
docker build -t mlflow-server-image -f docker/mlflow/Dockerfile .
cd ..

cd web-app
docker build -t ai-web-app-image -f docker/Dockerfile .
cd ..

docker compose up -d
