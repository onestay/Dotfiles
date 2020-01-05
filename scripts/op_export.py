import json
import csv
import os
file = open("./items.json")
items = json.loads(file.read())
final_items = []
for item in items:
    command = "op get item {}".format(item['uuid'])
    i = os.popen(command).read()
    i_json = json.loads(i)
    item_title = i_json['overview']['title']
    item_url = i_json['overview']['url']
    item_password = None
    item_username = None
    for field in i_json['details']['fields']:
        if 'designation' not in field.keys():
            continue
        if  field['designation'] == 'password':
            item_password = field['value']
        if field['designation'] == 'username':
            item_username = field['value']
    final_item = [item_title,item_url,item_username,item_password]
    print(final_item)
    final_items.append(final_item)
with open('passwords.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Title','Url','Username','Password'])
    for line in final_items:
        writer.writerow(line)

