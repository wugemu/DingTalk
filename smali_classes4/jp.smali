.class public Ljp;
.super Ljava/lang/Object;
.source "DftSpdyCb.java"

# interfaces
.implements Lorg/android/spdy/Spdycb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "b"    # Z
    .param p3, "l"    # J
    .param p5, "spdyByteArray"    # Lorg/android/spdy/SpdyByteArray;
    .param p6, "o"    # Ljava/lang/Object;

    .prologue
    .line 26
    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "b"    # Z
    .param p3, "l"    # J
    .param p5, "i"    # I
    .param p6, "o"    # Ljava/lang/Object;

    .prologue
    .line 30
    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "b"    # Z
    .param p3, "l"    # J
    .param p5, "i"    # I
    .param p6, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "l"    # J
    .param p5, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "l"    # J
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 38
    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "l"    # J
    .param p4, "statusCode"    # I
    .param p5, "o"    # Ljava/lang/Object;
    .param p6, "superviseData"    # Lorg/android/spdy/SuperviseData;

    .prologue
    .line 22
    return-void
.end method
