generate:
	@echo "Generate event protogen..."
	@protoc \
		--proto_path=./proto \
		--go_out=./ \
		--go-grpc_out=./ \
		./proto/event/event.proto ./proto/user/user_event.proto \
		--go_opt=module=10.1.20.149/dropping/proto-event \
		--go-grpc_opt=module=10.1.20.149/dropping/proto-event