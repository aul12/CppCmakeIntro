TEST(Averager, Single) {
    Averager avg;
    avg.submit(1);
    avg.submit(3);

    EXPECT_DOUBLE_EQ(avg.getAverage(), 2);
}

TEST(Averager, ErrorNone) {
    Averager avg;
    EXPECT_THROW(avg.getAverage(), std::runtime_error);
}
