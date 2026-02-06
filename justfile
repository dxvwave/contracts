proto_dir := "proto"
out_dir := "src/gen"

gen:
    mkdir -p {{out_dir}}
    python -m grpc_tools.protoc \
        -I {{proto_dir}} \
        --python_out={{out_dir}} \
        --grpc_python_out={{out_dir}} \
        {{proto_dir}}/*.proto
    
    sed -i 's/import auth_pb2 as auth__pb2/from . import auth_pb2 as auth__pb2/g' {{out_dir}}/auth_pb2_grpc.py

clean:
    rm -rf {{out_dir}}/*.py
