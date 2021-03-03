## Inspiration

Since the  pandemic struck, the number of people struggling with homelessness has increased by 17%. Seeing innocent, everyday people being forced to sleep on the street has left many people wondering how they can help. This inspired us to create Homelink, the world’s first attempt to encourage everyday people to become involved in the erasure of homelessness.  

## What it does

In the app, users have the option to submit a “quick-report” or a “detailed report” of a rough sleeper that they see. If users choose to submit a quick report, seen on the front page, their location is immediately sent to local shelters through Core Location, GPS, and SMS. If users choose to submit a detailed report, they submit basic information about the rough sleeper they observed from their gender to the number of dependants. After the user submits their report, an automated SMS text message is sent to all local shelters in a 25 square mile radius, who can assess the needs of each particular individual accordingly. Local nonprofit and shelter authorities can determine the needs of the individual after our app has informed them of location, whether it be a bed to sleep on or an opportunity for basic employment. Data from these detailed reports will contribute to the construction of future datasets of homelessness that can be used to predict future homeless hotspots.  

## How we built it
We built our application by first modeling our design on Figma, designing a UI we thought was appealing to the eye. We had one member work on the UI part of the application, while another member worked on the logic of the application. The member working on the logic of the application worked on integrating MapsBox cocoa pods to create a map that could create annotations/pins based on users' current GPS location. Using location data of those suffering from homelessness, we were able to train a machine-learning algorithm to predict future homeless hotspots. 

## Challenges we ran into

Our application crashed during a merge between our UI and logic/backend due to stray files that were deleted during the merge. Besides merge issues, we struggled on implementing maps into our application by taking in data from the internet and using the phone's cellular data to find and plot longitude/latitude positions. 

## Accomplishments that we're proud of

A working app and finally working through our merge issues. 

## What we learned

We learned how to utilize Swift, SMS texting, GPS, Maps, and Machine Learning in an effort to mitigate homelessness across the US. 

## What's next for HomeLink

By connecting with shelters and soup kitchens worldwide, we hope to efficiently and effectively rollout HomeLink worldwide. 
