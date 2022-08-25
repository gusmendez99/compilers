class CheckError:
    def __init__(self, text = None, line = -1):
        self.text = text
        self.line = line

    def __repr__(self):
        if self.line and self.line >= 0:
            return f"Error on line {self.line}: {self.text}"
        return f"Error: {self.text}"
        
    
    def __str__(self):
        if self.line and self.line >= 0:
            return f"Error on line {self.line}: {self.text}"
        return f"Error: {self.text}"
