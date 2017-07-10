try:
    a = 1
    raise Exception("gogogo")
except SomeException as e:
    print("someexception catched")
except:
    print("ayyyy")
finally:
    print("here we are")
