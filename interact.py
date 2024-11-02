from brownie import MessageStorage, accounts

def main():
    # Инициализация аккаунта
    account = accounts.load('your_account')  # Загрузите свой аккаунт Brownie

    # Разворачиваем контракт
    contract = MessageStorage.deploy({"from": account})

    # Взаимодействие с контрактом
    contract.setMessage("Привет, блокчейн!", {"from": account})
    print("Message:", contract.getMessage())
