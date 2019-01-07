.class public interface abstract Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
.super Ljava/lang/Object;
.source "INativeMemoryChunk.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract adjustByteCount(II)I
.end method

.method public abstract checkBounds(IIII)V
.end method

.method public abstract close()V
.end method

.method public abstract copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V
.end method

.method public abstract getSize()I
.end method

.method public abstract isAllocatedNative()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract read(I)B
.end method

.method public abstract read(I[BII)I
.end method

.method public abstract reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
.end method

.method public abstract write(I[BII)I
.end method
