
def getResourcepath(resource,file_path):
    file_path = file_path.split("/")
    file_path[-1]=resource
    file_path[-2]="res"
    res_path = '/'.join(file_path)
    print(res_path)
    return res_path
