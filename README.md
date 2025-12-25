# Twitch Data Analysis

## Overview
This project analyzes Twitch streaming and chat activity data to uncover insights into viewer behavior, popular games, and engagement patterns.

### Analysis Workflow
1. Raw Twitch data loaded from CSV files.
2. SQL used to explore trends and define business questions.
3. Power BI used to model the data and build interactive dashboards.

## Datasets
### streams.csv
Contains information about live streams:
- time: Timestamp of stream activity
- device_id: Unique viewer identifier
- login: User login hash
- channel: Streamer channel name
- country: Viewer country
- player: Viewing device/platform
- game: Game being streamed
- stream_format: Stream format
- subscriber: Subscriber status

### chat.csv
Contains chat message activity:
- time: Timestamp of message
- device_id: Viewer identifier
- login: User login hash
- channel: Channel name
- country: Viewer country
- player: Device type
- game: Game being discussed

## Business Questions
- Which games are streamed the most?
- What are the most streamed channels?
- What devices do viewers use most?
- Which countries generate the most activity?
- Countries where the most popular game is streamed the most?
- Total amount of hours streamed in the United Kingdom, and how can we increase these hours?
- How does chat engagement differ by game?
- Is there a relationship between streams and chat activity?
- How many of the streamers are subcribers?

## Key SQL Techniques Used
- Aggregations (COUNT, GROUP BY)
- Sorting and filtering
- JOINs between datasets
- DISTINCT counts

## Insights
- Top competitive games like *League of Legends* dominate overall stream volume, indicating strong and consistent viewer demand.
- Focusing marketing campaigns and sponsorships on these high-volume games is likely to yield the greatest reach and engagement.
  
- The most streamed channels (Like Frank) are responsible for a large share of total streams, suggesting that Twitch activity is highly concentrated among top streamers.
- Partnering with these high-performing channels can significantly increase platform engagement.
  
- Viewers predominantly watch Twitch streams on desktop devices, followed by mobile platforms. Console-based viewing represents a smaller portion of total activity.

- Top 5 countries that generate the most activity:
USA, Taiwan, Germany, United Kingdom, Russia.
These countries should be prioritized for regional events, advertising campaigns, and localized content strategies.


- Recommendations to increase hours streamed: Promote UK-based streamers on the Twitch homepage, and support UK channels that focus on streaming ‘League of Legends’, to generate more traffic and thus increase the stream count in Great Britain.

- Games with high viewership also show strong chat engagement.
  
- There is a positive relationship between the number of streams and chat activity, however, the relationship is not perfectly linear. Some games outperform others in chat engagement relative to their stream volume.

- Only a portion of stream activity comes from subscribers, with non-subscribers accounting for a significant share of streams. This presents an opportunity to: convert active non-subscribers through targeted offers, and Promote subscriber-only benefits.
This will help generate more subscription revenue.

## Power BI Dashboard

This project includes an interactive Power BI dashboard built on the same Twitch datasets
used in the SQL analysis.

### Files
- [`twitch_dashboard.pbix`](powerbi/twitch_dashboard.pbix) – Interactive Power BI report.
- [Dashboard pdf summary](powerbi/screenshots/) – Preview images of the report pages.

### Dashboard Overview
- **Overview Page:** Twitch activity, top games, device usage, and geography.
- **Engagement Analysis:** Chat activity and stream–chat relationships.
- **Subscriber Analysis:** Subscriber vs non-subscriber behavior.


## How to run the SQL file
1. Load the CSV files into your SQL database.
2. Run the queries in `Twitch.sql`.
