#! /usr/bin/env python
# -*- coding: utf-8 -*-

import re

service = 'blogger'
service_options = {
    'blog': YOU_BLOG_ID
}

handlers = {
    'Markdown': {
        'match': re.compile(r'.*\.(blog|markdown|md(own)?|mkdn?)$'),
        'module': 'bpy.handlers.mkd',
        'options': {
            'config': {
                'extensions': ['footnotes', 'toc'],
            },
            'smartypants': True,
        },
    }
}
