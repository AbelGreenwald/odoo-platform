fail2ban

fail2ban/GeoLite2-Country.mmdb must be placed
retrieve it from https://www.maxmind.com (requires an account now, see TODO #1)

TODO:  

Fail2ban should include odoo, haproxy basic, and jupyter notebook login attempts.  Dont brute force me :) openLDAP might be easier...

User Agent filtering isn't working but I need a break

Automatically update country ip's via geoIP2:
https://dev.maxmind.com/geoip/geoipupdate/#Direct_Downloads

Automatically update bad agents (or adopt this tool properly) via:
https://github.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker/blob/master/_generator_lists/bad-user-agents.list

Automatically update bad referrers via:
https://github.com/Stevie-Ray/referrer-spam-blocker

Codify deployment

Tighten/ de-dup logging. target <$5/mo

Wish List:
get cheap ephemeral servers working via hapoxy api (poor man's AWS Batch/ SageMaker)
get email and sms working
get odoo chat working in browsers
