def init_compile_errors():
    global compile_errors
    compile_errors = []

DEBUG = True
HOST = "0.0.0.0"
PORT = 8000

ELEMENTAL_TYPES_SIZES = {
    'Object': 0,
    'IO': 8,
    'Int': 4,
    'String': 16+16+8,
    'Bool': 1
}
