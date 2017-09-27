#!/usr/bin/env python2

from __future__ import print_function
import sys
import time
from urllib.parse import urlencode, urlparse, parse_qsl
import hashlib
import base64
import requests
import os
import common
import binascii
import pyotherside

def print(text):
    pyotherside.send('log', text)

def fetch_activation_bytes(region, retUrl, cookiesRaw, player_id):

    base_url = 'https://www.audible.' + region + '/'
    base_url_license = 'https://www.audible.com/'

    payload = {
        'openid.ns': 'http://specs.openid.net/auth/2.0',
        'openid.identity': 'http://specs.openid.net/auth/2.0/identifier_select',
        'openid.claimed_id': 'http://specs.openid.net/auth/2.0/identifier_select',
        'openid.mode': 'logout',
        'openid.assoc_handle': 'amzn_audible_' + region.replace('co.uk','uk'),
        'openid.return_to': base_url + 'player-auth-token?playerType=software&playerId=%s=&bp_ua=y&playerModel=Desktop&playerManufacturer=Audible' % (player_id)
    }

    query_string = urlencode(payload)

    o = urlparse(retUrl)
    data = dict(parse_qsl(o.query))

    # Step 2.5, switch User-Agent to "Audible Download Manager"
    headers = {
        'User-Agent': "Audible Download Manager",
    }
    s = requests.Session()

    cookies = cookiesRaw.split("; ")

    for cookie in cookies:
        cookie = cookie.split("=",1)
        s.cookies.set(cookie[0], cookie[1])

    # Step 3, de-register first, in order to stop hogging all activation slots
    # (there are 8 of them!)
    durl = base_url_license + 'license/licenseForCustomerToken?' \
        + 'customer_token=' + data["playerToken"] + "&action=de-register"
    s.get(durl, headers=headers)

    # Step 4
    url = base_url_license + 'license/licenseForCustomerToken?' \
        + 'customer_token=' + data["playerToken"]
    response = s.get(url, headers=headers)

    activation_bytes, _ = common.extract_activation_bytes(response.content)

    # Step 5 (de-register again to stop filling activation slots)
    s.get(durl, headers=headers)

    return activation_bytes



