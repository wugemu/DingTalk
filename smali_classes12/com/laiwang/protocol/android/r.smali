.class public interface abstract Lcom/laiwang/protocol/android/r;
.super Ljava/lang/Object;
.source "NioConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/k$c;
.implements Lcom/laiwang/protocol/android/k;


# virtual methods
.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Ljava/nio/ByteBuffer;
.end method

.method public abstract f()Ljava/nio/ByteBuffer;
.end method

.method public abstract g()Ljava/nio/channels/SocketChannel;
.end method
