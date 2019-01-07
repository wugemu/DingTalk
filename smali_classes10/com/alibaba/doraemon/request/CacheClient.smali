.class public interface abstract Lcom/alibaba/doraemon/request/CacheClient;
.super Ljava/lang/Object;
.source "CacheClient.java"


# virtual methods
.method public abstract onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;
.end method

.method public abstract onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z
.end method

.method public abstract onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z
.end method

.method public abstract onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z
.end method
