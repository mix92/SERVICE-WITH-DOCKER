
; ZONE : wt13.ephec-ti.be
; ------------------------------------------------------------------
$ORIGIN wt13.ephec-ti.be.
$TTL 60

@       IN      SOA    ns1.wt13.ephec-ti.be. hostmaster.wt13.ephec-ti.be. (
                         2017031302          ; Serial
                         14400         ; Refresh
                         3600          ; Retry
                        2419200         ; Expire
                        60 )       ; Negative Cache TTL

; NAMESERVERS

@                   IN                NS                   ns1.wt13.ephec-ti.be.
ns1                 IN                A                    79.137.38.240
www                 IN                A                    79.137.38.240
b2b                 IN                A                    79.137.38.240
intranet            IN                A                   79.137.38.240
