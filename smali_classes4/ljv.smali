.class public final Lljv;
.super Lljx;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljx",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field static final a:I

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:I

.field private static final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    const-string/jumbo v4, "jctools.spsc.max.lookahead.step"

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lljv;->a:I

    .line 59
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lljv;->l:Ljava/lang/Object;

    .line 61
    sget-object v4, Llkb;->a:Lsun/misc/Unsafe;

    const-class v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 62
    .local v3, "scale":I
    const/4 v4, 0x4

    if-ne v4, v3, :cond_0

    .line 63
    const/4 v4, 0x2

    sput v4, Lljv;->k:I

    .line 70
    :goto_0
    sget-object v4, Llkb;->a:Lsun/misc/Unsafe;

    const-class v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lljv;->j:J

    .line 72
    :try_start_0
    const-class v4, Llka;

    const-string/jumbo v5, "producerIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, "iField":Ljava/lang/reflect/Field;
    sget-object v4, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lljv;->h:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    const-class v4, Lljx;

    const-string/jumbo v5, "consumerIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 81
    sget-object v4, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lljv;->i:J
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    return-void

    .line 64
    .end local v2    # "iField":Ljava/lang/reflect/Field;
    :cond_0
    const/16 v4, 0x8

    if-ne v4, v3, :cond_1

    .line 65
    const/4 v4, 0x3

    sput v4, Lljv;->k:I

    goto :goto_0

    .line 67
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unknown pointer size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 76
    .local v1, "ex":Ljava/lang/InternalError;
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .end local v1    # "ex":Ljava/lang/InternalError;
    .restart local v2    # "iField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 84
    .restart local v1    # "ex":Ljava/lang/InternalError;
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v1
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .prologue
    .line 90
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    invoke-direct {p0}, Lljx;-><init>()V

    .line 91
    invoke-static {p1}, Llje;->a(I)I

    move-result v1

    .line 92
    .local v1, "p2capacity":I
    add-int/lit8 v4, v1, -0x1

    int-to-long v2, v4

    .line 93
    .local v2, "mask":J
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 94
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lljv;->g:[Ljava/lang/Object;

    .line 95
    iput-wide v2, p0, Lljv;->f:J

    .line 1255
    div-int/lit8 v4, v1, 0x4

    sget v5, Lljv;->a:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lljv;->d:I

    .line 97
    iput-object v0, p0, Lljv;->c:[Ljava/lang/Object;

    .line 98
    iput-wide v2, p0, Lljv;->b:J

    .line 99
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lljv;->e:J

    .line 100
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lljv;->a(J)V

    .line 101
    return-void
.end method

.method private a()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljv;->i:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 267
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljv;->h:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 268
    return-void
.end method

.method private static a([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "buffer"    # [Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "e"    # Ljava/lang/Object;

    .prologue
    .line 281
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 282
    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z
    .locals 3
    .param p3, "index"    # J
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p5, p6, p2}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lljv;->a(J)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method private static a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "curr":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lljv;->c(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private b(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 271
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljv;->i:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 272
    return-void
.end method

.method private static c(J)J
    .locals 4
    .param p0, "index"    # J

    .prologue
    .line 278
    sget-wide v0, Lljv;->j:J

    sget v2, Lljv;->k:I

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 116
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Null is not a valid element"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lljv;->g:[Ljava/lang/Object;

    .line 120
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lljv;->producerIndex:J

    .line 121
    .local v6, "index":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lljv;->f:J

    .line 1275
    .local v12, "mask":J
    and-long v14, v6, v12

    invoke-static {v14, v15}, Lljv;->c(J)J

    move-result-wide v8

    .line 123
    .local v8, "offset":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lljv;->e:J

    cmp-long v3, v6, v14

    if-gez v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 124
    invoke-direct/range {v3 .. v9}, Lljv;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    .line 136
    :goto_0
    return v3

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lljv;->d:I

    .line 128
    .local v2, "lookAheadStep":I
    int-to-long v14, v2

    add-long/2addr v14, v6

    .line 2275
    and-long/2addr v14, v12

    invoke-static {v14, v15}, Lljv;->c(J)J

    move-result-wide v10

    .line 129
    .local v10, "lookAheadElementOffset":J
    invoke-static {v4, v10, v11}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 130
    int-to-long v14, v2

    add-long/2addr v14, v6

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lljv;->e:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 131
    invoke-direct/range {v3 .. v9}, Lljv;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_0

    .line 132
    :cond_2
    const-wide/16 v14, 0x1

    add-long/2addr v14, v6

    .line 3275
    and-long/2addr v14, v12

    invoke-static {v14, v15}, Lljv;->c(J)J

    move-result-wide v14

    .line 132
    invoke-static {v4, v14, v15}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 133
    invoke-direct/range {v3 .. v9}, Lljv;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_0

    .line 4150
    :cond_3
    array-length v3, v4

    .line 4151
    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 4152
    move-object/from16 v0, p0

    iput-object v3, v0, Lljv;->g:[Ljava/lang/Object;

    .line 4153
    add-long v14, v6, v12

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lljv;->e:J

    .line 4154
    move-object/from16 v0, p1

    invoke-static {v3, v8, v9, v0}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4162
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    int-to-long v14, v5

    invoke-static {v14, v15}, Lljv;->c(J)J

    move-result-wide v14

    invoke-static {v4, v14, v15, v3}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4156
    sget-object v3, Lljv;->l:Ljava/lang/Object;

    invoke-static {v4, v8, v9, v3}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4158
    const-wide/16 v14, 0x1

    add-long/2addr v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lljv;->a(J)V

    .line 136
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 216
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    iget-object v0, p0, Lljv;->c:[Ljava/lang/Object;

    .line 217
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lljv;->consumerIndex:J

    .line 218
    .local v2, "index":J
    iget-wide v4, p0, Lljv;->b:J

    .line 6275
    .local v4, "mask":J
    and-long v8, v2, v4

    invoke-static {v8, v9}, Lljv;->c(J)J

    move-result-wide v6

    .line 220
    .local v6, "offset":J
    invoke-static {v0, v6, v7}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "e":Ljava/lang/Object;
    sget-object v8, Lljv;->l:Ljava/lang/Object;

    if-ne v1, v8, :cond_0

    .line 222
    invoke-static {v0}, Lljv;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 7230
    iput-object v8, p0, Lljv;->c:[Ljava/lang/Object;

    .line 7275
    and-long v10, v2, v4

    invoke-static {v10, v11}, Lljv;->c(J)J

    move-result-wide v10

    .line 7232
    invoke-static {v8, v10, v11}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .end local v1    # "e":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    iget-object v0, p0, Lljv;->c:[Ljava/lang/Object;

    .line 178
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lljv;->consumerIndex:J

    .line 179
    .local v2, "index":J
    iget-wide v6, p0, Lljv;->b:J

    .line 4275
    .local v6, "mask":J
    and-long v10, v2, v6

    invoke-static {v10, v11}, Lljv;->c(J)J

    move-result-wide v8

    .line 181
    .local v8, "offset":J
    invoke-static {v0, v8, v9}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "e":Ljava/lang/Object;
    sget-object v5, Lljv;->l:Ljava/lang/Object;

    if-ne v1, v5, :cond_0

    const/4 v4, 0x1

    .line 183
    .local v4, "isNextBuffer":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 184
    const/4 v5, 0x0

    invoke-static {v0, v8, v9, v5}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 185
    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    invoke-direct {p0, v10, v11}, Lljv;->b(J)V

    .line 5200
    .end local v1    # "e":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 182
    .end local v4    # "isNextBuffer":Z
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 187
    .restart local v4    # "isNextBuffer":Z
    :cond_1
    if-eqz v4, :cond_3

    .line 188
    invoke-static {v0}, Lljv;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 5196
    iput-object v5, p0, Lljv;->c:[Ljava/lang/Object;

    .line 5275
    and-long v10, v2, v6

    invoke-static {v10, v11}, Lljv;->c(J)J

    move-result-wide v10

    .line 5198
    invoke-static {v5, v10, v11}, Lljv;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5199
    .end local v1    # "e":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 5200
    const/4 v1, 0x0

    goto :goto_1

    .line 5202
    :cond_2
    const/4 v12, 0x0

    invoke-static {v5, v10, v11, v12}, Lljv;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5203
    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    invoke-direct {p0, v10, v11}, Lljv;->b(J)V

    goto :goto_1

    .line 191
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final size()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 243
    .local p0, "this":Lljv;, "Lljv<TE;>;"
    invoke-direct {p0}, Lljv;->a()J

    move-result-wide v0

    .line 245
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 8259
    .local v2, "before":J
    sget-object v6, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v8, Lljv;->h:J

    invoke-virtual {v6, p0, v8, v9}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 247
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lljv;->a()J

    move-result-wide v0

    .line 248
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 249
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
