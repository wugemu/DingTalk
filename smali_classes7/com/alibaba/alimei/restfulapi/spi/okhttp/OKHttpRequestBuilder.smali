.class public interface abstract Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;
.super Ljava/lang/Object;
.source "OKHttpRequestBuilder.java"


# virtual methods
.method public abstract buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;
.end method

.method public abstract buildHttpPostWithFile(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            ")",
            "Lknc;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract buildHttpPostWithFile2(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            ")",
            "Lknc;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract buildWebmailHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
