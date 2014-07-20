from distutils.core import setup
from Cython.Build import cythonize

setup(
        name = "addapp",
        ext_modules = cythonize('*.pyx')
        )

