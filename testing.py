from unittest import TestCase

"""
test case: клас, який містить в собі тест-методи
test suite: набір тест-кейів
test runner: інструмент запуску тестів

1. generale word - execution logic
2. cover/show letters - bl
3. tries counter - bl
4. general flow(lost/guess whole word) - game logic

"""


class CSVGetterTestCase(TestCase):
    """
    0. test init
    1. get_random_word return a word
    """
    def test_csv_getter_init(self):
        getter = CSVGetter(config.WORDS_FILE)
        self.assertEqual(getter.file_path)

    def test_get_random_word_return_word(self):
        getter = CSVGetter(config.WORDS_FILE)
        word = getter.get_random_work()
        # isinstance(word, str) == True
        self.assertIsInstance(word, str)

