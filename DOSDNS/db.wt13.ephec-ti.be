
; ZONE : wt13.ephec-ti.be
; ------------------------------------------------------------------
$ORIGIN wt13.ephec-ti.be.
$TTL    60

@       IN      SOA    ns1.wt13.ephec-ti.be. hostmaster.wt13.ephec-ti.be. (
                         2017031303     ; Serial
                         14400       ; Refresh
                         3600          ; ety
                         2419200          ; Expire
                         60 )         ; Negative Cache TTL



@                                    IN                NS                   ns1.wt13.ephec-ti.be.
ns1                                  IN                A                    79.137.38.240
wt13.ephec-ti.be.                    IN                A                    79.137.38.240
b2b.wt13.ephec-ti.be.                IN                A                    79.137.38.240
intranet                             IN                A                    79.137.38.240
www                                  IN                CNAME                wt13.ephec-ti.be.
imap                                 IN                CNAME                79.137.38.251
pop3                                 IN                CNAME                79.137.38.251
@                                    IN                MX      5            mail.wt13.ephec-ti.be.
mail                                 IN                A                    79.137.38.240
;@                                    IN               SRV                   voip.wt13.ephec-ti.be.
;voip                                 IN                A                    79.137.38.240
_sip._udp                            IN                SRV          2 0 5060 sip.wt13.ephec-ti.be.
sip                                 IN                 A                     79.137.38.240
voip                                  IN               CNAME                 wt13.ephec-ti.be.

