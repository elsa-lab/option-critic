def read_file(path):
    # Open the file
    with open(path) as fp:
        # Read and return the content
        return fp.read()


def write_file(path, content):
    with open(path, 'wb') as fp:
        fp.write(content.encode('utf-8'))
