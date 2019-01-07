.class final Lcom/taobao/weex/wson/Wson$Parser;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# instance fields
.field private buffer:[B

.field private charsBuffer:[C

.field private position:I


# direct methods
.method private constructor <init>([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 133
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 134
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    goto :goto_0
.end method

.method synthetic constructor <init>([BLcom/taobao/weex/wson/Wson$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/taobao/weex/wson/Wson$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/wson/Wson$Parser;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/wson/Wson$Parser;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->close()V

    return-void
.end method

.method private final close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 149
    iput-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_0
    iput-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 154
    return-void
.end method

.method private final parse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v2

    .line 204
    .local v2, "length":I
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 205
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-object v0
.end method

.method private final readDouble()Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 332
    .local v2, "number":D
    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    .line 333
    double-to-long v4, v2

    .line 334
    .local v4, "numberLong":J
    long-to-double v0, v4

    .line 335
    .local v0, "doubleLong":D
    sub-double v6, v2, v0

    const-wide/high16 v8, 0x10000000000000L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 336
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 339
    .end local v0    # "doubleLong":D
    .end local v4    # "numberLong":J
    :goto_0
    return-object v6

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0
.end method

.method private readFloat()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int v0, v1, v2

    .line 347
    .local v0, "number":I
    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 348
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method private final readLong()J
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0xff

    .line 318
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v8

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    add-long v0, v2, v4

    .line 326
    .local v0, "number":J
    iget v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 327
    return-wide v0
.end method

.method private final readMap()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v3

    .line 193
    .local v3, "size":I
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 194
    .local v2, "object":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMapKeyUTF16()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 197
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private final readMapKeyUTF16()Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v7

    .line 220
    .local v7, "length":I
    div-int/lit8 v7, v7, 0x2

    .line 221
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v8, v8

    if-ge v8, v7, :cond_0

    .line 222
    new-array v8, v7, [C

    iput-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 224
    :cond_0
    const/16 v4, 0x1505

    .line 225
    .local v4, "hash":I
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 227
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v9, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v10, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    int-to-char v2, v8

    .line 229
    .local v2, "ch":C
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v2, v8, v5

    .line 230
    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v4

    add-int v4, v8, v2

    .line 231
    iget v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "ch":C
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 235
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v9, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v10, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    int-to-char v2, v8

    .line 237
    .restart local v2    # "ch":C
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v2, v8, v5

    .line 238
    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v4

    add-int v4, v8, v2

    .line 239
    iget v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "ch":C
    :cond_2
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int v3, v8, v4

    .line 243
    .local v3, "globalIndex":I
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v8

    aget-object v0, v8, v3

    .line 244
    .local v0, "cache":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 246
    const/4 v6, 0x1

    .line 247
    .local v6, "isStringEqual":Z
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_3

    .line 248
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aget-char v8, v8, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_4

    .line 249
    const/4 v6, 0x0

    .line 253
    :cond_3
    if-eqz v6, :cond_5

    move-object v1, v0

    .line 261
    .end local v0    # "cache":Ljava/lang/String;
    .end local v6    # "isStringEqual":Z
    .local v1, "cache":Ljava/lang/Object;
    :goto_3
    return-object v1

    .line 247
    .end local v1    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Ljava/lang/String;
    .restart local v6    # "isStringEqual":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 257
    .end local v6    # "isStringEqual":Z
    :cond_5
    new-instance v0, Ljava/lang/String;

    .end local v0    # "cache":Ljava/lang/String;
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9, v7}, Ljava/lang/String;-><init>([CII)V

    .line 258
    .restart local v0    # "cache":Ljava/lang/String;
    const/16 v8, 0x40

    if-ge v7, v8, :cond_6

    .line 259
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v8

    aput-object v0, v8, v3

    :cond_6
    move-object v1, v0

    .line 261
    .restart local v1    # "cache":Ljava/lang/Object;
    goto :goto_3
.end method

.method private final readObject()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readType()B

    move-result v0

    .line 158
    .local v0, "type":B
    sparse-switch v0, :sswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wson unhandled type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :sswitch_0
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 162
    :sswitch_1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readVarInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readFloat()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 166
    :sswitch_3
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMap()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 168
    :sswitch_4
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readArray()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 170
    :sswitch_5
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readDouble()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 172
    :sswitch_6
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 174
    :sswitch_7
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :sswitch_8
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :sswitch_9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 180
    :sswitch_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 182
    :sswitch_b
    const/4 v1, 0x0

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x46 -> :sswitch_2
        0x5b -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_7
        0x69 -> :sswitch_1
        0x6c -> :sswitch_6
        0x73 -> :sswitch_0
        0x74 -> :sswitch_a
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private final readType()B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v0, v1, v2

    .line 213
    .local v0, "type":B
    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 214
    return v0
.end method

.method private final readUInt()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "value":I
    const/4 v1, 0x0

    .line 305
    .local v1, "i":I
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v0, v3, v4

    .local v0, "b":I
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 306
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 307
    add-int/lit8 v1, v1, 0x7

    .line 308
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 309
    const/16 v3, 0x23

    if-le v1, v3, :cond_0

    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Variable length quantity is too long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_1
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 314
    shl-int v3, v0, v1

    or-int/2addr v3, v2

    return v3
.end method

.method private final readUTF16String()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 266
    .local v2, "length":I
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 267
    new-array v3, v2, [C

    iput-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 269
    :cond_0
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 271
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    int-to-char v0, v3

    .line 273
    .local v0, "ch":C
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v0, v3, v1

    .line 274
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 278
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    int-to-char v0, v3

    .line 280
    .restart local v0    # "ch":C
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v0, v3, v1

    .line 281
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "ch":C
    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method private final readVarInt()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v1

    .line 294
    .local v1, "raw":I
    shl-int/lit8 v2, v1, 0x1f

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v1

    shr-int/lit8 v0, v2, 0x1

    .line 298
    .local v0, "num":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    xor-int/2addr v2, v0

    return v2
.end method
