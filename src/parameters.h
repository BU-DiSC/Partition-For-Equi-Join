#ifndef PARAMETERS_H
#define PARAMETERS_H

#include<string>

#define DB_PAGE_SIZE 4096
#define FUDGE_FACTOR 1.04

enum Dist {UNIFORM, NORMAL, ZIPFIAN, BETA};
enum PartitionedJoinMethod {Hash, ApprMatrixDP, MatrixDP, BNLJ, DynamicHybridHash, Hybrid};
enum HashType {
    MD5 = 0x5U,
    SHA2 = 0x4U,
    MurMurhash = 0x3U,
    XXhash = 0x2U,
    CRC = 0x1U,
    CITY = 0x6U,
    RobinHood = 0x0U
};


struct Params{
	long left_table_size;
	long right_table_size;
	uint32_t K;
	// partition params
	uint32_t left_E_size;
	uint32_t right_E_size;
	uint32_t B;
	uint32_t page_size;
	PartitionedJoinMethod pjm;
	uint32_t BNLJ_inner_rel_buffer;
	uint32_t num_partitions;
	HashType ht;
	double randwrite_seqread_ratio;
	uint32_t k;
	bool rounded_hash;
	double c;
	double th; 
	bool hybrid;

	std::string workload_dis_path;	
	std::string workload_rel_R_path;	
	std::string workload_rel_S_path;	
	std::string output_path;
        // distribution params
	Dist join_dist;
	float join_dist_norm_stddev;
	float join_dist_beta_alpha;
	float join_dist_beta_beta;
	float join_dist_zipf_alpha;

	//hardware params;
	float io_latency; // in micro-seconds
};

#endif