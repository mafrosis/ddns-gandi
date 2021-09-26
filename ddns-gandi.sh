#!/bin/bash
# This file: /etc/dhcp/dhclient-exit-hooks.d/ddns-gandi.sh

/config/scripts/ddns-gandi -host home -domain mafro.net -ifname pppoe0 -apiKey ${GANDI_API_TOKEN} >> /var/log/ddns-gandi.log 2>&1

logger ${0##*/}: 'ddns-gandi attempted to update DNS records'
