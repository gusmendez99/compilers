""" Three Address Code """
from dataclasses import dataclass


@dataclass
class AddressNode:
    type: str = None
    offset: int = None
    length: int = None


@dataclass
class Name(AddressNode):
    class_name: str = None
    name: str = None

    def __str__(self) -> str:
        return f"{self.name}@{self.class_name}[{self.offset}]"


@dataclass
class Constant(AddressNode):
    value: str = None

    def __str__(self) -> str:
        return f"{self.value}"


@dataclass
class Temp(AddressNode):
    index: int = None

    def __str__(self) -> str:
        return f"t{self.index}"


@dataclass
class Function(AddressNode):
    class_name: str = None
    name: str = None

    def __str__(self) -> str:
        return f"{self.name}@{self.class_name}"


@dataclass
class Label:
    name: str = None
    index: int = None

    def __str__(self) -> str:
        return f"{self.name}" if self.name else f"label_{self.index}"
