import os
from setuptools import setup


def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()


required = ['django']

setup(name='django-tutorial',
      author="Francisco Huertas",
      author_email="pacohuertas@gmail.com",
      license="Apache2",
      packages=["mysite"],
      description="Mock library using python decorators",
      long_description=read('README.md'),
      url='https://github.com/fhuertas/django_tuto',
      install_requires=required,
      classifiers=[
          "Development Status :: 1 - Planning",
          "License :: OSI Approved :: Apache Software License",
          'Programming Language :: Python :: 3',
          'Framework :: Django :: 1.10',
      ])
