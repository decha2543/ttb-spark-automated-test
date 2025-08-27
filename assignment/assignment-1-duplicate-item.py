def find_duplicate_item(list_data):
    return list(set(list_data[0]).intersection(*list_data[1:]))


if __name__ == "__main__":
    list_a = [1, 2, 3, 5, 6, 8, 9]
    list_b = [3, 2, 1, 5, 6, 0]

    duplicates = find_duplicate_item([list_a, list_b])
    print(duplicates)
