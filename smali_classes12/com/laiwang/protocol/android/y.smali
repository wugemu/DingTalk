.class public Lcom/laiwang/protocol/android/y;
.super Ljava/lang/Object;
.source "ClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/y$b;,
        Lcom/laiwang/protocol/android/y$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/laiwang/protocol/android/aj;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Lcom/laiwang/protocol/android/ah;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/laiwang/protocol/android/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const/4 v2, 0x0

    sput-boolean v2, Lcom/laiwang/protocol/android/y;->a:Z

    .line 31
    :try_start_0
    const-string/jumbo v2, "kaliumjni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_0

    .line 1013
    invoke-static {}, Lorg/abstractj/kalium/SodiumJNI;->sodium_init()I

    move-result v1

    .line 34
    .local v1, "ret":I
    if-nez v1, :cond_0

    .line 35
    const/4 v2, 0x1

    sput-boolean v2, Lcom/laiwang/protocol/android/y;->a:Z

    .line 36
    const-string/jumbo v2, "[lws] load kalium succ"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[lws] load kalium err"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "serPubKey"    # [B
    .param p2, "sni"    # Ljava/lang/String;
    .param p3, "ua"    # Ljava/lang/String;
    .param p4, "via"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v10, Lcom/laiwang/protocol/android/z;

    invoke-direct {v10}, Lcom/laiwang/protocol/android/z;-><init>()V

    .line 59
    .local v10, "keyExchange":Lcom/laiwang/protocol/android/z;
    new-instance v9, Lcom/laiwang/protocol/android/x;

    invoke-virtual {v10, p1}, Lcom/laiwang/protocol/android/z;->a([B)[B

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/laiwang/protocol/android/x;-><init>([B)V

    .line 60
    .local v9, "chaCha20Crypto":Lcom/laiwang/protocol/android/x;
    new-instance v0, Lcom/laiwang/protocol/android/aj;

    invoke-direct {v0, v9}, Lcom/laiwang/protocol/android/aj;-><init>(Lcom/laiwang/protocol/android/an;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    .line 61
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v10}, Lcom/laiwang/protocol/android/z;->a()[B

    move-result-object v2

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v9}, Lcom/laiwang/protocol/android/x;->a()[B

    move-result-object v6

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/x;->b()[B

    move-result-object v7

    move-object v3, p2

    move-object v5, p3

    move-object v8, p4

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/laiwang/protocol/android/aj;->a(B[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Lcom/laiwang/protocol/android/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->d:Lcom/laiwang/protocol/android/ah;

    .line 63
    return-void
.end method

.method public constructor <init>([B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "sessionId"    # [B
    .param p2, "symmetricKey"    # [B
    .param p3, "ua"    # Ljava/lang/String;
    .param p4, "via"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v9, Lcom/laiwang/protocol/android/x;

    invoke-direct {v9, p2}, Lcom/laiwang/protocol/android/x;-><init>([B)V

    .line 73
    .local v9, "chaCha20Crypto":Lcom/laiwang/protocol/android/x;
    new-instance v0, Lcom/laiwang/protocol/android/aj;

    invoke-direct {v0, v9}, Lcom/laiwang/protocol/android/aj;-><init>(Lcom/laiwang/protocol/android/an;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    .line 75
    invoke-virtual {v9}, Lcom/laiwang/protocol/android/x;->a()[B

    move-result-object v6

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/x;->b()[B

    move-result-object v7

    move-object v3, v2

    move-object v4, p1

    move-object v5, p3

    move-object v8, p4

    .line 74
    invoke-virtual/range {v0 .. v8}, Lcom/laiwang/protocol/android/aj;->a(B[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;)Lcom/laiwang/protocol/android/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/y;->d:Lcom/laiwang/protocol/android/ah;

    .line 76
    return-void
.end method

.method private a(Lcom/laiwang/protocol/android/ag;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "data"    # Lcom/laiwang/protocol/android/ag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/android/y$b;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/ag;->b()Lcom/laiwang/protocol/android/ag$b;

    move-result-object v0

    .line 219
    .local v0, "chunk":Lcom/laiwang/protocol/android/ag$b;
    const/4 v3, 0x0

    .line 220
    .local v3, "storedChunk":Lcom/laiwang/protocol/android/ag$b;
    if-eqz v0, :cond_5

    .line 221
    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laiwang/protocol/android/ag$b;

    .line 222
    .local v4, "tmp":Lcom/laiwang/protocol/android/ag$b;
    iget v6, v0, Lcom/laiwang/protocol/android/ag$b;->a:I

    iget v7, v4, Lcom/laiwang/protocol/android/ag$b;->a:I

    if-ne v6, v7, :cond_0

    .line 223
    move-object v3, v4

    .line 227
    .end local v4    # "tmp":Lcom/laiwang/protocol/android/ag$b;
    :cond_1
    if-nez v3, :cond_2

    .line 228
    move-object v3, v0

    .line 229
    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/ag;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/laiwang/protocol/android/ag$b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    invoke-virtual {v3}, Lcom/laiwang/protocol/android/ag$b;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 240
    .local v1, "dt":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    .line 241
    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 243
    :cond_3
    if-eqz v1, :cond_4

    .line 244
    const-string/jumbo v5, "[pack] chunk id %d size %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v3, Lcom/laiwang/protocol/android/ag$b;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-wide v8, v3, Lcom/laiwang/protocol/android/ag$b;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->e:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 249
    .end local v1    # "dt":Ljava/nio/ByteBuffer;
    :cond_4
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[pack] chunk push err, id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/laiwang/protocol/android/ag$b;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/laiwang/protocol/android/ag$b;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 236
    new-instance v5, Lcom/laiwang/protocol/android/y$b;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/laiwang/protocol/android/y$b;-><init>(Lcom/laiwang/protocol/android/y;Ljava/lang/String;)V

    throw v5

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/ag;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Lcom/laiwang/protocol/android/y$a;Lcom/laiwang/protocol/android/ai;)V
    .locals 8
    .param p1, "listener"    # Lcom/laiwang/protocol/android/y$a;
    .param p2, "helloResponse"    # Lcom/laiwang/protocol/android/ai;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x19b

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/ai;->d()I

    move-result v6

    .line 191
    .local v6, "responseCode":I
    const/16 v0, 0x193

    if-ne v6, v0, :cond_1

    .line 192
    invoke-interface {p1}, Lcom/laiwang/protocol/android/y$a;->d()V

    .line 214
    .end local v6    # "responseCode":I
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v6    # "responseCode":I
    :cond_1
    const/16 v0, 0x19a

    if-ne v6, v0, :cond_2

    .line 194
    invoke-interface {p1}, Lcom/laiwang/protocol/android/y$a;->c()V

    goto :goto_0

    .line 195
    :cond_2
    const/16 v0, 0xc8

    if-eq v6, v0, :cond_3

    if-eq v6, v7, :cond_3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handShake failed, return code: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/laiwang/protocol/android/y$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/ai;->b()[B

    move-result-object v1

    .line 199
    .local v1, "sessionId":[B
    const-wide/16 v2, 0x0

    .line 200
    .local v2, "expiredTime":J
    const/4 v4, 0x0

    .line 201
    .local v4, "symmetricKey":[B
    if-eqz v1, :cond_4

    .line 202
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/ai;->e()J

    move-result-wide v2

    .line 203
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/ai;->a()[B

    move-result-object v4

    .line 205
    :cond_4
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/ai;->c()[B

    move-result-object v5

    .line 206
    .local v5, "sessionCookie":[B
    if-ne v6, v7, :cond_5

    move-object v0, p1

    .line 207
    invoke-interface/range {v0 .. v5}, Lcom/laiwang/protocol/android/y$a;->b([BJ[B[B)V

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 209
    invoke-interface/range {v0 .. v5}, Lcom/laiwang/protocol/android/y$a;->a([BJ[B[B)V

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 304
    sget-boolean v0, Lcom/laiwang/protocol/android/y;->a:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/android/y$a;)V
    .locals 6
    .param p1, "content"    # Ljava/nio/ByteBuffer;
    .param p2, "listener"    # Lcom/laiwang/protocol/android/y$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v4, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v4, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 151
    .local v3, "packet":Lcom/laiwang/protocol/android/ak;
    :try_start_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    iget-object v5, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/aj;->a(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/ak;
    :try_end_0
    .catch Lcom/laiwang/protocol/android/an$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 157
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 159
    instance-of v4, v3, Lcom/laiwang/protocol/android/ag;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 160
    check-cast v0, Lcom/laiwang/protocol/android/ag;

    .line 161
    .local v0, "dataPacket":Lcom/laiwang/protocol/android/ag;
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ag;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ag;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_0

    .line 163
    :try_start_1
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/y;->a(Lcom/laiwang/protocol/android/ag;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 164
    .local v1, "dt":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 165
    invoke-interface {p2, v1}, Lcom/laiwang/protocol/android/y$a;->a(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/android/y$b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "dt":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Lcom/laiwang/protocol/android/y$b;
    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/y$b;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/laiwang/protocol/android/y$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "dataPacket":Lcom/laiwang/protocol/android/ag;
    .end local v2    # "e":Lcom/laiwang/protocol/android/y$b;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Lcom/laiwang/protocol/android/an$a;
    if-eqz p2, :cond_1

    .line 154
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/an$a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/laiwang/protocol/android/y$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v2    # "e":Lcom/laiwang/protocol/android/an$a;
    :cond_2
    instance-of v4, v3, Lcom/laiwang/protocol/android/al;

    if-eqz v4, :cond_3

    .line 172
    if-eqz p2, :cond_0

    .line 173
    invoke-interface {p2}, Lcom/laiwang/protocol/android/y$a;->a()V

    goto :goto_0

    .line 174
    :cond_3
    instance-of v4, v3, Lcom/laiwang/protocol/android/am;

    if-eqz v4, :cond_4

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-interface {p2}, Lcom/laiwang/protocol/android/y$a;->b()V

    goto :goto_0

    .line 177
    :cond_4
    instance-of v4, v3, Lcom/laiwang/protocol/android/ai;

    if-eqz v4, :cond_0

    .line 178
    check-cast v3, Lcom/laiwang/protocol/android/ai;

    .end local v3    # "packet":Lcom/laiwang/protocol/android/ak;
    invoke-direct {p0, p2, v3}, Lcom/laiwang/protocol/android/y;->a(Lcom/laiwang/protocol/android/y$a;Lcom/laiwang/protocol/android/ai;)V

    goto :goto_0

    .line 183
    .restart local v3    # "packet":Lcom/laiwang/protocol/android/ak;
    :cond_5
    iget-object v4, p0, Lcom/laiwang/protocol/android/y;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 184
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->d:Lcom/laiwang/protocol/android/ah;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ah;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0xfc8

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 117
    iget-object v6, p0, Lcom/laiwang/protocol/android/y;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    const v7, 0xffff

    and-int v1, v6, v7

    .line 118
    .local v1, "chkId":I
    new-instance v2, Lcom/laiwang/protocol/android/ag$b;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v2, v1, v6, v7}, Lcom/laiwang/protocol/android/ag$b;-><init>(IJ)V

    .line 119
    .local v2, "chunk":Lcom/laiwang/protocol/android/ag$b;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    div-int/lit16 v6, v6, 0xfc8

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/nio/ByteBuffer;

    .line 120
    .local v4, "datas":[Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/aj;->c()Lcom/laiwang/protocol/android/ag;

    move-result-object v3

    .line 122
    .local v3, "dataPacket":Lcom/laiwang/protocol/android/ag;
    invoke-virtual {v3, v2}, Lcom/laiwang/protocol/android/ag;->a(Lcom/laiwang/protocol/android/ag$b;)V

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "body":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit16 v6, v6, 0xfc8

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit16 v6, v6, 0xfc8

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    :cond_0
    invoke-virtual {v3, v0}, Lcom/laiwang/protocol/android/ag;->a(Ljava/nio/ByteBuffer;)V

    .line 130
    iget-object v6, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v6, v3}, Lcom/laiwang/protocol/android/aj;->a(Lcom/laiwang/protocol/android/ak;)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "body":Ljava/nio/ByteBuffer;
    .end local v1    # "chkId":I
    .end local v2    # "chunk":Lcom/laiwang/protocol/android/ag$b;
    .end local v3    # "dataPacket":Lcom/laiwang/protocol/android/ag;
    .end local v4    # "datas":[Ljava/nio/ByteBuffer;
    .end local v5    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/aj;->c()Lcom/laiwang/protocol/android/ag;

    move-result-object v3

    .line 135
    .restart local v3    # "dataPacket":Lcom/laiwang/protocol/android/ag;
    invoke-virtual {v3, p1}, Lcom/laiwang/protocol/android/ag;->a(Ljava/nio/ByteBuffer;)V

    .line 136
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v7, v3}, Lcom/laiwang/protocol/android/aj;->a(Lcom/laiwang/protocol/android/ak;)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v4, v6

    .end local v3    # "dataPacket":Lcom/laiwang/protocol/android/ag;
    :cond_2
    return-object v4
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->d:Lcom/laiwang/protocol/android/ah;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    iget-object v1, p0, Lcom/laiwang/protocol/android/y;->d:Lcom/laiwang/protocol/android/ah;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/aj;->a(Lcom/laiwang/protocol/android/ak;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    iget-object v1, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/aj;->a()Lcom/laiwang/protocol/android/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/aj;->a(Lcom/laiwang/protocol/android/ak;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    iget-object v1, p0, Lcom/laiwang/protocol/android/y;->b:Lcom/laiwang/protocol/android/aj;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/aj;->b()Lcom/laiwang/protocol/android/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/aj;->a(Lcom/laiwang/protocol/android/ak;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
