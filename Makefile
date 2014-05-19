buildcython:
	cython -v -t --cplus pyemd/emd.pyx
	python setup.py build_ext --inplace
	mv emd.cpython-34m.so pyemd/emd.so

clean:
	rm -rf pyemd/emd.so

runtests:
	make buildcython
	py.test
