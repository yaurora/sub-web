# subconverter-web

基于 vue-cli 与 [tindy2013/subconverter](https://github.com/tindy2013/subconverter) 后端实现的配置自动生成。

## Table of Contents

- [ChangeLog](#ChangeLog)
- [Docker](#Docker)
- [Requirements](#Requirements)
- [Install](#install)
- [Usage](#usage)
- [Related](#Related)
- [Contributing](#contributing)
- [License](#license)

## ChangeLog

- 20200730

  独立各类后端配置到 .env 文件中，现在修改后端只需要修改 .env 即可。

# Deployment

## Docker

### build from scratch

```shell
docker build -t subconverter-web:latest .

docker run -d -p 8080:8080 --restart unless-stopped --name subconverter-web subconverter-web:latest
```
### run with prebuilt image
```shell
docker run -d -p 8080:8080 --restart unless-stopped --name subconverter-web yaurora/subconverter-web:latest
```
## docker-compose

## deploy on baremetal

### install dependencies

你需要安装 [Node](https://nodejs.org/zh-cn/) 与 [Yarn](https://legacy.yarnpkg.com/en/docs/install) 来安装依赖与打包发布。你可以通过以下命令查看是否安装成功。
注：以下步骤为 Ubuntu 下相应命令，其他系统请自行修改。为了方便后来人解决问题，有问题请发 issue。
make sure you have node and yarn installed:
```shell
node -v
yarn -v
git clone 
yarn install
```

### build and run

```shell
yarn build
yarn serve
```

浏览器访问 <http://localhost:8080/>


## License

MIT © 2020 CareyWang
