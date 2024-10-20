import os
import traceback
import subprocess
import sys

directory = 'pdkb-planning/examples/planning/'  # Replace with your directory path

for root, dirs, files in os.walk(directory):
    for file in files:
        file_path = os.path.join(root, file)
        print(file_path)
        file_directory = os.path.dirname(file_path)
        file_name = os.path.basename(file_path)
        if ".pdkbddl" in file_name and "prob" in file_name:
            result_path = file_directory.replace(directory,"examples/")
            result_path = os.path.join(result_path, file_name.replace(".pdkbddl",""))
            # print(result_path)
            if not os.path.exists(result_path):
                os.makedirs(result_path)
                try:
                    subprocess.run(
                        ['python3', '-m', 'pdkb.planner', file_path, '--keep-files'],
                        timeout=60,  # Timeout in seconds
                        check=True
                    )
                except subprocess.TimeoutExpired:
                    print(f"Command timed out for {file_path}")
                    continue  # Skip to the next file
                except subprocess.CalledProcessError as e:
                    print(f"Command failed with return code {e.returncode} for {file_path}")
                    continue  # Skip to the next file
                except Exception as e:
                    print(f"An unexpected error occurred while processing {file_path}: {e}")
                    traceback.print_exc()
                    continue  # Skip to the next file
                result_file_names = ["pdkb-problem.pddl","pdkb-plan.txt","pdkb-plan.out","pdkb-domain.pddl", "execution.details"]
                for result_file_name in result_file_names:
                    try:
                        os.rename(result_file_name, f"{result_path}/{result_file_name}")
                    except FileNotFoundError:
                        print(f"Error moving files from {file_directory} to {result_path}")
                    except KeyboardInterrupt:
                        print(f"KeyboardInterrupt")
                        sys.exit(1)
                    except:
                        print("ERROR ---------------------")
                        print(file_path)
                        traceback.print_exc()
            # os.system(f"python3 pdkb-planning/pdkb-planner.py {file_path} {file_directory}/output-{file_name}.txt")
            pass
        else:
            print(f"Skipping {file_path}")
