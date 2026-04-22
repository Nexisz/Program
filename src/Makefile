BINARY_NAME = max_value

CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17

check-deps:
	@command -v $(CXX) >/dev/null 2>&1 || { echo "g++ не установлен."; exit 1; }

build: check-deps
	$(CXX) $(CXXFLAGS) -o $(BINARY_NAME) main.cpp

run: build
	./$(BINARY_NAME)

clean:
	rm -f $(BINARY_NAME)

.PHONY: build run clean check-deps
