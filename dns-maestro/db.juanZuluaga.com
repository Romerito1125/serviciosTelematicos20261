;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	dns1.juanZuluaga.com. root.juanZuluaga.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	dns1.juanZuluaga.com.
@	IN	NS	dns2.juanZuluaga.com.

dns1	IN	A	192.168.50.3
dns2	IN	A	192.168.50.4


www	IN	A	192.168.50.3
parcial	IN	CNAME	www
