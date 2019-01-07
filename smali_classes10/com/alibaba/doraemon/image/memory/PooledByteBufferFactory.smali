.class public interface abstract Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;
.super Ljava/lang/Object;
.source "PooledByteBufferFactory.java"


# virtual methods
.method public abstract newByteBuffer(I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
.end method

.method public abstract newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
.end method

.method public abstract newByteBuffer([BI)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
.end method

.method public abstract newOutputStream()Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
.end method

.method public abstract newOutputStream(I)Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
.end method
