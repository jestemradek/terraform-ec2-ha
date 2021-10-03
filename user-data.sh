#cloud-config

write_files:
- path: /tmp/docker-compose.yml
  owner: root:root
  permissions: '0644'
  encoding: b64
  content: dmVyc2lvbjogJzMnCgpzZXJ2aWNlczoKICB3ZzoKICAgIGltYWdlOiB0aXZpeC9kb2NrZXItbmdpbng6djExCiAgICBjb250YWluZXJfbmFtZTogcHJveHkKICAgIHBvcnRzOgogICAgICAtIDgwOjgwCiAgICBsb2dnaW5nOgogICAgICBkcml2ZXI6IGpzb24tZmlsZQogICAgICBvcHRpb25zOgogICAgICAgIG1heC1zaXplOiA1MG0KICAgIGVudmlyb25tZW50OgogICAgICAtIE1BSU5URU5BTkNFPXRydWUKICAgIGNvbW1hbmQ6IHNoIC1jICJzZWQgLWkgLWUgXCJzOldlbGNvbWUhOldlbGNvbWUgb24gYGNhdCAvZXRjL2hvc3RuYW1lYCBjb250YWluZXIhIFJlZnJlc2ggbWUhOlwiIC9jb2RlL2h0bWwvaW5kZXguaHRtbCAmJiBkb2NrZXItZW50cnlwb2ludC5zaCI=

apt:
  sources:
    docker.list:
      source: deb [arch=amd64] https://download.docker.com/linux/ubuntu $RELEASE stable
      keyid: 9DC858229FC7DD38854AE2D88D81803C0EBFCD88

packages:
  - docker-ce
  - docker-ce-cli
  - containerd.io
  - docker-compose

runcmd:
  - cd /tmp && docker-compose up -d
