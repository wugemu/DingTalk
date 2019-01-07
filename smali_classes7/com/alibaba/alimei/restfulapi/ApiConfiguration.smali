.class public interface abstract Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
.super Ljava/lang/Object;
.source "ApiConfiguration.java"


# virtual methods
.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientSecret()Ljava/lang/String;
.end method

.method public abstract getConfigSwitch(Ljava/lang/String;Z)Z
.end method

.method public abstract getDevEnvironment()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDingtalkSessionId()Ljava/lang/String;
.end method

.method public abstract getHostName(I)Ljava/lang/String;
.end method

.method public abstract getHostUrl(I)Ljava/lang/String;
.end method

.method public abstract getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
.end method

.method public abstract getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getNetInfo()Ljava/lang/String;
.end method

.method public abstract getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
.end method

.method public abstract getSecurity_ua(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurity_umid()Ljava/lang/String;
.end method

.method public abstract getUIHandler()Landroid/os/Handler;
.end method

.method public abstract isFeatureOpen(Ljava/lang/String;Z)Z
.end method
