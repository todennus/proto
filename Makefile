gen:
	rm -rf ./gen/service/* && \
	protoc \
	--go_out=./gen/service \
	--go_opt=paths=source_relative \
    --go-grpc_out=./gen/service \
	--go-grpc_opt=paths=source_relative \
    -I=./ \
	-I=./dto/ \
	-I=./dto/resource/ \
	./*.proto \
	./dto/*.proto \
	./dto/resource/*.proto

.PHONY: gen
