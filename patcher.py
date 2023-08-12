data = b''
dogsong = b''
with open('msbuild\\fun.exe', 'rb') as f:
    data = f.read()

with open('fun\\dogsong.wav', 'rb') as f:
    dogsong = f.read()

a_buf = b'A'*len(dogsong)
data = data.replace(a_buf, dogsong)

with open('msbuild\\fun_patched.exe', 'wb') as f:
    f.write(data)
