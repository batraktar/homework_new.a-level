from unittest import TestCase
from words.game_process import GameProcess


class FakeReader:
    @staticmethod
    def get_random_word():
        return "random"


class GameProcessTestCase(TestCase):
    """
    run TC -> SETUP -> test_game_process_init -> TearDown -> setUp -> ...
    """
    def setUp(self) -> None:
        self.game_process = GameProcess(FakeReader())

    def tearDown(self) -> None:
        pass

    def test_game_process_init(self):
        game_process = GameProcess(FakeReader())
        self.assertEqual(game_process.word, "random")

    def test_hidden_word_shows_asterisks_only(self):
        self.assertEqual(self.game_process.hidden_word, "*" * 6)

    def test_hidden_word_shows_asterisks_and_letters(self):
        self.game_process.used_letters = ['a', 'o']
        self.assertEqual(self.game_process.hidden_word, "*a**o*")

    def test_validate_letter_raise_word_completed_on_all_letters_guessed(self):
        self.game_process.used_letters = ['r', 'a', 'n', 'o', 'm']
        with self.assertRaises(WordCompleted):
            self.game_process.validate_letter('d')

    def test_validate_letter_non_alpha(self):
        self.game_process.validate_letter(1)
        self.assertEqual(self.game_process.hidden_word, "*" * 6)
        self.assertFalse(self.game_process.used_letters)
