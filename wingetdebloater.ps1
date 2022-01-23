$apps = @(
    "Xbox Game Bar Plugin",
    "Xbox Game Bar",
    "Xbox TCUI",
    "Xbox Game Speech Window",
    "Xbox Console Companion",
    "Xbox Identity Provider",
    "Xbox",
    "Cortana",
    "Skype",
    "Groove Music",
    "Feedback Hub",
    "Microsoft Tips",
    "Get Help",
    "3D Viewer",
    "Microsoft News",
    "MSN Weather",
    "Paint 3D",
    "Office",
    "Microsoft Solitaire Collection",
    "Mixed Reality Portal",
    "OneNote for Windows 10",
    "Microsoft People",
    "Microsoft To Do",
    "Windows Maps",
    "Windows Voice Recorder",
    "Your Phone",
    "Films & TV",
    "OneDrive",
    "Microsoft OneDrive",
    "Mail and Calendar",
    "Spotify Music"
);

Write-Host "WARNING: I do NOT take responsibility for what may happen to your system!" -ForegroundColor Red;
Write-Host "Review the script for the applications to be removed and update accordingly." -ForegroundColor Red;

$choices  = '&Yes', '&No'
$decision = $Host.UI.PromptForChoice("Run scripts at your own risk!",
                                     "Are you sure you want to proceed?",
                                     $choices, 1)
if ($decision -eq 1) {
    exit 1;
}

Write-Host "Starting wingetdebloater!";
foreach ($app in $apps)
{
    Write-Host " [i] Removing {$app}";
    winget uninstall $app;
}
Write-Host "Done!";
