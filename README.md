# Clock-In-Out

# Language Selector 🌐

[🇬🇧 English](#english) | [🇪🇸 Español](#español)

---

## English

# Script Description 🚀

This script provides a comprehensive logging system that enables continuous monitoring of administrative activities performed by staff members on the server. When using the `/clock in` command to enter staff mode, the corresponding time is documented, and a detailed notification is sent to a Discord channel through a webhook. Similarly, upon exiting staff mode using the `/clock out` command, a notification is generated that is reflected both in the FiveM chat and the Discord channel.

The Discord notification furnishes essential information, **including the user ID, name, timestamps for staff mode activation and deactivation, as well as the total duration during which staff mode was active** ⏰. This meticulous and automated approach provides an effective means to maintain a detailed record of administrative interactions, facilitating a more transparent and efficient server management.

---

## Discord Webhooks Configuration 📡

1. **Open the Script in Your Preferred Text Editor:**
2. **Replace the Webhook Variables:**
   - Locate the variables [`discordWebhookIn`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L3) and [`discordWebhookOut`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L4).
   - Replace them with the corresponding URLs of your Discord webhooks.
![image](https://github.com/LS-Robert/Clock-In-Out/assets/78977643/b468320c-20cb-40b8-bae2-45cea6470a2b)


---

## FiveM Licenses Configuration 🛡️

1. **Locate the List of Licenses:**
   - Find the list [`allowedLicenses`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L8) within the script.

2. **Update the Licenses:**
   - Replace the example licenses with the actual licenses of authorized users.
![image](https://github.com/LS-Robert/Clock-In-Out/assets/78977643/f3ed0933-5af5-4d72-bb05-56588293ec6f)


With these configuration steps, you can efficiently customize the behavior of the script to suit the specific needs of your FiveM server. 🙌

---

## Español

# Descripción del script 🚀

Este script proporciona un sistema integral de registro que permite monitorizar de manera constante las actividades administrativas de los miembros del staff en el servidor. Al emplear el comando `/clock in` para ingresar al modo staff, se documenta el tiempo correspondiente y se envía una notificación detallada a un canal de Discord a través de una webhook. De manera similar, al salir del modo staff mediante el comando `/clock out`, se genera una notificación que se refleja tanto en el chat de FiveM como en el canal de Discord.

La notificación en Discord proporciona información esencial, **incluyendo la ID, su nombre, la marca temporal de la activación y desactivación del modo staff, así como la duración total durante la cual se mantuvo activo el modo staff** ⏰. Este enfoque meticuloso y automatizado ofrece un medio eficaz para mantener un registro detallado de las interacciones administrativas, facilitando una gestión más transparente y eficiente del servidor.

---

## Configuración de Webhooks de Discord 📡

1. **Abre el Script en tu Editor de Texto Preferido:**
2. **Reemplaza las Variables de Webhook:**
   - Localiza las variables [`discordWebhookIn`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L3) y [`discordWebhookOut`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L4).
   - Reemplázalas con las URLs correspondientes de tus webhooks de Discord.
![image](https://github.com/LS-Robert/Clock-In-Out/assets/78977643/b3ed1090-4ef5-4f48-a4fb-0e97321ef62d)


---

## Configuración de Licencias de FiveM 🛡️

1. **Localiza la Lista de Licencias:**
   - Encuentra la lista [`allowedLicenses`](#https://github.com/LS-Robert/Clock-In-Out/blob/main/server.lua#L8) dentro del script.

2. **Actualiza las Licencias:**
   - Sustituye las licencias de ejemplo con las licencias reales de los usuarios autorizados.
![image](https://github.com/LS-Robert/Clock-In-Out/assets/78977643/624e654b-13db-430f-9054-415685702fe4)

Con estos pasos de configuración, puede personalizar de manera eficiente el comportamiento del script para adaptarlo a las necesidades específicas de su servidor FiveM. 🙌

---
