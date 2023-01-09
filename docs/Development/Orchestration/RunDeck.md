---
title: RunDeck
description: Rundeck is open source software that helps you automate routine operational procedures in data center or cloud environments.
published: true
date: 2021-06-04T04:19:29.687Z
tags: orchestration
editor: markdown
dateCreated: 2021-06-04T03:49:08.396Z
---

# RunDeck Runbook Automation

> Rundeck is open source software that helps you automate routine operational procedures in data center or cloud environments. Rundeck provides a number of features that will alleviate time-consuming grunt work and make it easy for you to scale up your automation efforts and create self service for others.
{.is-info}

## Installation

On Debian-based systems, `sudo apt install rundeck`

## Configuration

### Service Configuration
1. After install, we start the service
`sudo systemctl start rundeck`
2. We enable the service to start as a service
`sudo systemctl enable rundeck`

### Project Configuration

> Main Page: [RunDeck-Project](/dtig-wiki/Admin/Orchestration/RunDeck/RunDeck-Project)
{.is-info}

After the installation and initial configuration is complete, the website is available at https://h1-rasp-dev-ansibletower1:9090 or https://localhost:9090.  The rest of the project configuration is done there.

> Project configuration is intended for Ansible administrators and developers only!
{.is-warning}

## System Configuration
> Main Page: [RunDeck System Configuration](/dtig-wiki/Admin/Orchestration/RunDeck/RunDeck-SysConfig)
{.is-info}


## Executing a RunDeck Project or Runbook

> Main Page: [Executing A RunDeck Runbook](/dtig-wiki/Admin/Orchestration/RunDeck/Executing-RunDeck)
{.is-info}

1. On the RunDeck home page, select your project (Ex: Debian Package Updater)
2. On the left-hand navigation, select ***JOBS***
3. On the right panel, find the job(s) you want to execute and select it.
4. Midway through the page, after the ReadMe portion, select the button ***Run Job Now***
5. This will execute the job where you can see the outcome.

----
Public: Yes