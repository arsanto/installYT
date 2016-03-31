# installYT CENTOS 7 64

wget https://github.com/arsanto/installYT/blob/master/last.sh && chmod +x last.sh && ./last.sh


########################

#Go to the Google console.

https://console.developers.google.com/ 



Create project.

Side menu: APIs & auth -> APIs

Top menu: Enabled API(s): Enable all Youtube APIs.

Side menu: APIs & auth -> Credentials.

Create a Client ID: Add credentials -> OAuth 2.0 Client ID -> Other -> Name: youtube-upload -> 

Create -> OK

Download JSON: Under the section "OAuth 2.0 client IDs". Save the file to your local system.

Use this JSON as your credentials file: --client-secrets=CLIENT_SECRETS


#####################

youtube-dl ZQw9X5C49d8 -o "filename.mp4"

youtube-upload --title="title" filename.mp4
