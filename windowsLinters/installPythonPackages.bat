@echo Preparing to install python dependencies to use ALE linters...
@echo Reading content of this folder and trying to skip current file:
for %%a in (*) do if not %%~na == %~n0 (start pip install %%~na)

@Echo ... Done
Pause