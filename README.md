# nest-custom-shell-scripts

## How to add scripts to my Ubuntu terminal

1. Copy your desired bash script function, *feel free to rename it!*
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
```
nestmodule myModule

# will create files inside the src/ of your project following this sctructure
# - myModule
#     - controllers
#         - find-all.controller.ts
#     - services
#         - find-all.service.ts
#     -repositories
#         - find-all.repository.ts
#     myModule.module.ts  # will be automatically imported in app.module.ts
```

```bash
nestedfiles myModule find-all

# will create files inside the src/ of your project following this sctructure
# - myModule
#     - controllers
#         - find-all.controller.ts
#     - services
#         - find-all.service.ts
#     -repositories
#         - find-all.repository.ts
```
