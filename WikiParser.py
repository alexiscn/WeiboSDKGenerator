#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = 'xushuifeng'


from bs4 import BeautifulSoup
import requests
import os
import sys
import json
import urlparse
import shutil


defaultencoding = 'utf-8'
if sys.getdefaultencoding() != defaultencoding:
    reload(sys)
    sys.setdefaultencoding(defaultencoding)


base_url = 'http://open.weibo.com'


def parse_main_wiki():
    url = 'http://open.weibo.com/wiki/%E5%BE%AE%E5%8D%9AAPI'
    content = requests.get(url).text
    soup = BeautifulSoup(content, "html5lib")
    table = soup.find_all(class_='wiki_table')
    parse_main_wiki_table(table)


def parse_main_wiki_table(table):
    for t in table:
        lines = t.find_all('tr')
        api_title = ""
        for line in lines:
            tds = line.find_all('td')
            if len(tds) == 0:
                continue

            if len(tds) == 2:
                api_wiki = base_url + tds[0].find('a')["href"]
                api_desc = tds[1].get_text().rstrip()
            else:
                api_title = tds[0].get_text().rstrip()
                api_wiki = base_url + tds[1].find('a')["href"]
                api_desc = tds[2].get_text().rstrip()

            parse_detail_wiki(api_wiki, api_desc)


def parse_detail_wiki(url, desc):
    """
    解析API明细页面
    :param url: wiki地址
    :param desc: api描述
    :return: void
    """
    print "parsing detail api wiki page...."
    print url

    content = requests.get(url).text
    soup = BeautifulSoup(content, "html5lib")

    api_dict = dict()

    # find basic information
    api_node = soup.find('a', class_='external free')
    if not api_node:
        print url + "does not contains an API path"
        return
    api_url = api_node["href"]
    api_path = urlparse.urlparse(api_url).path
    api_name = api_url.rsplit('/', 1)[1]
    api_category = api_path.rsplit('/')[2]
    api_category = api_category.replace('.', '_').title()
    api_dict["url"] = api_url
    api_dict["description"] = desc
    api_dict["method"] = "GET"
    api_dict["signature"] = api_category + "_" + api_name.rsplit('.', 1)[0]
    api_dict["category"] = api_category
    api_dict["path"] = api_path

    # parse parameters and responses
    tables = soup.find_all('table', class_='parameters')
    if len(tables) == 2:
        parameters = parse_request_parameters(tables[0])
        api_dict["parameters"] = parameters
        response = parse_response_model(tables[1])
        api_dict["response"] = response
    elif len(tables) == 1:
        parameters = parse_request_parameters(tables[0])
        api_dict["parameters"] = parameters
        api_dict["response"] = []
    else:
        print "!!!!!!!!!! detail page error"
        return

    filename = api_url.rsplit('/', 1)[1]
    if not filename.endswith('json'):
        return

    file_path = "build/" + api_category + "_" + filename
    with open(file_path, mode='w') as f:
        f.write(json.dumps(api_dict, encoding='UTF-8', ensure_ascii=False))
    print "parsing detail page done ====== "


def parse_request_parameters(table):
    lines = table.find_all('tr')
    params = []
    for line in lines:
        tds = line.find_all('td')
        if len(tds) == 4:
            name = tds[0].get_text().rstrip()
            is_must = tds[1].get_text().rstrip()
            b_optional = True if is_must == "false" else False
            param_type = tds[2].get_text().rstrip()
            desc = tds[3].get_text().rstrip()
            param = {
                "name": name,
                "type": param_type,
                "optional": b_optional,
                "description": desc
            }
            params.append(param)
    return params


def parse_response_model(table):
    lines = table.find_all('tr')
    response = []
    for line in lines:
        tds = line.find_all('td')
        if len(tds) == 3:
            name = tds[0].get_text().rstrip()
            param_type = tds[1].get_text().rstrip()
            desc = tds[2].get_text().rstrip()
            res = {
                "name": name,
                "type": param_type,
                "description": desc
            }
            response.append(res)
    return response


if __name__ == '__main__':
    shutil.rmtree('build')
    os.mkdir('build')
    parse_main_wiki()


