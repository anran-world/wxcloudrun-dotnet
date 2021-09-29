# 从微软官方镜像中选择基础镜像。如需更换，请前往微软官方镜像库。
FROM mcr.microsoft.com/dotnet/aspnet:5.0

# 指定工作目录
WORKDIR /App

# 将publish文件夹中所有文件拷贝到工作目录中
COPY helloworld/bin/Release/net5.0/publish App/

# 定义环境变量ASPNETCORE_URLS。后续在代码中可引用。
ENV ASPNETCORE_URLS http://*:5000

# 执行启动命令
ENTRYPOINT ["dotnet", "helloworld.dll"]
