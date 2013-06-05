Mongo File Store
================

Mongo File Store is a library for adding small files from the filesystem to MongoDB.

Status
------
[![Code Climate](https://codeclimate.com/github/SoftwareWithFriends/mfs.png)](https://codeclimate.com/github/SoftwareWithFriends/mfs)
[![Build Status](https://api.travis-ci.org/SoftwareWithFriends/mfs.png?branch=master)](https://travis-ci.org/SoftwareWithFriends/mfs)

Purpose
-------
* Shared Set of Files
* Attach Metadata to Files
* Retrieve Files based on metadata

Limitations
-----------
* No File Hierarchy
* Does not use GridFS (<16MB files only)
* Does not check for duplicate files
