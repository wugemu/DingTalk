.class public final Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private closed:Z

.field private frameBytesRead:J

.field private final frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final framedMessageSource:Lokio/Source;

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private isMasked:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private messageClosed:Z

.field private opcode:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "frameCallback"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lokio/Source;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    .line 77
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 80
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    .line 83
    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 84
    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    return v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    return-object v0
.end method

.method private readControlFrame()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "buffer":Lokio/Buffer;
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 161
    new-instance v6, Lokio/Buffer;

    .end local v6    # "buffer":Lokio/Buffer;
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 163
    .restart local v6    # "buffer":Lokio/Buffer;
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v2, v3}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 177
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown control opcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .local v8, "read":I
    .local v10, "toRead":I
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v8

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v11, v8}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 172
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 166
    .end local v8    # "read":I
    .end local v10    # "toRead":I
    :cond_2
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 167
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v10, v0

    .line 168
    .restart local v10    # "toRead":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v0, v1, v11, v10}, Lokio/BufferedSource;->read([BII)I

    move-result v8

    .line 169
    .restart local v8    # "read":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 179
    .end local v8    # "read":I
    .end local v10    # "toRead":I
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPing(Lokio/Buffer;)V

    .line 193
    :goto_0
    return-void

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPong(Lokio/Buffer;)V

    goto :goto_0

    .line 185
    :pswitch_2
    const/4 v7, 0x0

    .line 186
    .local v7, "code":I
    const-string/jumbo v9, ""

    .line 187
    .local v9, "reason":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 188
    invoke-virtual {v6}, Lokio/Buffer;->readShort()S

    move-result v7

    .line 189
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v9

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v7, v9}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onClose(ILjava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 110
    .local v0, "b0":I
    and-int/lit8 v5, v0, 0xf

    iput v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    .line 111
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 112
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 115
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v5, :cond_3

    .line 116
    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v6, "Control frames must be final."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v5, v7

    .line 111
    goto :goto_0

    :cond_2
    move v5, v7

    .line 112
    goto :goto_1

    .line 119
    :cond_3
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_5

    move v2, v6

    .line 120
    .local v2, "reservedFlag1":Z
    :goto_2
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_6

    move v3, v6

    .line 121
    .local v3, "reservedFlag2":Z
    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_7

    move v4, v6

    .line 122
    .local v4, "reservedFlag3":Z
    :goto_4
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_8

    .line 124
    :cond_4
    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v6, "Reserved flags are unsupported."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "reservedFlag1":Z
    .end local v3    # "reservedFlag2":Z
    .end local v4    # "reservedFlag3":Z
    :cond_5
    move v2, v7

    .line 119
    goto :goto_2

    .restart local v2    # "reservedFlag1":Z
    :cond_6
    move v3, v7

    .line 120
    goto :goto_3

    .restart local v3    # "reservedFlag2":Z
    :cond_7
    move v4, v7

    .line 121
    goto :goto_4

    .line 127
    .restart local v4    # "reservedFlag3":Z
    :cond_8
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 129
    .local v1, "b1":I
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_9

    :goto_5
    iput-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    .line 130
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-ne v5, v6, :cond_a

    .line 132
    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v6, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    move v6, v7

    .line 129
    goto :goto_5

    .line 136
    :cond_a
    and-int/lit8 v5, v1, 0x7f

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 137
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7e

    cmp-long v5, v6, v8

    if-nez v5, :cond_c

    .line 138
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readShort()S

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 146
    :cond_b
    iput-wide v10, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 148
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_d

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7d

    cmp-long v5, v6, v8

    if-lez v5, :cond_d

    .line 149
    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v6, "Control frame must be less than 125B."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_c
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7f

    cmp-long v5, v6, v8

    if-nez v5, :cond_b

    .line 140
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 141
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_b

    .line 142
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Frame length 0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 143
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_d
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v5, :cond_e

    .line 154
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v5, v6}, Lokio/BufferedSource;->readFully([B)V

    .line 156
    :cond_e
    return-void
.end method

.method private readMessageFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :pswitch_0
    sget-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 212
    .local v0, "type":Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    .line 213
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lokio/Source;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onMessage(Lokio/BufferedSource;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V

    .line 214
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Listener failed to call close on message payload."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v0    # "type":Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    :pswitch_1
    sget-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->BINARY:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 207
    .restart local v0    # "type":Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    goto :goto_0

    .line 217
    :cond_0
    return-void

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 223
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public final processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 98
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method
