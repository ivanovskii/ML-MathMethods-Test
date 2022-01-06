@echo off

set venv_folder=%CD%\venv
set requirements=%CD%\requirements.txt

if not exist "%venv_folder%\*.*" (
    if exist "%requirements%" (

	echo Creating virtual environment...
        python -m venv venv
	echo done
	echo.

	echo Activating the virtual environment...
        call .\venv\scripts\activate.bat
	echo done
	echo.

	echo Installing project dependencies...
        pip install --no-cache-dir -r requirements.txt
	echo done
	echo.

    ) else (
        echo File requirements.txt doesn't exist!
	pause
	exit
    )
)


call .\venv\scripts\activate.bat
python -m notebook
