<img align="right" src="https://i.imgur.com/zrE80HY.png" height="200" width="200">

# JMusicBot

[![Downloads](https://img.shields.io/github/downloads/jagrosh/MusicBot/total.svg)](https://github.com/jagrosh/MusicBot/releases/latest)
[![Stars](https://img.shields.io/github/stars/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/stargazers)
[![Release](https://img.shields.io/github/release/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/releases/latest)
[![License](https://img.shields.io/github/license/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/blob/master/LICENSE)
[![Discord](https://discordapp.com/api/guilds/147698382092238848/widget.png)](https://discord.gg/0p9LSGoRLu6Pet0k)<br>
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/jagrosh/MusicBot/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/jagrosh/MusicBot/tree/master)
[![Build and Test](https://github.com/jagrosh/MusicBot/actions/workflows/build-and-test.yml/badge.svg)](https://github.com/jagrosh/MusicBot/actions/workflows/build-and-test.yml)
[![CodeFactor](https://www.codefactor.io/repository/github/jagrosh/musicbot/badge)](https://www.codefactor.io/repository/github/jagrosh/musicbot)

A cross-platform Discord music bot with a clean interface, and that is easy to set up and run yourself!

[![Setup](http://i.imgur.com/VvXYp5j.png)](https://jmusicbot.com/setup)

cmd start = java -Dnogui=true -jar music.jar

MusicBot-0.4.3/
├─ .circleci/
│  └─ config.yml
├─ .github/
│  ├─ ISSUE_TEMPLATE/
│  │  ├─ bug-report.yml
│  │  ├─ config.yml
│  │  └─ feature-request.yml
│  ├─ workflows/
│  │  ├─ build-and-test.yml
│  │  └─ make-release.yml
│  ├─ CODE_OF_CONDUCT.md
│  ├─ FUNDING.yml
│  └─ PULL_REQUEST_TEMPLATE.md
├─ scripts/
│  └─ run_jmusicbot.sh
├─ src/
│  ├─ main/
│  │  ├─ java/
│  │  │  └─ com/
│  │  │     └─ jagrosh/
│  │  │        └─ jmusicbot/
│  │  │           ├─ audio/
│  │  │           │  ├─ AloneInVoiceHandler.java
│  │  │           │  ├─ AudioHandler.java
│  │  │           │  ├─ NowplayingHandler.java
│  │  │           │  ├─ PlayerManager.java
│  │  │           │  ├─ QueuedTrack.java
│  │  │           │  ├─ RequestMetadata.java
│  │  │           │  └─ TransformativeAudioSourceManager.java
│  │  │           ├─ commands/
│  │  │           │  ├─ admin/
│  │  │           │  │  ├─ PrefixCmd.java
│  │  │           │  │  ├─ QueueTypeCmd.java
│  │  │           │  │  ├─ SetdjCmd.java
│  │  │           │  │  ├─ SettcCmd.java
│  │  │           │  │  ├─ SetvcCmd.java
│  │  │           │  │  └─ SkipratioCmd.java
│  │  │           │  ├─ dj/
│  │  │           │  │  ├─ ForceRemoveCmd.java
│  │  │           │  │  ├─ ForceskipCmd.java
│  │  │           │  │  ├─ MoveTrackCmd.java
│  │  │           │  │  ├─ PauseCmd.java
│  │  │           │  │  ├─ PlaynextCmd.java
│  │  │           │  │  ├─ RepeatCmd.java
│  │  │           │  │  ├─ SkiptoCmd.java
│  │  │           │  │  ├─ StopCmd.java
│  │  │           │  │  └─ VolumeCmd.java
│  │  │           │  ├─ general/
│  │  │           │  │  └─ SettingsCmd.java
│  │  │           │  ├─ music/
│  │  │           │  │  ├─ LyricsCmd.java
│  │  │           │  │  ├─ NowplayingCmd.java
│  │  │           │  │  ├─ PlayCmd.java
│  │  │           │  │  ├─ PlaylistsCmd.java
│  │  │           │  │  ├─ QueueCmd.java
│  │  │           │  │  ├─ RemoveCmd.java
│  │  │           │  │  ├─ SCSearchCmd.java
│  │  │           │  │  ├─ SearchCmd.java
│  │  │           │  │  ├─ SeekCmd.java
│  │  │           │  │  ├─ ShuffleCmd.java
│  │  │           │  │  └─ SkipCmd.java
│  │  │           │  ├─ owner/
│  │  │           │  │  ├─ AutoplaylistCmd.java
│  │  │           │  │  ├─ DebugCmd.java
│  │  │           │  │  ├─ EvalCmd.java
│  │  │           │  │  ├─ PlaylistCmd.java
│  │  │           │  │  ├─ SetavatarCmd.java
│  │  │           │  │  ├─ SetgameCmd.java
│  │  │           │  │  ├─ SetnameCmd.java
│  │  │           │  │  ├─ SetstatusCmd.java
│  │  │           │  │  └─ ShutdownCmd.java
│  │  │           │  ├─ AdminCommand.java
│  │  │           │  ├─ DJCommand.java
│  │  │           │  ├─ MusicCommand.java
│  │  │           │  └─ OwnerCommand.java
│  │  │           ├─ entities/
│  │  │           │  ├─ Pair.java
│  │  │           │  └─ Prompt.java
│  │  │           ├─ gui/
│  │  │           │  ├─ ConsolePanel.java
│  │  │           │  ├─ GUI.java
│  │  │           │  └─ TextAreaOutputStream.java
│  │  │           ├─ playlist/
│  │  │           │  └─ PlaylistLoader.java
│  │  │           ├─ queue/
│  │  │           │  ├─ AbstractQueue.java
│  │  │           │  ├─ FairQueue.java
│  │  │           │  ├─ LinearQueue.java
│  │  │           │  ├─ Queueable.java
│  │  │           │  └─ QueueSupplier.java
│  │  │           ├─ settings/
│  │  │           │  ├─ QueueType.java
│  │  │           │  ├─ RepeatMode.java
│  │  │           │  ├─ Settings.java
│  │  │           │  └─ SettingsManager.java
│  │  │           ├─ utils/
│  │  │           │  ├─ FormatUtil.java
│  │  │           │  ├─ OtherUtil.java
│  │  │           │  └─ TimeUtil.java
│  │  │           ├─ Bot.java
│  │  │           ├─ BotConfig.java
│  │  │           ├─ JMusicBot.java
│  │  │           └─ Listener.java
│  │  └─ resources/
│  │     ├─ natives/
│  │     │  ├─ linux-aarch32/
│  │     │  │  └─ libconnector.so
│  │     │  ├─ linux-aarch64/
│  │     │  │  └─ libconnector.so
│  │     │  ├─ linux-arm/
│  │     │  │  └─ libconnector.so
│  │     │  ├─ linux-armhf/
│  │     │  │  └─ libconnector.so
│  │     │  └─ linux-x86/
│  │     │     └─ libconnector.so
│  │     ├─ logback.xml
│  │     └─ reference.conf
│  └─ test/
│     └─ java/
│        └─ com/
│           └─ jagrosh/
│              └─ jmusicbot/
│                 ├─ FairQueueTest.java
│                 └─ TimeUtilTest.java
├─ .gitignore
├─ CNAME
├─ LICENSE
├─ pom.xml
└─ README.md
