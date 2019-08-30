# conda
一个python多版本及python包管理工具
## 下载
我们选用mini版本，按需要下载所用的包

- [miniconda安装文档](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation)
- [其他历史版本下载](https://repo.continuum.io/miniconda/)

## conda安装
`bash Miniconda3-latest-MacOSX-x86_64.sh`

## conda使用
###  创建python指定环境
```
conda create --name python3 python=3.7.4
(python3) ➜  miniconda3 conda env list
# conda environments:
#
base                     /Users/zhangtaichao/miniconda3
p2                       /Users/zhangtaichao/miniconda3/envs/p2
python2                  /Users/zhangtaichao/miniconda3/envs/python2
python3               *  /Users/zhangtaichao/miniconda3/envs/python3
```

### 激活环境
`source activate python3`

### 取消激活环境
`conda deactivate`

### 验证python版本
```
➜  miniconda3 conda activate python3
(python3) ➜  miniconda3 which python
/Users/zhangtaichao/miniconda3/envs/python3/bin/python
(python3) ➜  miniconda3 which pip
/Users/zhangtaichao/miniconda3/envs/python3/bin/pip
(python3) ➜  miniconda3 python -V
Python 3.6.8 :: Anaconda, Inc.
(python3) ➜  miniconda3 pip -V
pip 19.0.1 from /Users/zhangtaichao/miniconda3/envs/python3/lib/python3.6/site-packages/pip (python 3.6)
```

## 包管理工具pip
conda本身也是包管理工具，pip是python原生管理工具。为减少复杂度，我们使用pip作为管理工具

```
(python3) ➜  miniconda3 pip

Usage:
  pip <command> [options]

Commands:
  install                     Install packages.
  download                    Download packages.
  uninstall                   Uninstall packages.
  freeze                      Output installed packages in requirements format.
  list                        List installed packages.
  show                        Show information about installed packages.
  check                       Verify installed packages have compatible dependencies.
  config                      Manage local and global configuration.
  search                      Search PyPI for packages.
  wheel                       Build wheels from your requirements.
  hash                        Compute hashes of package archives.
  completion                  A helper command used for command completion.
  help                        Show help for commands.
```
### 安装requirements.txt依赖
`pip install -r requirements.txt`

# FAC
## mysql_config不存在
`
brew install mysql
`

## Could not find the GDAL library
```
$ wget http://download.osgeo.org/gdal/1.11.2/gdal-1.11.2.tar.gz
$ tar xzf gdal-1.11.2.tar.gz
$ cd gdal-1.11.2
$ ./configure
$ make # Go get some coffee, this takes a while.
$ sudo make install

GDAL_LIBRARY_PATH = '/home/sue/local/lib/libgdal.so'
```
