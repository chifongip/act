# record sim data 
# python3 record_sim_episodes.py --task_name sim_transfer_cube_scripted --dataset_dir sim_transfer_cube_scripted --num_episodes 50

# visualize sim data
# python3 visualize_episodes.py --dataset_dir sim_transfer_cube_scripted --episode_idx 0

# training
# python3 imitate_episodes.py --task_name sim_transfer_cube_scripted \
# --ckpt_dir demo/sim_transfer_cube_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0

# eval
# python3 imitate_episodes.py --task_name sim_transfer_cube_scripted \
# --ckpt_dir demo/sim_transfer_cube_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0 --eval --temporal_agg --onscreen_render

# record cube pick and place data
# python3 pnp_record_sim_episodes.py --task_name sim_cube_pnp --dataset_dir demo/sim_cube_pnp_scripted_one_bowl --num_episodes 50 

# visualize sim data
# python3 pnp_visualize_episodes.py --dataset_dir demo/sim_cube_pnp_scripted_one_bowl --episode_idx 0

# train cube pick and place 
python3 pnp_imitate_episodes.py --task_name sim_cube_pnp \
--ckpt_dir demo/sim_cube_pnp_scripted_model_three_cam_test \
--policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
--num_epochs 2000  --lr 1e-5 \
--seed 0 

# eval cube pick and place 
# python3 pnp_imitate_episodes.py --task_name sim_cube_pnp \
# --ckpt_dir demo/sim_cube_pnp_scripted_model_one_bowl \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0 --eval --temporal_agg --onscreen_render 
