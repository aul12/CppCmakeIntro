std::optional<int> res = calculateIfPossible();

if (res.has_value()) {
    std::cout << res.value() << std::endl;
}
