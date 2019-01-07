.class public final Lkta;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 148
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lksy;II)Ljava/lang/String;
    .locals 3
    .param p0, "byteSequence"    # Lksy;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 109
    invoke-interface {p0}, Lksy;->a()[B

    move-result-object v2

    invoke-static {v2}, Lxd;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "scharset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    sget-object v0, Lksz;->c:Ljava/nio/charset/Charset;

    .line 1137
    .local v0, "charset":Ljava/nio/charset/Charset;
    :goto_0
    instance-of v2, p0, Lksx;

    if-eqz v2, :cond_1

    .line 1138
    check-cast p0, Lksx;

    .line 2121
    .end local p0    # "byteSequence":Lksy;
    iget-object v2, p0, Lksx;->a:[B

    .line 1139
    invoke-static {v0, v2, p1, p2}, Lkta;->a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 115
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local p0    # "byteSequence":Lksy;
    :cond_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 1141
    :cond_1
    invoke-interface {p0}, Lksy;->a()[B

    move-result-object v2

    .line 1142
    invoke-static {v0, v2, p1, p2}, Lkta;->a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lksy;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lksz;->a:Ljava/nio/charset/Charset;

    .line 1062
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1063
    new-instance v1, Lksx;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lksx;-><init>(I)V

    .line 1064
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lksx;->a([BII)V

    .line 48
    return-object v1
.end method
