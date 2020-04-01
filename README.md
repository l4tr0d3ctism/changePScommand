# change powershell command line job 


When you add aliases, functions, and variables, you are actually adding them only to the current Windows PowerShell session. If you exit the session or close Windows PowerShell, the changes are lost.
To retain these changes, you can create a Windows PowerShell profile and add the aliases, functions, and variables to the profiles. The profile is loaded every time that Windows PowerShell starts.
To load a profile, your Windows PowerShell execution policy must permit you to load configuration files. If it does not, the attempt to load the profile fails and Windows PowerShell displays an error message.
Understanding the Profiles
You can have four different profiles in Windows PowerShell. The profiles are listed in load order. The most specific profiles have precedence over less specific profiles where they apply.
```
%windir%\system32\WindowsPowerShell\v1.0\profile.ps1 
```
This profile applies to all users and all shells.
```
%windir%\system32\WindowsPowerShell\v1.0\ Microsoft.PowerShell_profile.ps1 
```
This profile applies to all users, but only to the Microsoft.PowerShell shell.
```
%UserProfile%\My Documents\WindowsPowerShell\profile.ps1 
```
This profile applies only to the current user, but affects all shells. 
```
%UserProfile%\My Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 
```
This profile applies only to the current user and the Microsoft.PowerShell shell.

Creating a Profile
When you create or import variables, aliases, or functions, or add a Windows PowerShell snap-in,
these elements are added only to the current session. If you exit the session or close the window, they are gone.
To save the variables, aliases, functions, and commands that you use routinely, and make them available in
every Windows PowerShell session, add them to your Windows PowerShell profile.
You can also create, share, and distribute profiles to enforce a consistent view of Windows PowerShell in a larger enterprise.
Windows PowerShell profiles are not created automatically. To create a profile, create a text file with
the specified name in the specified location. Typically, you will use the user-specific, shell-specific profile, known as
the Windows PowerShell user profile. The location of this profile is stored in the $profile variable.
To display the path to the Windows PowerShell profile, type:
```
 $profile
 ```
To determine whether a Windows PowerShell profile has been created on the system, type:
```
test-path $profile
```
If the profile exists, the response is True; otherwise, it is False.
To create a Windows PowerShell profile file, type:
```
new-item -path $profile -itemtype file -force
```
To open the profile in Notepad, type:
```
notepad $profile
```
To create one of the other profiles, such as the profile that applies to all users and all shells, type:
```
new-item -path $env:windir\System32\WindowsPowerShell\v1.0\profile.ps1 -itemtype file -force
```
The profile is effective only when the file is located exactly in the path and with the file name that is stored
in the $profile variable. Therefore, if you create a profile in Notepad and then save it, or if you copy a profile
to your system, be sure to save the file in the path and with the file name specified in the $profile variable.
If you create a profile in Notepad, enclose the file name in quotation marks to preserve the PS1 file name extension. For example:
```
"Microsoft.PowerShell_profile.ps1"
```
Without the quotation marks, Notepad appends the .txt file name extension to the file, and Windows PowerShell will not recognize it.

for change any command line in powershell you can using one function in powershell profiles
for change get-process and get-service command line you can using Microsoft.PowerShell_profile.ps1 file 

Similarly, you can change any command line in powershell
