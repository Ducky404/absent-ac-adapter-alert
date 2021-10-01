# absent-ac-adapter-alert
Simple script that will alert a laptop user of AC power loss until it is restored. For laptops that never run unplugged, or perhaps for people who like constant unnecessary notifications while on battery.

It should do the thing when the stuff happens. 


**run it as a systemd service, why not?**

`chmod 644 /etc/systemd/system/acalert.service
`

`systemctl enable acalert.service
`
