aws s3 sync /var/log/httpd s3://mybucket/ --exclude="*" --include="*.gz"
