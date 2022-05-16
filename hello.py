#!/usr/bin/env python3
"""Hello World Multi Linguas

Dependendo da lingua configurada no ambiente o programa exibre a mensagem
correspondente.

Como usar:

Tenha a variável LANG devidamente configurada ex:

     export LANG=pt_BR

Execução:

     pyrhion3 hello.py
     ou
     ./hello.py
"""
__version__ = "0.0.1"
__author__ = "Jefferson Santos"
__license__ = "Unlicense"

import os

current_language = os.getenv("LANG", "en_US")[:5]

msg = "Hello, World"

if current_language == "pt_BR":
    msg = "Olá Mundo!"
elif current_language == "it_IT":
    msg = "Ciao, Mondo!"
elif current_language == "es_SP":
    msg = "Holla, Mundo!"
elif current_language == "fr_FR":
    msg = "Bonjour Monde!"
print(msg)


