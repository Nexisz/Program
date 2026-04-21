#include <iostream>
#include <vector>
#include <stdexcept>

int findMax(const std::vector<int>& arr) {
    if (arr.empty()) {
        throw std::invalid_argument("Массив пуст");
    }

    int max = arr[0];
    for (size_t i = 1; i < arr.size(); ++i) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }

    return max;
}

int main() {
    int n;

    std::cout << "Количество элементов массива:" << std::endl;
    std::cin >> n;

    if (n <= 0) {
        std::cout << "Некорректный размер массива" << std::endl;
        return 1;
    }

    std::vector<int> numbers(n);

    std::cout << "Введите элементы массива через пробел:" << std::endl;
    for (int i = 0; i < n; ++i) {
        std::cin >> numbers[i];
    }

    try {
        int max = findMax(numbers);
        std::cout << "Максимальное значение: " << max << std::endl;
    } catch (const std::exception& e) {
        std::cout << "Ошибка: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}
