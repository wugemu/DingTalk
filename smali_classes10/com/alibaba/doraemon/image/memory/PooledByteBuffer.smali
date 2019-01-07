.class public interface abstract Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
.super Ljava/lang/Object;
.source "PooledByteBuffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract read(I)B
.end method

.method public abstract read(I[BII)V
.end method

.method public abstract size()I
.end method
