import sys
import subprocess

def otool(s):
    o = subprocess.Popen(['/usr/bin/otool', '-L', s], stdout=subprocess.PIPE)
    for l in o.stdout:
        line = l.decode("utf-8")
        if line[0:1] == '\t':
            yield line.split(' ', 1)[0][1:]

def deps(inp, res):
    if not(inp in res):
        res.add(inp)
        for d in otool(inp):
            deps(d, res)

def all_deps(inp):
    result = set()
    deps(exe, result)
    result = list(result)
    result.sort()
    return result

exe = sys.argv[1]
print(exe, file=sys.stderr)
lines = all_deps(exe)
print("", file=sys.stderr)
for line in lines:
    print(line)