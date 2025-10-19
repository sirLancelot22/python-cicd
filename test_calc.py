from calc import add

def test_add():
    result = add(2, 3)
    print("Le résultat de 2 + 3 est :", result)
    assert result == 5

test_add()
