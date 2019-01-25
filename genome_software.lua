-- -*- lua -*-
------------------------------------------------------------------------
-- genome_software
------------------------------------------------------------------------

help([[
This is a set of genome software applications, put together for ease of use, including:
fastQvalidtor
NxTrim
RecoverY
Trimmomatic 
]])

-- Whatis description
whatis('Description: applications for genome assemblimg')
whatis('singularity pull shub://dp2ski/genome_software_aci:rec')
unsetenv("LD_PRELOAD")
local fastQValidator = [==[
/usr/bin/singularity run --app fastQValidator /path/to/singularity/image "$@";
]==]

local NxTrim = [==[
/usr/bin/singularity run --app NxTrim /path/to/singularity/image "$@";
]==]

local RecoverY = [==[
/usr/bin/singularity run --app RecoverY /path/to/singularity/image "$@";
]==]

local Trimmomatic = [==[
/usr/bin/singularity run --app Trimmomatic /path/to/singularity/image "$@";
]==]

set_shell_function("fastQValidator",fastQValidator,fastQValidator)
set_shell_function("NxTrim",NxTrim,NxTrim)
set_shell_function("RecoverY",RecoverY,RecoverY)
set_shell_function("Trimmomatic",Trimmomatic,Trimmomatic)