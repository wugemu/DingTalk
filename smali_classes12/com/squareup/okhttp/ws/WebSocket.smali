.class public interface abstract Lcom/squareup/okhttp/ws/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    }
.end annotation


# virtual methods
.method public abstract close(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lokio/BufferedSink;
.end method

.method public abstract sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lokio/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendPing(Lokio/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
