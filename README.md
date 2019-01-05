# coursera-DL-specialization-docker-env
- You can run locally all programming assignments of all courses in this one environment
- docker promise you will get the same environment with only one step
- All assignments tested (besides 3 assignments in firs two weeks of Course4, but it should work)

# Steps
**0. Install docker and docker-compose (if you haven't)**  
Both docker ce version and docker-compose for your os.

**1. Follow step B and C in this thread**  
https://www.coursera.org/learn/neural-networks-deep-learning/discussions/all/threads/29j3DW9WEeiqiRKZ5Tzn-A/replies/rQbsl29XEei0dhKA653RhA, but we don't need ...-condaenv.txt, because I have had thos into one txt

**2. Activate environment**  
In project directory, `docker-compose up`, depends on your network speed it may take few hours to download the 5G image for the first time.

**3. Copy the last line output of console to browser**  
you can see like `http://0.0.0.0:8888/?token=b2c061a4...`, everytime the token will change, so we can't avoid this step.

**(Course2 mostly) 4. fix error related to matplotlib**  
`matplotlib scatter: TypeError: unhashable type: 'numpy.ndarray'` occurs when running assignments locally, not the problem of this project, see https://stackoverflow.com/questions/49840380/matplotlib-scatter-typeerror-unhashable-type-numpy-ndarray. Anyway, search code for `plot` and append `.ravel().tolist()` to Y or train_Y .... plot used mostly in Course2, and less in other course.

**(Course5 Week2) 5. fix error of encoding**  
add `encoding='utf-8'` to `open` in `read_glove_vecs` used in both word2vector and emoji assignments.

# Attention
If deeplearning.ai change their environments (install/remove/update packages), and you encounter problems when running pythonbooks, using this docker image as base to write the changes to a new dockerfile could be good way to solve it.
