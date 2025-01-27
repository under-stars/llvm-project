
BUILD_DIR := builds

default: rel

rel:
	cmake -B $(BUILD_DIR) -G Ninja -C clang/cmake/caches/zxcv.cmake ./llvm -DCMAKE_BUILD_TYPE=Release
	ninja -C $(BUILD_DIR) -j20

dbg:
	cmake -B $(BUILD_DIR) -G Ninja -C clang/cmake/caches/zxcv.cmake ./llvm -DCMAKE_BUILD_TYPE=Debug
	ninja -C $(BUILD_DIR) -j20

clean:
	rm -rf $(BUILD_DIR)

