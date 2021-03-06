FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHJoZWx2bS1hcGIKZGVzY3JpcHRpb246IEFQQiBmb3IgbWFuYWdp\
bmcgUkhFTCBWaXJ0dWFsIE1hY2hpbmUKYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAp0\
YWdzOgogIC0gdmlydHVhbGl6YXRpb24KbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IFJIRUwgVmly\
dHVhbCBNYWNoaW5lIChBUEIpCiAgaW1hZ2VVcmw6IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250\
ZW50LmNvbS9hbnNpYmxlcGxheWJvb2tidW5kbGUvcmhlbC1hcGIvbWFzdGVyL2RvY3MvaW1ncy9p\
Y29uLnBuZwpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIG1ldGFkYXRhOgogICAgICBkaXNw\
bGF5TmFtZTogTGludXggVmlydHVhbCBNYWNoaW5lCiAgICAgIGxvbmdEZXNjcmlwdGlvbjogVmly\
dHVhbCBtYWNoaW5lIHdpdGggUmVkIEhhdCBFbnRlcnByaXNlIExpbnV4CiAgICBkZXNjcmlwdGlv\
bjogUkhFTCBWaXJ0dWFsIE1hY2hpbmUKICAgIGZyZWU6IFRydWUKICAgIHBhcmFtZXRlcnM6CiAg\
ICAgIC0gbmFtZTogYWRtaW5fdXNlcgogICAgICAgIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gVXNl\
cgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gbmFt\
ZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3Jk\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAg\
ICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gbmFtZTogTkFNRQogICAgICAgIHRpdGxlOiBOYW1l\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV90eXBlOiB0ZXh0CiAgICAgICAg\
cmVxdWlyZWQ6IHRydWUKICAgICAgICBkZWZhdWx0OiBteXZtCiAgICAgIC0gbmFtZTogTUVNT1JZ\
CiAgICAgICAgdGl0bGU6IE1lbW9yeSAoaW4gTWlCKQogICAgICAgIHR5cGU6IG51bWJlcgogICAg\
ICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGVmYXVsdDogNjQKICAgICAgLSBuYW1lOiBDUFVf\
Q09SRVMKICAgICAgICB0aXRsZTogQ1BVcwogICAgICAgIHR5cGU6IGVudW0KICAgICAgICByZXF1\
aXJlZDogdHJ1ZQogICAgICAgIGRlZmF1bHQ6ICcxJwogICAgICAgIGVudW06IFsnMScsICcyJywg\
JzQnICwgJzYnICwgJzgnLCAnMTInLCAnMTYnLCAnMzInXQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
