# Grigori Fursin prepared these low-level scripts for RPi3 autotuning and crowd-tuning

# --compiler_env_uoa=
#  7e149c8504752933 - gcc 4.9.2
#  4f11abfefd3cc031 - gcc 7.1.0
#  8e66a1d34e9e93ea - clang 3.8.1

# You need to substitute above UIDs with your environment (ck show env --tags=compiler)

ck autotune program:zlib --repetitions=2 --scenario=experiment.tune.compiler.flags --extra_tags=main-flags \
   --new --skip_collaborative --skip_pruning \
   --compiler_env_uoa=7e149c8504752933 \
   --cmd_key=encode --quiet --repeat=10 --dataset_uoa=video-raw-0001 --record_uoa=rpi3-zlib-encode-gcc4-main-empty-opt @run-without-opt.json

ck autotune program:zlib --repetitions=2 --scenario=experiment.tune.compiler.flags --extra_tags=main-flags \
   --new --skip_collaborative --skip_pruning \
   --compiler_env_uoa=4f11abfefd3cc031 \
   --cmd_key=encode --quiet --repeat=10 --dataset_uoa=video-raw-0001 --record_uoa=rpi3-zlib-encode-gcc7-main-empty-opt @run-without-opt.json

ck autotune program:zlib --repetitions=2 --scenario=experiment.tune.compiler.flags --extra_tags=main-flags \
   --new --skip_collaborative --skip_pruning \
   --compiler_env_uoa=8e66a1d34e9e93ea \
   --cmd_key=encode --quiet --repeat=10 --dataset_uoa=video-raw-0001 --record_uoa=rpi3-zlib-encode-clang381-main-empty-opt @run-without-opt.json