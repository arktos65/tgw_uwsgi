# frozen_string_literal: true

#
# Cookbook Name:: tgw_uwsgi
# Recipe:: build-plugins
#
# Copyright 2017 TGW Consulting, LLC.
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

###
# Plugins - override :compile to determine whether to compile a plugin or not
###
default['tgw_uwsgi']['plugins']['root'] = '/usr/lib/uwsgi'
default['tgw_uwsgi']['plugins']['directory'] = '/usr/lib/uwsgi/plugins'
default['tgw_uwsgi']['plugins']['install'] = [
    { name: 'airbrake', compile: false },
    { name: 'alarm_curl', compile: false },
    { name: 'alarm_speech', compile: false },
    { name: 'alarm_xmpp', compile: false },
    { name: 'asyncio', compile: false },
    { name: 'cache', compile: false },
    { name: 'carbon', compile: false },
    { name: 'cgi', compile: true },
    { name: 'cheaper_backlog2', compile: false },
    { name: 'cheaper_busyness', compile: false },
    { name: 'clock_monotonics', compile: false },
    { name: 'clock_realtime', compile: false },
    { name: 'corerouter', compile: true },
    { name: 'coroae', compile: false },
    { name: 'cplusplus', compile: false },
    { name: 'curl_cron', compile: false },
    { name: 'dumbloop', compile: false },
    { name: 'dummy', compile: false },
    { name: 'echo', compile: false },
    { name: 'emperor_amqp', compile: false },
    { name: 'emperor_mongodb', compile: false },
    { name: 'emperor_pg', compile: false },
    { name: 'emperor_zeromq', compile: false },
    { name: 'example', compile: false },
    { name: 'exception_log', compile: true },
    { name: 'fastrouter', compile: true },
    { name: 'fiber', compile: false },
    { name: 'forkptyrouter', compile: false },
    { name: 'gccgo', compile: false },
    { name: 'geoip', compile: false },
    { name: 'gevent', compile: false },
    { name: 'glusterfs', compile: false },
    { name: 'graylog2', compile: false },
    { name: 'greenlet', compile: false },
    { name: 'gridfs', compile: false },
    { name: 'http', compile: true },
    { name: 'jvm', compile: false },
    { name: 'jwsgi', compile: false },
    { name: 'ldap', compile: false },
    { name: 'legion_cache_fetch', compile: false },
    { name: 'libffi', compile: false },
    { name: 'libtcc', compile: false },
    { name: 'logcrypto', compile: false },
    { name: 'logfile', compile: true },
    { name: 'logpipe', compile: true },
    { name: 'logsocket', compile: true },
    { name: 'logzmq', compile: false },
    { name: 'lua', compile: false },
    { name: 'matheval', compile: false },
    { name: 'mongodb', compile: false },
    { name: 'mongodblog', compile: false },
    { name: 'mongrel2', compile: false },
    { name: 'mono', compile: false },
    { name: 'msgpack', compile: true },
    { name: 'nagios', compile: false },
    { name: 'notfound', compile: false },
    { name: 'objc_gc', compile: false },
    { name: 'pam', compile: false },
    { name: 'php', compile: false },
    { name: 'ping', compile: true },
    { name: 'psgi', compile: false },
    { name: 'pty', compile: false },
    { name: 'pypy', compile: false },
    { name: 'python', compile: true },
    { name: 'pyuwsgi', compile: false },
    { name: 'rack', compile: false },
    { name: 'rados', compile: false },
    { name: 'rawrouter', compile: true },
    { name: 'rbthreads', compile: false },
    { name: 'redislog', compile: false },
    { name: 'ring', compile: false },
    { name: 'router_access', compile: false },
    { name: 'router_basicauth', compile: false },
    { name: 'router_cache', compile: false },
    { name: 'router_expires', compile: false },
    { name: 'router_hash', compile: false },
    { name: 'router_http', compile: true },
    { name: 'router_memcached', compile: false },
    { name: 'router_metrics', compile: false },
    { name: 'router_radius', compile: false },
    { name: 'router_redirect', compile: true },
    { name: 'router_redis', compile: false },
    { name: 'router_rewrite', compile: true },
    { name: 'router_spnego', compile: false },
    { name: 'router_static', compile: true },
    { name: 'router_uwsgi', compile: true },
    { name: 'router_xmldir', compile: false },
    { name: 'rpc', compile: false },
    { name: 'rrdtool', compile: false },
    { name: 'rsyslog', compile: true },
    { name: 'ruby19', compile: false },
    { name: 'servlet', compile: false },
    { name: 'signal', compile: false },
    { name: 'spooler', compile: false },
    { name: 'sqlite3', compile: false },
    { name: 'ssi', compile: false },
    { name: 'sslrouter', compile: false },
    { name: 'stackless', compile: false },
    { name: 'stats_pusher_file', compile: false },
    { name: 'stats_pusher_mongodb', compile: false },
    { name: 'stats_pusher_socket', compile: false },
    { name: 'stats_pusher_statsd', compile: false },
    { name: 'symcall', compile: false },
    { name: 'syslog', compile: false },
    { name: 'systemd_logger', compile: false },
    { name: 'tornado', compile: false },
    { name: 'transformation_chunked', compile: false },
    { name: 'transformation_gzip', compile: false },
    { name: 'transformation_offload', compile: false },
    { name: 'transformation_template', compile: false },
    { name: 'transformation_tofile', compile: false },
    { name: 'transformation_toupper', compile: false },
    { name: 'tuntap', compile: false },
    { name: 'ugreen', compile: false },
    { name: 'v8', compile: false },
    { name: 'webdav', compile: false },
    { name: 'xattr', compile: false },
    { name: 'xslt', compile: false },
    { name: 'zabbix', compile: false },
    { name: 'zergpool', compile: false }
]
