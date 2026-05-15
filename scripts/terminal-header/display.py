import random
import os

WELCOME_MESSAGES = [
    "Get Over The Barrier!",
    "Silver Will",
    "Form is Emptiness, Emptiness is Form",
    "eternally flowing, form is emptiness, emptiness is form",
    "My blade calm as still water",
    "The arcana is the means by which all is revealed",
    "My mind clear, my blade empty",
    "Forward, Relentlessly",
    "My blade will cleave ignorance and light the way",
    "As clouds fall, sakura blooms",
    "Wheres your motivation?",
    "Set your heart ablaze!",
    "Burning Heart",
    "I am the storm that is approaching",
    "Hope In Reverie",
    "Zeroth Hour",
    "Cruel Blue Skies",
    "Elysium",
    "eternally flowing, form is emptiness, emptiness is form",
    "Illusions Shattered",
    "These swords are of those who lost their way",
    "Sword of Swords",
    "Inevitable Struggle",
    "SECOND FORM: GALE",
    "Unfathomed Force",
    "The Decisive Collision",
    "The Merciless Savior",
    "Step Ahead",
    "Sophisticated Fight",
    "Strepitoso Fight",
    "Determination of Fight",
    "Continuation of the Dream",
    "Cry for me, cry for you",
    "Overdosing Heavenly Bliss",
    "Invincible Strength",
    "Concentrate all firepower!!",
    "Unfathomed Force",
    "Belief",
    "Exceed!",
    "To The Future",
    "Spiral of Erebos",
    "The Trails We Walked",
    "Give praise, for he has no equal",
    "Open the Shard!",
    "120X",
    "Disaster Protocol",
    "The Restless Carnival",
    "For You, Upon Your Return",
    "Crimson Sin",
    "At the End of My Beloved Time Limit",
    "Believing Heart",
    "Solid-State Shard Blow",
    "Line of Non-Negotiable",
    "From Now On",
    "Don\'t Forget",
    "To Become the foundation of the world",
    "The Worlds Revolving",
    "Big Shot", 
    "Raise Your Bat",
    "Black Knife",
    "Crimson Fighter",
    "Sunshine Coastline",
    "Gens D'Armes",
    "Count Down to Destiny",
    "Back to Business",
    "The Height of Majesty",
    "Find the 4SPG Out",
    "And Then, Into Space...",
    "Let's Meet in a Dream",
    "Flowing Blade",
    "Pain of Memories",
    "Autumn Knows",
    "Blood Drain",
    "Unlimited Blade Works",
    "Freedom in your heart",
    "Life and death ever flowing",
]

CARD_RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"]

IMAGE_DIR = os.path.expanduser("~") + "/scripts/terminal-header/imgs/"

files = []
for img in os.listdir(IMAGE_DIR):
    files.append(img)

os.system(f'echo "{random.choice(WELCOME_MESSAGES).upper()}"')

if "TMUX" not in os.environ:
    os.system(
        f"timg --delta-move=50:0 -g20x20 -p kitty {IMAGE_DIR}{random.choice(files)}"
    )
else:
    rank = random.choice(CARD_RANKS)
    suite = random.randint(0, 3)
    match suite:
        case 0:
            os.system(
                f'echo  " _____\n|{rank} .  |\n| /.\\ |\n|(_._)|\n|  |  |\n|____{rank}|"'
            )
        case 1:
            os.system(
                f'echo " _____\n|{rank} ^  |\n| / \\ |\n| \\ / |\n|  .  |\n|____{rank}|"'
            )

        case 2:
            os.system(
                f'echo " _____\n|{rank} _  |\n| ( ) |\n|(_\'_)|\n|  |  |\n|____{rank}|"'
            )
        case 3:
            os.system(
                f'echo " _____\n|{rank}_ _ |\n|( v )|\n| \\ / |\n|  .  |\n ____{rank}|"'
            )
    print()
