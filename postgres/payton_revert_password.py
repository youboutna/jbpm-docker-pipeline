import bcrypt

# verify
hashed = b"$2a$10$Z5R69bZZgX9z3tU9zjSYyuwE4iAA8Tk58xCnZ8t86Rb3WEg48dNoC"
ok = bcrypt.checkpw(b"admin", hashed)
print(ok)
# reset (hash a new password)
new_hash = bcrypt.hashpw(b"admin", bcrypt.gensalt(rounds=12)).decode()
print(new_hash)
