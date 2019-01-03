# coursera-DL-specialization-docker-env
- You can run locally all programming assignments of all courses in this one environment
- docker promise you will get the same environment with only one step

# Step
0. Install docker and docker-compose (if you haven't)  

1. Follow step B and C in this thread  
https://www.coursera.org/learn/neural-networks-deep-learning/discussions/all/threads/29j3DW9WEeiqiRKZ5Tzn-A/replies/rQbsl29XEei0dhKA653RhA

2. Extract tar.gz to folders respectively. (Windows user may need other tool to extract tar.gz)  

3. Activate environment  
In project directory, `docker-compose up`, it will take some time for the first time.

4. Copy the last line output of console  
like `http://0.0.0.0:8888/?token=b2c061a4...`, everytime the token will change, so we can't avoid this step.

# Little Attention
- if you change dockerfile, use `docker-compose --build` to update your change (docker will cache, so applying little change should be fast)
- packages that use conda install will install the latest, which may not be compatible with old versions, in that case, specify the version of package
- basic image may be updated (it has only latest tag, so...) (official conda image is based on py35 and won't well get py36 packages specified in specs.
