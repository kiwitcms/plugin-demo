from datetime import datetime
from unittest import TestCase


class DemoTestCase(TestCase):
    def test_will_always_pass(self):
        self.assertTrue(True)

    def test_will_always_fail(self):
        self.fail('This always fails')

    def test_this_is_flaky(self):
        self.assertEqual(0, datetime.now().microsecond % 2)
