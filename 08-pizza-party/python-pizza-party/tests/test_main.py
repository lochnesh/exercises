import main
import unittest


class TestMain(unittest.TestCase):
    def setUp(self):
        self.outputs = []
        self.prompts = None

    def mock_print(self, text):
        self.outputs.append(text)

    def mock_read(self, prompt):
        return self.prompts[prompt]

    def test_run(self):
        self.setup_prompts('8', '2')
        main.run(self.mock_read, self.mock_print)
        self.assertEqual('8 people with 2 pizzas', self.outputs[0])
        self.assertEqual(
            'Each person gets 2 pieces of pizza.', self.outputs[1])
        self.assertEqual('There are 0 leftover pieces.', self.outputs[2])

    def test_run_with_sizes(self):
        self.setup_prompts('5', '4 medium')
        main.run(self.mock_read, self.mock_print)
        self.assertEqual('5 people with 4 pizzas', self.outputs[0])
        self.assertEqual(
            'Each person gets 4 pieces of pizza.', self.outputs[1])
        self.assertEqual('There are 4 leftover pieces.', self.outputs[2])

    def setup_prompts(self, people, pizzas):
        self.prompts = {
            'How many people? ': people,
            'How many pizzas? ': pizzas
        }
