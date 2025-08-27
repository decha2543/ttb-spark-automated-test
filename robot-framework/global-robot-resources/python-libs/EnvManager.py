import os
from robot.api.deco import keyword
from dotenv import dotenv_values


class EnvManager:
    def __init__(self, file_path, env_file=".env"):
        env_path = os.path.abspath(os.path.join(file_path, env_file))
        self.env = dotenv_values(env_path)

    @keyword
    def get_data_env(self, key):
        value = self.env.get(key).strip()
        if not value:
            return None
        return value

    @keyword
    def get_list_env(self, key, sep=","):
        value = self.env.get(key)
        if not value:
            return []

        array = []
        split = value.split(sep)

        for item in split:
            array.append(item.strip())
        return array
