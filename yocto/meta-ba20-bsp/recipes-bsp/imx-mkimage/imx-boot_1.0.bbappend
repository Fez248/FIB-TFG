# MCore demos are giving me a headache, disable them
do_compile:prepend() {
  if [ "${MACHINE}" = "imx93evk" ]; then
    bbwarn "Skipping MCore demo copy in do_compile"
    export SKIP_MCORE_COPY="1"
  fi
}

do_deploy:append() {
  if [ "${MACHINE}" = "imx93evk" ]; then
    bbwarn "Skipping MCore demo install in do_deploy for imx93evk"
    export SKIP_MCORE_COPY="1"
  fi
}
