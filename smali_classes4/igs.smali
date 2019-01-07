.class public Ligs;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
.source "Draft_75.java"


# instance fields
.field protected f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/nio/ByteBuffer;

.field private final i:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ligs;->f:Z

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ligs;->g:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ligs;->i:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 1
    .param p1, "handshakedata"    # Ligy;

    .prologue
    .line 52
    const-string/jumbo v0, "Origin"

    invoke-interface {p1, v0}, Ligy;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ligs;->a(Lihd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public a(Ligy;Lihf;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v0, "WebSocket-Origin"

    invoke-interface {p1, v0}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Origin"

    invoke-interface {p2, v1}, Lihf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ligs;->a(Lihd;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public a(Ligz;)Ligz;
    .locals 3
    .param p1, "request"    # Ligz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    const-string/jumbo v0, "Upgrade"

    const-string/jumbo v1, "WebSocket"

    invoke-interface {p1, v0, v1}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Upgrade"

    invoke-interface {p1, v0, v1}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "Origin"

    invoke-interface {p1, v0}, Ligz;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "Origin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "random"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ligs;->i:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-object p1
.end method

.method public a(Ligy;Lihg;)Liha;
    .locals 3
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v1, "Web Socket Protocol Handshake"

    invoke-interface {p2, v1}, Lihg;->a(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "WebSocket"

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Connection"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "WebSocket-Origin"

    const-string/jumbo v2, "Origin"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ws://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Host"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ligy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "location":Ljava/lang/String;
    const-string/jumbo v1, "WebSocket-Location"

    invoke-interface {p2, v1, v0}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object p2
.end method

.method public a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "framedata"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eq v2, v3, :cond_0

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "only text frames supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    .local v1, "pay":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "b":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 70
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 72
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    new-instance v1, Ligx;

    invoke-direct {v1}, Ligx;-><init>()V

    .line 84
    .local v1, "frame":Ligw;
    :try_start_0
    invoke-static {p1}, Liib;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ligw;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ligw;->a(Z)V

    .line 89
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-interface {v1, v2}, Ligw;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 90
    invoke-interface {v1, p2}, Ligw;->b(Z)V

    .line 91
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Ligs;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    if-nez v0, :cond_0

    .line 167
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(I)V

    throw v1

    .line 169
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Ligs;->f:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    .line 176
    return-void
.end method

.method public b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->NONE:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ligs;

    invoke-direct {v0}, Ligs;-><init>()V

    return-object v0
.end method

.method protected final c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 121
    .local v2, "newestByte":B
    if-nez v2, :cond_1

    .line 122
    iget-boolean v3, p0, Ligs;->f:Z

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    const-string/jumbo v4, "unexpected START_OF_FRAME"

    invoke-direct {v3, v4}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_0
    iput-boolean v5, p0, Ligs;->f:Z

    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 126
    iget-boolean v3, p0, Ligs;->f:Z

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    const-string/jumbo v4, "unexpected END_OF_FRAME"

    invoke-direct {v3, v4}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_2
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 132
    new-instance v0, Ligx;

    invoke-direct {v0}, Ligx;-><init>()V

    .line 133
    .local v0, "curframe":Ligx;
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ligx;->a(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {v0, v5}, Ligx;->a(Z)V

    .line 135
    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-virtual {v0, v3}, Ligx;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 136
    iget-object v3, p0, Ligs;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object v1, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 140
    .end local v0    # "curframe":Ligx;
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Ligs;->f:Z

    goto :goto_0

    .line 141
    :cond_4
    iget-boolean v3, p0, Ligs;->f:Z

    if-eqz v3, :cond_8

    .line 142
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_6

    .line 1184
    sget v3, Ligs;->b:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 143
    iput-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    .line 147
    :cond_5
    :goto_1
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 144
    :cond_6
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    .line 145
    iget-object v3, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    .line 1188
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1189
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ligs;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1190
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 145
    iput-object v4, p0, Ligs;->h:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 158
    .end local v2    # "newestByte":B
    :cond_7
    iget-object v1, p0, Ligs;->g:Ljava/util/List;

    .line 159
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Ligs;->g:Ljava/util/List;

    .line 160
    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :cond_8
    return-object v1
.end method
