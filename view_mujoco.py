import numpy as np
import os
import collections
import matplotlib.pyplot as plt
import mujoco
import mujoco.viewer
# from dm_control import mujoco
# from dm_control.rl import control
# from dm_control.suite import base

from constants import DT, XML_DIR, START_ARM_POSE
# from constants import PUPPET_GRIPPER_POSITION_UNNORMALIZE_FN
# from constants import MASTER_GRIPPER_POSITION_NORMALIZE_FN
# from constants import PUPPET_GRIPPER_POSITION_NORMALIZE_FN
# from constants import PUPPET_GRIPPER_VELOCITY_NORMALIZE_FN

import IPython
e = IPython.embed

# BOX_POSE = [None] # to be changed from outside

if __name__ == '__main__':
    xml_path = os.path.join(XML_DIR, f'bimanual_viperx_cube_pnp.xml')
    m = mujoco.MjModel.from_xml_path(xml_path)
    d = mujoco.MjData(m)
    mujoco.viewer.launch(m, d)