import main
import unittest


class TestMain(unittest.TestCase):

    def test_run(self):
        outputs = []

        def mock_read(prompt):
            prompts = {
                'How many people? ': '8',
                'How many pizzas? ': '2'
            }
            return prompts[prompt]

        def mock_print(text):
            outputs.append(text)

        main.run(mock_read, mock_print)
        self.assertEqual('8 people with 2 pizzas', outputs[0])
        self.assertEqual('Each person gets 2 pieces of pizza.', outputs[1])
        self.assertEqual('There are 0 leftover pieces.', outputs[2])
