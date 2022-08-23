class CheckError:
    def __init__(self, text = None, line = -1):
        self.text = text
        self.line = line

    def __repr__(self):
        return f"Error on line {self.line}: {self.text}"
    
    def __str__(self):
        return f"Error on line {self.line}: {self.text}"
