TEST(Sqrt, Simple) {
    EXPECT_DOUBLE_EQ(sqrt(4), 2);
}

TEST(Sqrt, NonInteger) {
    EXPECT_DOUBLE_EQ(sqrt(17), 4.12310562562);
}

TEST(Sqrt, Negative) {
    EXPECT_THROW(sqrt(-1), std::runtime_error);
}
