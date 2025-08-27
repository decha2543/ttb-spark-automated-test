import string


def basic_cypher(encrypted: str, k: int):
    alphabet_set = string.ascii_uppercase
    decrypted = ""

    for char in encrypted:
        decrypted += alphabet_set[alphabet_set.index(char) - k]

    return decrypted


if __name__ == "__main__":
    encrypted_text = "VTAOG"
    k = 2

    decrypted_text = basic_cypher(encrypted_text, k)
    print(decrypted_text)
