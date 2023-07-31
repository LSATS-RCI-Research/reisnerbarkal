#!/bin/sh

# see ./php-pre-start documentation
# https://catalog.redhat.com/software/containers/ubi8/php-73/5d400891bed8bd38099104e0?gti-tabs=unauthenticated

MOD_ROOT='/opt/app-root/src/php-pre-start'
APP_ROOT='/opt/app-root/src'
# 7-31-2023 Joe Bauer: Seeing if changing the path fixes a pod crash loop; it was APP_ROOT='/opt/app-root/src/omeka-s'

mv -v $MOD_ROOT/config/local.config.php $APP_ROOT/config/local.config.php

# installation of poppler utils for Extract OCR motule. See https://omeka.org/s/modules/ExtractOcr/ for details
# 09-20-2021 Joe Bauer: This is unique to the Barkal project
yum install poppler-utils
