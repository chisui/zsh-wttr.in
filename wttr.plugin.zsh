function wttr {
  if [ "$1" = "" ]
  then
    if [ -z ${WTTR_DEFAULT+x} ];
    then
        echo "WTTR_DEFAULT not set"
        return 1
    else
        local WHERE=$WTTR_DEFAULT
    fi
  else
    local WHERE=$1
  fi
  curl -H "Accept-Language: ${LANG%_*}" wttr.in/$WHERE
}
