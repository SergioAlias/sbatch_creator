# sbatch_creator

This repository contains a Bash script `create_sbatch.sh` that generates a SLURM batch script from a template (`sbatch_template`). The script replaces placeholders `{NAME}` in the template with a provided string and saves the result to a new file.

## Files

- `create_sbatch.sh`: The main Bash script that generates the SLURM batch script.
- `sbatch_template`: The template  containing {NAME} placeholders for the script generation.

## Usage

```bash
create_sbatch.sh example
```

This will create the file `example.s` in the working directory

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/SergioAlias/sbatch_creator.git
   cd sbatch_creator
   ```
2. Make the script executable:
   ```bash
   chmod u+x create_sbatch.sh
   ```
3. Copy the script into any directory you have in your path (e.g. your local bin):
   ```bash
   mv create_sbatch.sh ~/bin/
   ```
   If the directory is not in your path (you can check that with `echo $PATH`), add the following line to your `~/.bashrc` or `~/.bash_profile` file:
   ```bash
   export PATH="$HOME/bin:$PATH"
   ```
   And source for changes to apply (you can also just restart the terminal):
   ```bash
   source ~/.bashrc  # source ~/.bash_profile
   ```
4. Edit `create_sbatch.sh` to add the template path in your machine (line 21).

5. Edit your `sbatch_template` file to fit your needs. The template should contain the placeholder {NAME} wherever you want the provided string to be inserted. Some changes you can make:
    - Include `module load` for software you always use.
    - Remove `#SBATCH -e` line so output and error go to the same file.
    - Change queue, memory and time defaults.
    - You can also make other minor changes, e.g. change my name in the preamble and put your name instead.
    - Other things not listed here :)

## Contributing

If you have suggestions for improving this script, please feel free to open an issue or create a pull request.
