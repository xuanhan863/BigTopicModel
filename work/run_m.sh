for m in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384
do
    mpirun -machinefile hostfile ../release/src/model/hlda/hlda --prefix ../data/nytimes --beta=1.0,0.5,0.25,0.125 --gamma 1e-20 -threshold $m --topic_limit 1000 2>&1 | tee m_${m}.log
done