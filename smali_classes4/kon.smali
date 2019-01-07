.class final Lkon;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkon$b;,
        Lkon$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lokio/BufferedSource;

.field final c:Z

.field final d:Lkoj$a;

.field private final e:Lkon$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lkok;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkon;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 3
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lkon;->b:Lokio/BufferedSource;

    .line 72
    iput-boolean p2, p0, Lkon;->c:Z

    .line 73
    new-instance v0, Lkon$a;

    iget-object v1, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lkon$a;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lkon;->e:Lkon$a;

    .line 74
    new-instance v0, Lkoj$a;

    const/16 v1, 0x1000

    iget-object v2, p0, Lkon;->e:Lkon$a;

    invoke-direct {v0, v1, v2}, Lkoj$a;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lkon;->d:Lkoj$a;

    .line 75
    return-void
.end method

.method private static a(IBS)I
    .locals 4
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 407
    :cond_0
    if-le p2, p0, :cond_1

    .line 408
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 410
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(Lokio/BufferedSource;)I
    .locals 2
    .param p0, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 400
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 399
    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 189
    iget-object v0, p0, Lkon;->e:Lkon$a;

    iget-object v1, p0, Lkon;->e:Lkon$a;

    iput p1, v1, Lkon$a;->d:I

    iput p1, v0, Lkon$a;->a:I

    .line 190
    iget-object v0, p0, Lkon;->e:Lkon$a;

    iput-short p2, v0, Lkon$a;->e:S

    .line 191
    iget-object v0, p0, Lkon;->e:Lkon$a;

    iput-byte p3, v0, Lkon$a;->b:B

    .line 192
    iget-object v0, p0, Lkon;->e:Lkon$a;

    iput p4, v0, Lkon$a;->c:I

    .line 196
    iget-object v0, p0, Lkon;->d:Lkoj$a;

    .line 3184
    :goto_0
    iget-object v1, v0, Lkoj$a;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3185
    iget-object v1, v0, Lkoj$a;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 3186
    if-ne v1, v7, :cond_0

    .line 3187
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3188
    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-ne v2, v7, :cond_4

    .line 3189
    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lkoj$a;->a(II)I

    move-result v1

    .line 3190
    add-int/lit8 v1, v1, -0x1

    .line 3219
    invoke-static {v1}, Lkoj$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3220
    sget-object v2, Lkoj;->a:[Lkoi;

    aget-object v1, v2, v1

    .line 3221
    iget-object v2, v0, Lkoj$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3223
    :cond_1
    sget-object v2, Lkoj;->a:[Lkoi;

    add-int/lit8 v2, v1, -0x3d

    invoke-virtual {v0, v2}, Lkoj$a;->a(I)I

    move-result v2

    .line 3224
    if-ltz v2, :cond_2

    iget-object v3, v0, Lkoj$a;->e:[Lkoi;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 3225
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3227
    :cond_3
    iget-object v1, v0, Lkoj$a;->a:Ljava/util/List;

    iget-object v3, v0, Lkoj$a;->e:[Lkoi;

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3191
    :cond_4
    if-ne v1, v6, :cond_5

    .line 3256
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lkoj;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 3257
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v2

    .line 3258
    new-instance v3, Lkoi;

    invoke-direct {v3, v1, v2}, Lkoi;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v5, v3}, Lkoj$a;->a(ILkoi;)V

    goto/16 :goto_0

    .line 3193
    :cond_5
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v6, :cond_6

    .line 3194
    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lkoj$a;->a(II)I

    move-result v1

    .line 3195
    add-int/lit8 v1, v1, -0x1

    .line 4250
    invoke-virtual {v0, v1}, Lkoj$a;->b(I)Lokio/ByteString;

    move-result-object v1

    .line 4251
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v2

    .line 4252
    new-instance v3, Lkoi;

    invoke-direct {v3, v1, v2}, Lkoi;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v5, v3}, Lkoj$a;->a(ILkoi;)V

    goto/16 :goto_0

    .line 3196
    :cond_6
    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    .line 3197
    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lkoj$a;->a(II)I

    move-result v1

    iput v1, v0, Lkoj$a;->d:I

    .line 3198
    iget v1, v0, Lkoj$a;->d:I

    if-ltz v1, :cond_7

    iget v1, v0, Lkoj$a;->d:I

    iget v2, v0, Lkoj$a;->c:I

    if-le v1, v2, :cond_8

    .line 3200
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid dynamic table size update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lkoj$a;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3202
    :cond_8
    invoke-virtual {v0}, Lkoj$a;->a()V

    goto/16 :goto_0

    .line 3203
    :cond_9
    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_b

    .line 5243
    :cond_a
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lkoj;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 5244
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v2

    .line 5245
    iget-object v3, v0, Lkoj$a;->a:Ljava/util/List;

    new-instance v4, Lkoi;

    invoke-direct {v4, v1, v2}, Lkoi;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3206
    :cond_b
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lkoj$a;->a(II)I

    move-result v1

    .line 3207
    add-int/lit8 v1, v1, -0x1

    .line 6237
    invoke-virtual {v0, v1}, Lkoj$a;->b(I)Lokio/ByteString;

    move-result-object v1

    .line 6238
    invoke-virtual {v0}, Lkoj$a;->b()Lokio/ByteString;

    move-result-object v2

    .line 6239
    iget-object v3, v0, Lkoj$a;->a:Ljava/util/List;

    new-instance v4, Lkoi;

    invoke-direct {v4, v1, v2}, Lkoi;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 197
    :cond_c
    iget-object v0, p0, Lkon;->d:Lkoj$a;

    .line 7213
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lkoj$a;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7214
    iget-object v0, v0, Lkoj$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    return-object v1
.end method

.method private a(Lkon$b;I)V
    .locals 1
    .param p1, "handler"    # Lkon$b;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 229
    iget-object v0, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 231
    return-void
.end method


# virtual methods
.method public final a(ZLkon$b;)Z
    .locals 13
    .param p1, "requireSettings"    # Z
    .param p2, "handler"    # Lkon$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v12, 0x4000

    const/16 v10, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 95
    :try_start_0
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    const-wide/16 v8, 0x9

    invoke-interface {v5, v8, v9}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-static {v5}, Lkon;->a(Lokio/BufferedSource;)I

    move-result v1

    .line 112
    .local v1, "length":I
    if-ltz v1, :cond_0

    if-le v1, v12, :cond_2

    .line 113
    :cond_0
    const-string/jumbo v5, "FRAME_SIZE_ERROR: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 97
    .end local v1    # "length":I
    :catch_0
    move-exception v5

    move v7, v4

    .line 164
    :cond_1
    :goto_0
    return v7

    .line 115
    .restart local v1    # "length":I
    :cond_2
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v3, v5

    .line 116
    .local v3, "type":B
    if-eqz p1, :cond_3

    if-eq v3, v6, :cond_3

    .line 117
    const-string/jumbo v5, "Expected a SETTINGS frame but was %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 119
    :cond_3
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v0, v5

    .line 120
    .local v0, "flags":B
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const v8, 0x7fffffff

    and-int v2, v5, v8

    .line 121
    .local v2, "streamId":I
    sget-object v5, Lkon;->a:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lkon;->a:Ljava/util/logging/Logger;

    invoke-static {v7, v2, v1, v3, v0}, Lkok;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 162
    iget-object v4, p0, Lkon;->b:Lokio/BufferedSource;

    int-to-long v8, v1

    invoke-interface {v4, v8, v9}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 1202
    :pswitch_0
    if-nez v2, :cond_5

    const-string/jumbo v5, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 1205
    :cond_5
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_6

    move v6, v7

    .line 1206
    :goto_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_7

    move v5, v7

    .line 1207
    :goto_2
    if-eqz v5, :cond_8

    .line 1208
    const-string/jumbo v5, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    :cond_6
    move v6, v4

    .line 1205
    goto :goto_1

    :cond_7
    move v5, v4

    .line 1206
    goto :goto_2

    .line 1211
    :cond_8
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_9

    iget-object v4, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 1212
    :cond_9
    invoke-static {v1, v0, v4}, Lkon;->a(IBS)I

    move-result v5

    .line 1214
    iget-object v8, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {p2, v6, v2, v8, v5}, Lkon$b;->a(ZILokio/BufferedSource;I)V

    .line 1215
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    int-to-long v8, v4

    invoke-interface {v5, v8, v9}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_0

    .line 2169
    :pswitch_1
    if-nez v2, :cond_a

    const-string/jumbo v5, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2171
    :cond_a
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_d

    move v5, v7

    .line 2173
    :goto_3
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_b

    iget-object v4, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 2175
    :cond_b
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_c

    .line 2176
    invoke-direct {p0, p2, v2}, Lkon;->a(Lkon$b;I)V

    .line 2177
    add-int/lit8 v1, v1, -0x5

    .line 2180
    .end local v1    # "length":I
    :cond_c
    invoke-static {v1, v0, v4}, Lkon;->a(IBS)I

    move-result v6

    .line 2182
    invoke-direct {p0, v6, v4, v0, v2}, Lkon;->a(ISBI)Ljava/util/List;

    move-result-object v4

    .line 2184
    invoke-interface {p2, v5, v2, v4}, Lkon$b;->a(ZILjava/util/List;)V

    goto/16 :goto_0

    .restart local v1    # "length":I
    :cond_d
    move v5, v4

    .line 2171
    goto :goto_3

    .line 2220
    :pswitch_2
    const/4 v5, 0x5

    if-eq v1, v5, :cond_e

    const-string/jumbo v5, "TYPE_PRIORITY length: %d != 5"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2221
    :cond_e
    if-nez v2, :cond_f

    const-string/jumbo v5, "TYPE_PRIORITY streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2222
    :cond_f
    invoke-direct {p0, p2, v2}, Lkon;->a(Lkon$b;I)V

    goto/16 :goto_0

    .line 2235
    :pswitch_3
    if-eq v1, v6, :cond_10

    const-string/jumbo v5, "TYPE_RST_STREAM length: %d != 4"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2236
    :cond_10
    if-nez v2, :cond_11

    const-string/jumbo v5, "TYPE_RST_STREAM streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2237
    :cond_11
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 2238
    invoke-static {v5}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v6

    .line 2239
    if-nez v6, :cond_12

    .line 2240
    const-string/jumbo v6, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2242
    :cond_12
    invoke-interface {p2, v2, v6}, Lkon$b;->a(ILokhttp3/internal/http2/ErrorCode;)V

    goto/16 :goto_0

    .line 2247
    :pswitch_4
    if-eqz v2, :cond_13

    const-string/jumbo v5, "TYPE_SETTINGS streamId != 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2248
    :cond_13
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_14

    .line 2249
    if-eqz v1, :cond_1

    const-string/jumbo v5, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2254
    :cond_14
    rem-int/lit8 v5, v1, 0x6

    if-eqz v5, :cond_15

    const-string/jumbo v5, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2255
    :cond_15
    new-instance v9, Lkos;

    invoke-direct {v9}, Lkos;-><init>()V

    move v8, v4

    .line 2256
    :goto_4
    if-ge v8, v1, :cond_18

    .line 2257
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readShort()S

    move-result v5

    const v10, 0xffff

    and-int/2addr v5, v10

    .line 2258
    iget-object v10, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v10}, Lokio/BufferedSource;->readInt()I

    move-result v10

    .line 2260
    packed-switch v5, :pswitch_data_1

    .line 2287
    :cond_16
    :goto_5
    :pswitch_5
    invoke-virtual {v9, v5, v10}, Lkos;->a(II)Lkos;

    .line 2256
    add-int/lit8 v5, v8, 0x6

    move v8, v5

    goto :goto_4

    .line 2264
    :pswitch_6
    if-eqz v10, :cond_16

    if-eq v10, v7, :cond_16

    .line 2265
    const-string/jumbo v5, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    :pswitch_7
    move v5, v6

    .line 2270
    goto :goto_5

    .line 2272
    :pswitch_8
    const/4 v5, 0x7

    .line 2273
    if-gez v10, :cond_16

    .line 2274
    const-string/jumbo v5, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2278
    :pswitch_9
    if-lt v10, v12, :cond_17

    const v11, 0xffffff

    if-le v10, v11, :cond_16

    .line 2279
    :cond_17
    const-string/jumbo v5, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2289
    :cond_18
    invoke-interface {p2, v4, v9}, Lkon$b;->a(ZLkos;)V

    goto/16 :goto_0

    .line 2294
    :pswitch_a
    if-nez v2, :cond_19

    .line 2295
    const-string/jumbo v5, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2297
    :cond_19
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1a

    iget-object v4, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 2298
    :cond_1a
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    .line 2299
    add-int/lit8 v6, v1, -0x4

    .line 2300
    invoke-static {v6, v0, v4}, Lkon;->a(IBS)I

    move-result v6

    .line 2301
    invoke-direct {p0, v6, v4, v0, v2}, Lkon;->a(ISBI)Ljava/util/List;

    move-result-object v4

    .line 2302
    invoke-interface {p2, v5, v4}, Lkon$b;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2307
    :pswitch_b
    if-eq v1, v10, :cond_1b

    const-string/jumbo v5, "TYPE_PING length != 8: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2308
    :cond_1b
    if-eqz v2, :cond_1c

    const-string/jumbo v5, "TYPE_PING streamId != 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2309
    :cond_1c
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 2310
    iget-object v6, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 2311
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_1d

    move v4, v7

    .line 2312
    :cond_1d
    invoke-interface {p2, v4, v5, v6}, Lkon$b;->a(ZII)V

    goto/16 :goto_0

    .line 2317
    :pswitch_c
    if-ge v1, v10, :cond_1e

    const-string/jumbo v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2318
    :cond_1e
    if-eqz v2, :cond_1f

    const-string/jumbo v5, "TYPE_GOAWAY streamId != 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2319
    :cond_1f
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 2320
    iget-object v6, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 2321
    add-int/lit8 v8, v1, -0x8

    .line 2322
    invoke-static {v6}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v9

    .line 2323
    if-nez v9, :cond_20

    .line 2324
    const-string/jumbo v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2326
    :cond_20
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2327
    if-lez v8, :cond_21

    .line 2328
    iget-object v4, p0, Lkon;->b:Lokio/BufferedSource;

    int-to-long v8, v8

    invoke-interface {v4, v8, v9}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v4

    .line 2330
    :cond_21
    invoke-interface {p2, v5, v4}, Lkon$b;->a(ILokio/ByteString;)V

    goto/16 :goto_0

    .line 2335
    :pswitch_d
    if-eq v1, v6, :cond_22

    const-string/jumbo v5, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2336
    :cond_22
    iget-object v5, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    int-to-long v8, v5

    const-wide/32 v10, 0x7fffffff

    and-long/2addr v8, v10

    .line 2337
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_23

    const-string/jumbo v5, "windowSizeIncrement was 0"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 2338
    :cond_23
    invoke-interface {p2, v2, v8, v9}, Lkon$b;->a(IJ)V

    goto/16 :goto_0

    .line 123
    .line 2260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lkon;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 343
    return-void
.end method
