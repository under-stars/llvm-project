
DEFAULT_BUILD_DIR := build
DEFAULT_INSTALL_DIR := install


default: llvmr

llvmd:
	cmake -G Ninja -B $(DEFAULT_BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug -C clang/cmake/caches/XYGPU.cmake ./llvm
	ninja -C $(DEFAULT_BUILD_DIR)

llvmr:
	cmake -G Ninja -B $(DEFAULT_BUILD_DIR) -DCMAKE_INSTALL_PREFIX=${DEFAULT_INSTALL_DIR} -DCMAKE_BUILD_TYPE=Release -C clang/cmake/caches/XYGPU.cmake ./llvm
	ninja -C $(DEFAULT_BUILD_DIR)

clean:
	rm -rf $(DEFAULT_BUILD_DIR)
	rm -rf $(DEFAULT_INSTALL_DIR)

