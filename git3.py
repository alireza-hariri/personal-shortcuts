

import sys
import subprocess

def run_cmd(
        cmd,
        print_stdout=False,
        exit_on_err=False
    ):
    result = subprocess.run(
        cmd,
        shell=True,
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        print('\n[ERR_IN_COMMAND]')
        print('command:',cmd,'\n')
        print(result.stderr)
        if result.stdout:
            print('output:')
            print(result.stdout)
        sys.exit()
    else:
        if print_stdout:
            print(result.stdout)
        return None, result.stdout




n_arg = len(sys.argv) - 1


if n_arg == 2 :
    run_cmd(f'git add {sys.argv[1]}', print_stdout=True,exit_on_err=True)

    msg = sys.argv[2]
    if ' ' not in msg:
        msg = msg.replace('-',' ')
    run_cmd(f'git commit -m "{msg}"', print_stdout=True, exit_on_err=True)

    run_cmd(f'git push', print_stdout=True)

else:
    print('\ngit3 needs exactly 2 arguments',end=' ')
    print('first arg will passed to git add',end=' ')
    print('and second argument is commit message')
    print(' ',n_arg,'argument instead of 2')
