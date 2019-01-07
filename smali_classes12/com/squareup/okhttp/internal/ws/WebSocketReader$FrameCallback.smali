.class public interface abstract Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onMessage(Lokio/BufferedSource;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPing(Lokio/Buffer;)V
.end method

.method public abstract onPong(Lokio/Buffer;)V
.end method
