import datetime

now = datetime.datetime.now()


class Myclass(object):
    def __init__(self) -> None:
        self.name = 'myname'
        self.createdat = datetime.datetime.now()
    
