py build_input.py
docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag wallatsebastian/telegraf-pv:buildx-latest ./