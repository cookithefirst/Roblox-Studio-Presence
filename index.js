import { activeWindow, openWindows } from 'get-windows';
import { Client } from "@xhayper/discord-rpc";

const client = new Client({
    clientId: "1231703162918801429"
});

var OldActivity = {}
var Activity = {}

client.on("ready", () => {
    var Start = Math.floor(Date.now() / 1000)
    client.user?.setActivity(Activity);
    Activity = {}
    setInterval(async () => {
        (await openWindows()).forEach(element => {
            if (element.owner.name.includes("RobloxStudio")) {
                if (element.title.split(" - ").length == 1) {
                    Activity = {
                        details: "Idling",
                        largeImageKey: "https://i.imgur.com/8hKUGdD.png",
                        startTimestamp: Start
                    }
                }
                if (element.title.split(" - ").length == 2) {
                    Activity = {
                        details: `🎮 ${element.title.split(" - ")[0]}`,
                        largeImageKey: "https://i.imgur.com/9e0e5up.png",
                        state: "🌍 Workspace",
                        startTimestamp: Start
                    }
                }
                if (element.title.split(" - ").length == 3) {
                    Activity = {
                        details: `🎮 ${element.title.split(" - ")[0]}`,
                        largeImageKey: "https://i.imgur.com/0o4V5SC.png",
                        state: `📝 ${element.title.split(" - ")[1]}`,
                        startTimestamp: Start
                    }
                }
            }
        });
        if (Activity != OldActivity) {
            client.user?.setActivity(Activity);
            OldActivity = Activity
        }
    }, 5000)
});

client.login();