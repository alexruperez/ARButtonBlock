
# ARButtonBlock


## Overview

UIButton subclass with touchUpInside as block helper.

<img src="https://raw.github.com/alexruperez/ARButtonBlock/master/ARButtonBlock.png" alt="ARButtonBlock" title="ARButtonBlock" style="display:block; margin: 10px auto 30px auto; align:center">

Example included! UIButton in section header that collapses UITableView sections.

# Usage

## Installation

### Add the following files to your project:
* `ARButtonBlock.m`
* `ARButtonBlock.h`

## Quickstart Guide

Create an `ARButtonBlock` instance exactly as as you would `UIButton`. You can do with either programmatically or in Interface Builder. Programmatically, this looks like:

    ARButtonBlock* button = [[ARButtonBlock alloc] initWithFrame:CGRectMake(0,0,100,30)];

Now, you can set the touchUpInside action in a block:

	[self.button setTouchUpInsideBlock:^{
        NSLog(@"Touched!");
    }];

# Etc.

* Contributions are very welcome.
* Attribution is appreciated (let's spread the word!), but not mandatory.

## Use it? Love/hate it?

Tweet the author @alexruperez, and check out alexruperez's blog: http://alexruperez.com