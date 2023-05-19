# nest-custom-shell-scripts

## How to add scripts to my Ubuntu terminal

1. Copy the full content of any ***.sh*** file, which contains the shell script, *feel free to rename the function!*
2. Open your terminal
3. Run the following command
```
nano $HOME/.bashrc
```
4. Paste it at the end of the file using `Ctrl + Shift + V`
5. Save using `Ctrl + O` + `enter`
6. Exit nano using `Ctrl + X` + `enter`
7. Run the following command to update bash scripts
```
source $HOME/.bashrc
```
8. Now you can run your custom script using its function name!

### Examples
```bash
vnestmodule myModule

# will create files inside the src/ of your project following this sctructure
# - myModule
#     - controllers
#         - index.ts
#     - services
#         - index.ts
#     - repositories
#         - index.ts
#     myModule.module.ts  # will be automatically imported in app.module.ts
```

```bash
vnestfiles myModule find-all

# will create files inside the src/ of your project following this sctructure
# - myModule
#     - controllers
#         - find-all.controller.ts
#     - services
#         - find-all.service.ts
#     - repositories
#         - find-all.repository.ts
```
