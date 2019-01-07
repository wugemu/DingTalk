.class public final Lkok;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final a:Lokio/ByteString;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 24
    const-string/jumbo v5, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 25
    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    sput-object v5, Lkok;->a:Lokio/ByteString;

    .line 51
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v7, "DATA"

    aput-object v7, v5, v6

    const-string/jumbo v7, "HEADERS"

    aput-object v7, v5, v10

    const/4 v7, 0x2

    const-string/jumbo v8, "PRIORITY"

    aput-object v8, v5, v7

    const-string/jumbo v7, "RST_STREAM"

    aput-object v7, v5, v12

    const-string/jumbo v7, "SETTINGS"

    aput-object v7, v5, v11

    const/4 v7, 0x5

    const-string/jumbo v8, "PUSH_PROMISE"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "PING"

    aput-object v8, v5, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "GOAWAY"

    aput-object v8, v5, v7

    const-string/jumbo v7, "WINDOW_UPDATE"

    aput-object v7, v5, v13

    const/16 v7, 0x9

    const-string/jumbo v8, "CONTINUATION"

    aput-object v8, v5, v7

    sput-object v5, Lkok;->d:[Ljava/lang/String;

    .line 68
    const/16 v5, 0x40

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lkok;->b:[Ljava/lang/String;

    .line 69
    const/16 v5, 0x100

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lkok;->c:[Ljava/lang/String;

    .line 71
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x100

    if-ge v2, v5, :cond_0

    .line 72
    sget-object v5, Lkok;->c:[Ljava/lang/String;

    const-string/jumbo v7, "%8s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const-string/jumbo v7, ""

    aput-object v7, v5, v6

    .line 76
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const-string/jumbo v7, "END_STREAM"

    aput-object v7, v5, v10

    .line 78
    new-array v4, v10, [I

    aput v10, v4, v6

    .line 80
    .local v4, "prefixFlags":[I
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const-string/jumbo v7, "PADDED"

    aput-object v7, v5, v13

    move v5, v6

    .line 81
    :goto_1
    if-gtz v5, :cond_1

    aget v3, v4, v6

    .line 82
    .local v3, "prefixFlag":I
    sget-object v7, Lkok;->b:[Ljava/lang/String;

    or-int/lit8 v8, v3, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lkok;->b:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|PADDED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v3    # "prefixFlag":I
    :cond_1
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const-string/jumbo v7, "END_HEADERS"

    aput-object v7, v5, v11

    .line 86
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const/16 v7, 0x20

    const-string/jumbo v8, "PRIORITY"

    aput-object v8, v5, v7

    .line 87
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    const/16 v7, 0x24

    const-string/jumbo v8, "END_HEADERS|PRIORITY"

    aput-object v8, v5, v7

    .line 88
    new-array v1, v12, [I

    fill-array-data v1, :array_0

    .local v1, "frameFlags":[I
    move v7, v6

    .line 92
    :goto_2
    if-ge v7, v12, :cond_3

    aget v0, v1, v7

    .local v0, "frameFlag":I
    move v5, v6

    .line 93
    :goto_3
    if-gtz v5, :cond_2

    aget v3, v4, v5

    .line 94
    .restart local v3    # "prefixFlag":I
    sget-object v8, Lkok;->b:[Ljava/lang/String;

    or-int v9, v3, v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lkok;->b:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lkok;->b:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 95
    sget-object v8, Lkok;->b:[Ljava/lang/String;

    or-int v9, v3, v0

    or-int/lit8 v9, v9, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lkok;->b:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lkok;->b:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|PADDED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 92
    .end local v3    # "prefixFlag":I
    :cond_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2

    .line 100
    .end local v0    # "frameFlag":I
    :cond_3
    const/4 v2, 0x0

    :goto_4
    const/16 v5, 0x40

    if-ge v2, v5, :cond_5

    .line 101
    sget-object v5, Lkok;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    sget-object v5, Lkok;->b:[Ljava/lang/String;

    sget-object v6, Lkok;->c:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 100
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 103
    :cond_5
    return-void

    .line 88
    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 8
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 135
    const/16 v2, 0xa

    if-ge p3, v2, :cond_1

    sget-object v2, Lkok;->d:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 1147
    .local v1, "formattedType":Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_2

    const-string/jumbo v0, ""

    .line 137
    .local v0, "formattedFlags":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v3, "%s 0x%08x %5d %-13s %s"

    new-array v4, v7, [Ljava/lang/Object;

    if-eqz p0, :cond_6

    const-string/jumbo v2, "<<"

    :goto_2
    aput-object v2, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 135
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "0x%02x"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1148
    .restart local v1    # "formattedType":Ljava/lang/String;
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 1158
    :pswitch_0
    const/16 v2, 0x40

    if-ge p4, v2, :cond_4

    sget-object v2, Lkok;->b:[Ljava/lang/String;

    aget-object v0, v2, p4

    .line 1160
    :goto_3
    if-ne p3, v7, :cond_5

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_5

    .line 1161
    const-string/jumbo v2, "HEADERS"

    const-string/jumbo v3, "PUSH_PROMISE"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1151
    :pswitch_1
    if-ne p4, v5, :cond_3

    const-string/jumbo v0, "ACK"

    goto :goto_1

    :cond_3
    sget-object v2, Lkok;->c:[Ljava/lang/String;

    aget-object v0, v2, p4

    goto :goto_1

    .line 1156
    :pswitch_2
    sget-object v2, Lkok;->c:[Ljava/lang/String;

    aget-object v0, v2, p4

    goto :goto_1

    .line 1158
    :cond_4
    sget-object v2, Lkok;->c:[Ljava/lang/String;

    aget-object v0, v2, p4

    goto :goto_3

    .line 1162
    :cond_5
    if-nez p3, :cond_0

    and-int/lit8 v2, p4, 0x20

    if-eqz v2, :cond_0

    .line 1163
    const-string/jumbo v2, "PRIORITY"

    const-string/jumbo v3, "COMPRESSED"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 137
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, ">>"

    goto :goto_2

    .line 1148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
