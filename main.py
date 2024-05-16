import os
import subprocess

def run_command(command):
    process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    return stdout, stderr

def write_to_file(data):
    os.makedirs('output', exist_ok=True)
    with open('output/output.txt', 'w') as f:
        f.write(data)

def cd_to_drive():
    os.chdir('/s3-drive')
    print(os.getcwd())
    print(os.listdir())

if __name__ == '__main__':
    command = ['df', '-h']
    stdout, stderr = run_command(command)
    write_to_file(stdout.decode())
    print(stdout.decode())
    print(stderr.decode())

    print('Changing directory to /home/')
    cd_to_drive()
