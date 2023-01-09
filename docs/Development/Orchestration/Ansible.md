---
title: Ansible
description: Ansible
published: true
date: 2021-06-02T00:46:25.395Z
tags: 
editor: markdown
dateCreated: 2021-06-02T00:43:23.790Z
---

# Ansible

> Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code. It runs on many Unix-like systems, and can configure both Unix-like systems as well as Microsoft Windows. Ansible is agentless, temporarily connecting remotely via SSH or Windows Remote Management to do its tasks.
{.is-info}

> The primary Ansible repository can be located at https://github.com/DTIG-US/Ansible
{.is-success}


## Modules

Modules are mostly standalone and can be written in a standard scripting language (such as Python, Perl, Ruby, Bash, etc.). One of the guiding properties of modules is *idempotency*, which means that even if an operation is repeated multiple times (e.g., upon recovery from an outage), *it will always place the system into the same state.*

## Inventory

The Inventory is a description of the nodes that can be accessed by Ansible. By default, the Inventory is described by a configuration file, in INI or YAML format, whose default location is in `/etc/ansible/hosts`. The configuration file lists either the IP address or hostname of each node that is accessible by Ansible.

### Debian Inventory

> deb:
>   hosts:
>     pihole1:
>       ansible_host: 192.168.2.6
>       ansible_port: 22022
>       ansible_ssh_user: pi
>     pihole2:
>       ansible_host: 192.168.2.7
>       ansible_port: 22022
>       ansible_ssh_user: pi
>     ThinkPadX220:
>       ansible_host: ThinkPadX220
>       ansible_port: 22
>       ansible_ssh_user: john

## Playbooks
Playbooks are YAML files that express configurations, deployment, and orchestration in Ansible, and allow Ansible to perform operations on managed nodes. Each Playbook maps a group of hosts to a set of roles. Each role is represented by calls to Ansible tasks.

## Ansible Tower
Ansible Tower is a REST API, web service, and web-based console designed to make Ansible easier to use for people with a wide range of IT skillsets. It is a hub for automation tasks. Tower is a commercial product supported by Red Hat, Inc. but derived from AWX upstream project, which is open source since September 2017.

> There are additional alternatives to Ansible Tower.  As of 6/1/2021, DTIG is utilizing [Rundeck]((/Admin/Orchestration/Rundeck)
{.is-info}

----
Public: Yes