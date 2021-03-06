#!/bin/bash
BUFFER_RANGE="_128-512"
TRIES=2
echo "Baisc exp.."
python3 vary-buffer-size-emul.py --tries ${TRIES} --OP emul_vary_buffer_size${BUFFER_RANGE}-mu-1-tau-1-nodirectio-new-rounded-hash.txt
#python3 vary-buffer-size-emul.py --tries ${TRIES} --OP emul_vary_buffer_size${BUFFER_RANGE}-SSD.txt
echo "Baisc exp done"
echo "Varying lTS.."
#python3 vary-buffer-size-emul.py --lTS 6000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-lTS-6M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --lTS 5000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-lTS-5M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --lTS 4000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-lTS-4M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --lTS 3000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-lTS-3M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --lTS 2000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-lTS-2M.txt --tries ${TRIES}
echo "Varying lTS done"



#<<COMMENT
#echo "Varying rTS.."
#python3 vary-buffer-size-emul.py --rTS 12000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-12M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --rTS 16000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-16M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --rTS 20000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-20M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --rTS 24000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-24M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --rTS 28000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-28M.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --rTS 32000000 --OP emul_vary_buffer_size${BUFFER_RANGE}-rTS-32M.txt --tries ${TRIES}
#echo "Varying rTS done"
#COMMENT

<<COMMENT
#<<COMMENT

echo "Varying key size.."
python3 vary-buffer-size-emul.py -K 256 --OP emul_vary_buffer_size${BUFFER_RANGE}-K-256B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py -K 512 --OP emul_vary_buffer_size${BUFFER_RANGE}-K-512B.txt --tries ${TRIES}
echo "Varying key size done"

#COMMENT

echo "Varying lE.."
python3 vary-buffer-size-emul.py --lE 128 --OP emul_vary_buffer_size${BUFFER_RANGE}-lE-128B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --lE 256 --OP emul_vary_buffer_size${BUFFER_RANGE}-lE-256B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --lE 512 --OP emul_vary_buffer_size${BUFFER_RANGE}-lE-512B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --lE 2048 --OP emul_vary_buffer_size${BUFFER_RANGE}-lE-2KB.txt --tries ${TRIES}
echo "Varying lE done"
echo "Varying rE.."
python3 vary-buffer-size-emul.py --rE 128 --OP emul_vary_buffer_size${BUFFER_RANGE}-rE-128B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --rE 256 --OP emul_vary_buffer_size${BUFFER_RANGE}-rE-256B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --rE 512 --OP emul_vary_buffer_size${BUFFER_RANGE}-rE-512B.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --rE 2048 --OP emul_vary_buffer_size${BUFFER_RANGE}-rE-2KB.txt --tries ${TRIES}
echo "Varying rE done"
echo "Varying distribution.."
python3 vary-buffer-size-emul.py --JD 1 --OP emul_vary_buffer_size${BUFFER_RANGE}-normal.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --JD 1 --JD_NDEV 0.25 --OP emul_vary_buffer_size${BUFFER_RANGE}-normal-dev-0.25.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --JD 1 --JD_NDEV 0.5 --OP emul_vary_buffer_size${BUFFER_RANGE}-normal-dev-0.5.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --JD 1 --JD_NDEV 2 --OP emul_vary_buffer_size${BUFFER_RANGE}-normal-dev-2.txt --tries ${TRIES}
COMMENT
#python3 vary-buffer-size-emul.py --JD 2 --OP emul_vary_buffer_size${BUFFER_RANGE}-beta.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 0.001 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-0.001.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 0.01 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-0.01.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 0.1 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-0.1.txt --tries ${TRIES}
python3 vary-buffer-size-emul.py --JD 3 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-mu-1-tau-1-nodirectio-new-rounded-hash.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-SSD.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 1 --JD_NDEV 2 --OP emul_vary_buffer_size${BUFFER_RANGE}-normal-dev-2.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 0.5 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-0.5.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 0.8 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-0.8.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 1.2 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-1.2.txt --tries ${TRIES}
#python3 vary-buffer-size-emul.py --JD 3 --JD_ZALPHA 2 --OP emul_vary_buffer_size${BUFFER_RANGE}-zipf-alpha-2.txt --tries ${TRIES}
echo "Varying distribution done"

