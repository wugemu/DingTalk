.class public interface abstract Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/SessionStatus;


# virtual methods
.method public abstract doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;JJ)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V
.end method

.method public abstract setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V
.end method
