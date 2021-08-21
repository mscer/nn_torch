
##https://github.com/pytorch/pytorch/blob/master/torch/distributed/launch.py

##nproc_per_node  每个节点的进程数??
##nodes 总节点个数
##node_rank  第几个node
##local_world_size node上的gpu分组个数  似乎跟nproc_per_node作用一样？
##每个process可以有多个gpu


PYTHON=${PYTHON:-"python"} 
PORT=${PORT:-28890} 
$PYTHON -m torch.distributed.launch \
    --nproc_per_node=2 \
    --nnodes=2 \
    --node_rank=0 \
    --master_addr="33.17.125.80" \
    --master_port=$PORT \
    demo.py  \
    --local_world_size=2 \
