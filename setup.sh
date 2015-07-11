#!/bin/bash

SRC_DIR=./after
VIM_DIR=~/.vim
PLUGINS_DIR="$VIM_DIR/after"
SYNTAX_DIR="$PLUGINS_DIR/syntax"
INDENT_DIR="$PLUGINS_DIR/indent"
FTPLUGIN_DIR="$PLUGINS_DIR/ftplugin"

if [ ! -d "$VIM_DIR" ]; then
  echo "User Vim directory not detected..."
  echo "Aborting installation..."
else
  echo "Located user Vim directory..."

  # copy syntax files
  if [ ! -d "$SYNTAX_DIR" ]; then
    echo "Creating syntax directory $SYNTAX_DIR"
    mkdir -p "$SYNTAX_DIR"
  else
    echo "Located syntax directory..."
  fi
  echo "Copying syntax files into syntax directory..."
  cp -r "$SRC_DIR/syntax/fortran.vim" "$SYNTAX_DIR"

  # copy indent files
  if [ ! -d "$INDENT_DIR" ]; then
    echo "Creating indent directory $INDENT_DIR"
    mkdir -p "$INDENT_DIR"
  else
    echo "Located indent directory..."
  fi
  echo "Copying indent files into indent directory..."
  cp -r "$SRC_DIR/indent/fortran.vim" "$INDENT_DIR"

  # copy ftplugin files
  if [ ! -d "$FTPLUGIN_DIR" ]; then
    echo "Creating ftplugin directory $FTPLUGIN_DIR"
    mkdir -p "$FTPLUGIN_DIR"
  else
    echo "Located ftplugin directory..."
  fi
  echo "Copying indent files into indent directory..."
  cp -r "$SRC_DIR/ftplugin/fortran.vim" "$FTPLUGIN_DIR"

  echo "Done installing vim.fortran!"
fi
