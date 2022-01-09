from sample_package import __version__, foo


def test_version():
    assert __version__ == '0.1.0'


def test_foo():
    foo.foo()
