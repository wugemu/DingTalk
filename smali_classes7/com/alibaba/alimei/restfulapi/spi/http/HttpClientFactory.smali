.class public interface abstract Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# virtual methods
.method public abstract getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
.end method

.method public abstract isAutoShutDownAfterConnectionExecute()Z
.end method

.method public abstract newHttpClient(IIII)Lorg/apache/http/client/HttpClient;
.end method

.method public abstract newHttpClientForAttachment(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
.end method

.method public abstract newHttpClientForGet(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
.end method

.method public abstract newHttpClientForPost(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
.end method
