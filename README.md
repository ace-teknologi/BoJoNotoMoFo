# BoJoNotoMoFo

A GitHub action to send a notification via Slack.

![Boris Johnson](./bojo.jpg)
> Image [Chatham House](https://www.flickr.com/photos/chathamhouse/31225992622)

## Prerequisites

* A Slack webhook
* Something to say

## Usage

```yaml
on: push
name: BoJoNotoMoFo

jobs:
  notify:
    name: Notify Slack
    runs-on: ubuntu-latest
    steps:
      - name: Slack Notification
        uses: ace-teknologi/BoJoNotoMoFo@master
        env:
          MESSAGE: "Hi there!"
          SLACK_WEBHOOK: ${{ secrets.SLACK_WEBHOOK }}
```
