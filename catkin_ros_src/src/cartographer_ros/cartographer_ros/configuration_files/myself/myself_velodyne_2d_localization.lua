-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "myself_velodyne_2d.lua"
TRAJECTORY_BUILDER.pure_localization = true
POSE_GRAPH.optimize_every_n_nodes = 20

--fast location 
MAP_BUILDER.num_background_threads=8
POSE_GRAPH.constraint_builder.sampling_ratio=0.5*POSE_GRAPH.constraint_builder.sampling_ratio
POSE_GRAPH.global_sampling_ratio=0.1*POSE_GRAPH.global_sampling_ratio
POSE_GRAPH.max_num_final_iterations=1


return options