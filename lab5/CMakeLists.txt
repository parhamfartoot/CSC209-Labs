cmake_minimum_required(VERSION 3.15)
project(lab5)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(lab5
        bitmap.c
        bitmap.h
        bitmap_printer.c
        dog.bmp
        Makefile
        simple.bmp
        toronto.bmp)
