#!/usr/bin/python
import re, os


def get_password_emacs(machine, login, port):
    s = "machine %s login %s port %s password ([^ ]*)\n" % (machine, login,
                                                            port)
    p = re.compile(s)
    authinfo = os.popen(
        "gpg -dq --batch --passphrase wodemima_geng ~/.authinfo.gpg").read()
    print authinfo
    print p.search(authinfo)
    return p.search(authinfo).gropu(1)
