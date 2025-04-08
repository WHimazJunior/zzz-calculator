import requests
from bs4 import BeautifulSoup
import json

"""
# URL of the Wiki page
url = "https://zenless-zone-zero.fandom.com/wiki/Anby_Demara"

# Send a request to get the page content
headers = {"User-Agent": "Mozilla/5.0"}  # Prevent getting blocked
response = requests.get(url, headers=headers)
soup = BeautifulSoup(response.text, "html.parser")


# Extract page title
title = soup.title.text
print("Page Title:", title)

# Extract all tables

tables = soup.find_all("table", {"class": "wikitable"})
for i, table in enumerate(tables):
    print(f"\nTable {i+1} Data:")
    rows = table.find_all("tr")
    
    for row in rows:
        columns = row.find_all(["th", "td"])
        print([col.text.strip() for col in columns])
"""

all_characters = []
all_clean_characters = []
base_url = "https://zenless-zone-zero.fandom.com/wiki/"


# List of characters to data scrape
character_urls = []
character_names = [
    "Trigger"
    #"Soldier_0_-_Anby", "Pulchra_Fellini"
    #"Hoshimi_Miyabi", "Nicole_Demara", "Anby_Demara", "Astra_Yao", "Ellen_Joe", 
    #"Ben_Bigger", "Jane_Doe", "Luciana_de_Montefio", "Billy_Kid", "Burnice_White", 
    #"Caesar_King", "Corin_Wickes", "Grace_Howard", "Koleda_Belobog", "Lighter", 
    #"Von_Lycaon", "Nekomiya_Mana", "Piper_Wheel", "Qingyi", "Alexandrina_Sebastiane", 
    #"Seth_Lowell", "Soldier_11", "Soukaku", "Tsukishiro_Yanagi", "Zhu_Yuan"
]

for name in character_names:
    character_urls.append(base_url + name)

for url in character_urls:
    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers)
    soup = BeautifulSoup(response.text, "html.parser")

    # Character Information Table - wikitable promotion-stats

    tables = soup.find_all("table", {"class": "wikitable promotion-stats"})

    rows = tables[0].find_all("tr")

    # Extract character name
    character_name = soup.find("h1", {"class": "page-header__title"}).text.strip()

    # Extract headers and filter out "PromotionCosts"
    headers = [th.text.strip() for th in rows[0].find_all("th")]
    filtered_headers = ['promotion_level', 'agent_level', 'health_point', 'attack', 'defense']

    # Extract table data
    data = []
    previous_promo_level = None
    for  row in rows[1:]:
        cells = row.find_all("td")
        row_data =  [cell.text.strip() for cell in cells]

        filtered_data = [value for x, value in zip(filtered_headers, row_data)]

        if len(filtered_data) == 4 and previous_promo_level is not None:
            filtered_data.insert(0, previous_promo_level)
        elif len(filtered_data) == 5:
            previous_promo_level = filtered_data[0]

        for index, value in enumerate(filtered_data):
            if "/" in str(value):
                filtered_data[index] = filtered_data[index][:-3]

        data.append(filtered_data)

    const_stats = {"impact": 0, "crit_rate": 5, "crit_damage": 50, "anomaly_mastery": 0, "anomaly_proficiency": 0, "penetration_ratio": 0, "penetration": 0, "energy_regen": 1.2}
    
    character_data = {
        "name": character_name,
        "stats": [dict(zip(filtered_headers, row)) for row in data]
    }

    character_clean = {
        "name": character_name,
        "stats": dict(const_stats)
    }

    # All Characters Data
    all_characters.append(character_data)
    all_clean_characters.append(character_clean)

with open("clean_stats.json", "w") as y:
    json.dump(all_clean_characters, y, indent=4)

#with open("filtered_stats.json", "w") as y:
#    json.dump(all_characters, y, indent=4)


