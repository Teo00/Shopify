@REM ENSURE YOU HAVE PYTHON 3.9.13 as the command 'python'
$PSDefaultParameterValues=@{
  "Out-File:Encoding"={'utf8'}
}

python -V
python -m venv venv
venv\Scripts\activate
py -m pip install --upgrade pip
pip install -U setuptools
pip install shuup
pip uninstall django-enumfields
pip install django-enumfields==2.1.1
pip uninstall markupsafe
pip install markupsafe==2.0.1

rm .\venv\Lib\site-packages\shuup\admin\templates\shuup\admin\support\_support_dashboard_block.jinja
echo '' >> .\venv\Lib\site-packages\shuup\admin\templates\shuup\admin\support\_support_dashboard_block.jinja