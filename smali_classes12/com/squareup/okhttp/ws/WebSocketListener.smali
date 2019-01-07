.class public interface abstract Lcom/squareup/okhttp/ws/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/io/IOException;)V
.end method

.method public abstract onMessage(Lokio/BufferedSource;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPong(Lokio/Buffer;)V
.end method
