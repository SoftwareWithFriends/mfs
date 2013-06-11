Mongo File Store
================

Mongo File Store is a library for adding small files from the filesystem to MongoDB using Mongoid.

Status
------
[![Code Climate](https://codeclimate.com/github/SoftwareWithFriends/mfs.png)](https://codeclimate.com/github/SoftwareWithFriends/mfs)
[![Build Status](https://api.travis-ci.org/SoftwareWithFriends/mfs.png?branch=master)](https://travis-ci.org/SoftwareWithFriends/mfs)

Install
-------
```
gem install mfs
```

Purpose
-------
* Shared Set of Files
* Attach Metadata to Files
* Retrieve Files based on metadata

Usage
-----
```ruby
require 'mfs'
entry = Mfs::Loader.load_file('path/to/file')
entry.filepath
entry.filename
entry.created_at
entry.data

# Set arbitrary Meta-data fields
Mfs::Loader.load_file('path/to/file',test_field: true)
entry = Mfs::Entry.where(test_field: true).first

# Load all files in a directory structure
entries = Mfs::Loader.load_directory('path/to/files')

# Load all files and set meta-data
entries = Mfs::Loader.load_directory('path/to/files') do |filename|
    {has_a: filename.include('a')}
end

```

Limitations
-----------
* No File Hierarchy
* Does not use GridFS (<16MB files only)
* Does not check for duplicate files
