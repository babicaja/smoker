FROM ellerbrock/alpine-bash-curl-ssl

COPY ./smoke.sh .
COPY ./smoker .

ENTRYPOINT [ "./smoker" ]