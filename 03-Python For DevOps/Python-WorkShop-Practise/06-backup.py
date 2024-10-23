import os

# Utility functions for copying and archiving files and directory trees.
import shutil
import datetime


def backup_files(source_dir, destination_dir):
    today = datetime.date.today()
    backup_files_name = os.path.join(destination_dir, f"backup_{today}")
    shutil.make_archive(backup_files_name, "gztar", source_dir)

source_dir = ("/home/ali/Desktop/Devops /03-Python For DevOps/01-Python-WorkShop-Practise")
destination_dir = ("/home/ali/Desktop/Devops /03-Python For DevOps/01-Python-WorkShop-Practise/06-backups")

backup_files(source_dir, destination_dir)