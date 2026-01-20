# Windows Intune MDM Enrollment Verification

Manual enrollment of a Windows 11 VM into Microsoft Intune (MDM) and local verification using native Windows commands.

## Summary
Enrolled a Windows 11 VM using a work/school account.
Verified MDM enrollment without relying on the Intune portal.

## Validation performed
dsregcmd enrollment state.
Intune enrollment registry keys.
MDM-related certificates.
MDM scheduled tasks.

## Notes
This approach is useful when portal access is limited or when troubleshooting device-side enrollment issues.

## Files
intune_device_enrollment_verification.ps1
