.class public Lcom/squareup/okhttp/ws/WebSocketCall;
.super Ljava/lang/Object;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;
    }
.end annotation


# instance fields
.field private final call:Lcom/squareup/okhttp/Call;

.field private final key:Ljava/lang/String;

.field private final random:Ljava/util/Random;

.field private final request:Lcom/squareup/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 59
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V
    .locals 6
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v3, "GET"

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Request must be GET: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "ws://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "httpUrl":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    .line 81
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 82
    .local v1, "nonce":[B
    invoke-virtual {p3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 83
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p1

    .line 89
    sget-object v3, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 91
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string/jumbo v4, "Upgrade"

    const-string/jumbo v5, "websocket"

    .line 93
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Upgrade"

    .line 94
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string/jumbo v4, "Sec-WebSocket-Key"

    iget-object v5, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string/jumbo v4, "Sec-WebSocket-Version"

    const-string/jumbo v5, "13"

    .line 96
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    .line 100
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    .line 101
    return-void

    .line 70
    .end local v0    # "httpUrl":Ljava/lang/String;
    .end local v1    # "nonce":[B
    :cond_1
    const-string/jumbo v3, "wss://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "httpUrl":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "httpUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    :cond_3
    move-object v0, v2

    .restart local v0    # "httpUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 75
    .end local v0    # "httpUrl":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Request url must use \'ws\', \'wss\', \'http\', or \'https\' scheme: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/ws/WebSocketCall;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .param p2, "x2"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketCall;->createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    return-void
.end method

.method public static create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;
    .locals 1
    .param p0, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 50
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method

.method private createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 17
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .param p2, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    const/16 v6, 0x65

    if-eq v2, v6, :cond_0

    .line 142
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v2, v6}, Lcom/squareup/okhttp/internal/Internal;->callEngineReleaseConnection(Lcom/squareup/okhttp/Call;)V

    .line 143
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Expected HTTP 101 response but was \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    const-string/jumbo v2, "Connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "headerConnection":Ljava/lang/String;
    const-string/jumbo v2, "Upgrade"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    const-string/jumbo v2, "Upgrade"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "headerUpgrade":Ljava/lang/String;
    const-string/jumbo v2, "websocket"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_2
    const-string/jumbo v2, "Sec-WebSocket-Accept"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "headerAccept":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->shaBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 163
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' but was \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_3
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v2, v6}, Lcom/squareup/okhttp/internal/Internal;->callEngineGetConnection(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Connection;

    move-result-object v3

    .line 173
    .local v3, "connection":Lcom/squareup/okhttp/Connection;
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->clearOwner(Lcom/squareup/okhttp/Connection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unable to take ownership of connection."

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_4
    invoke-virtual {v3}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v12

    .line 178
    .local v12, "socket":Ljava/net/Socket;
    invoke-static {v12}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    .line 179
    .local v4, "source":Lokio/BufferedSource;
    invoke-static {v12}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    .line 181
    .local v5, "sink":Lokio/BufferedSink;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    .line 182
    invoke-static/range {v2 .. v7}, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->create(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;Lokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Lcom/squareup/okhttp/ws/WebSocketListener;)Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    move-result-object v13

    .line 185
    .local v13, "webSocket":Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    new-instance v2, Ljava/lang/Thread;

    new-instance v6, Lcom/squareup/okhttp/ws/WebSocketCall$2;

    const-string/jumbo v7, "OkHttp WebSocket reader %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v14, v13}, Lcom/squareup/okhttp/ws/WebSocketCall$2;-><init>(Lcom/squareup/okhttp/ws/WebSocketCall;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/ws/RealWebSocket;)V

    invoke-direct {v2, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 193
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v2, v3, v13}, Lcom/squareup/okhttp/internal/Internal;->connectionSetOwner(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v13, v2, v1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    .line 196
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 136
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall$1;-><init>(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    .line 130
    .local v0, "responseCallback":Lcom/squareup/okhttp/Callback;
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/Internal;->callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    .line 131
    return-void
.end method
