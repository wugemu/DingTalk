.class final Lkoq;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkoq$a;
    }
.end annotation


# static fields
.field private static final b:[I

.field private static final c:[B

.field private static final d:Lkoq;


# instance fields
.field final a:Lkoq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkoq;->b:[I

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lkoq;->c:[B

    .line 79
    new-instance v0, Lkoq;

    invoke-direct {v0}, Lkoq;-><init>()V

    sput-object v0, Lkoq;->d:Lkoq;

    return-void

    .line 37
    .line 65
    :array_0
    .array-data 4
        0x1ff8
        0x7fffd8
        0xfffffe2
        0xfffffe3
        0xfffffe4
        0xfffffe5
        0xfffffe6
        0xfffffe7
        0xfffffe8
        0xffffea
        0x3ffffffc    # 1.9999995f
        0xfffffe9
        0xfffffea
        0x3ffffffd    # 1.9999996f
        0xfffffeb
        0xfffffec
        0xfffffed
        0xfffffee
        0xfffffef
        0xffffff0
        0xffffff1
        0xffffff2
        0x3ffffffe    # 1.9999998f
        0xffffff3
        0xffffff4
        0xffffff5
        0xffffff6
        0xffffff7
        0xffffff8
        0xffffff9
        0xffffffa
        0xffffffb
        0x14
        0x3f8
        0x3f9
        0xffa
        0x1ff9
        0x15
        0xf8
        0x7fa
        0x3fa
        0x3fb
        0xf9
        0x7fb
        0xfa
        0x16
        0x17
        0x18
        0x0
        0x1
        0x2
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x5c
        0xfb
        0x7ffc
        0x20
        0xffb
        0x3fc
        0x1ffa
        0x21
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xfc
        0x73
        0xfd
        0x1ffb
        0x7fff0
        0x1ffc
        0x3ffc
        0x22
        0x7ffd
        0x3
        0x23
        0x4
        0x24
        0x5
        0x25
        0x26
        0x27
        0x6
        0x74
        0x75
        0x28
        0x29
        0x2a
        0x7
        0x2b
        0x76
        0x2c
        0x8
        0x9
        0x2d
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7ffe
        0x7fc
        0x3ffd
        0x1ffd
        0xffffffc
        0xfffe6
        0x3fffd2
        0xfffe7
        0xfffe8
        0x3fffd3
        0x3fffd4
        0x3fffd5
        0x7fffd9
        0x3fffd6
        0x7fffda
        0x7fffdb
        0x7fffdc
        0x7fffdd
        0x7fffde
        0xffffeb
        0x7fffdf
        0xffffec
        0xffffed
        0x3fffd7
        0x7fffe0
        0xffffee
        0x7fffe1
        0x7fffe2
        0x7fffe3
        0x7fffe4
        0x1fffdc
        0x3fffd8
        0x7fffe5
        0x3fffd9
        0x7fffe6
        0x7fffe7
        0xffffef
        0x3fffda
        0x1fffdd
        0xfffe9
        0x3fffdb
        0x3fffdc
        0x7fffe8
        0x7fffe9
        0x1fffde
        0x7fffea
        0x3fffdd
        0x3fffde
        0xfffff0
        0x1fffdf
        0x3fffdf
        0x7fffeb
        0x7fffec
        0x1fffe0
        0x1fffe1
        0x3fffe0
        0x1fffe2
        0x7fffed
        0x3fffe1
        0x7fffee
        0x7fffef
        0xfffea
        0x3fffe2
        0x3fffe3
        0x3fffe4
        0x7ffff0
        0x3fffe5
        0x3fffe6
        0x7ffff1
        0x3ffffe0
        0x3ffffe1
        0xfffeb
        0x7fff1
        0x3fffe7
        0x7ffff2
        0x3fffe8
        0x1ffffec
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x7ffffde
        0x7ffffdf
        0x3ffffe5
        0xfffff1
        0x1ffffed
        0x7fff2
        0x1fffe3
        0x3ffffe6
        0x7ffffe0
        0x7ffffe1
        0x3ffffe7
        0x7ffffe2
        0xfffff2
        0x1fffe4
        0x1fffe5
        0x3ffffe8
        0x3ffffe9
        0xffffffd
        0x7ffffe3
        0x7ffffe4
        0x7ffffe5
        0xfffec
        0xfffff3
        0xfffed
        0x1fffe6
        0x3fffe9
        0x1fffe7
        0x1fffe8
        0x7ffff3
        0x3fffea
        0x3fffeb
        0x1ffffee
        0x1ffffef
        0xfffff4
        0xfffff5
        0x3ffffea
        0x7ffff4
        0x3ffffeb
        0x7ffffe6
        0x3ffffec
        0x3ffffed
        0x7ffffe7
        0x7ffffe8
        0x7ffffe9
        0x7ffffea
        0x7ffffeb
        0xffffffe
        0x7ffffec
        0x7ffffed
        0x7ffffee
        0x7ffffef
        0x7fffff0
        0x3ffffee
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lkoq$a;

    invoke-direct {v0}, Lkoq$a;-><init>()V

    iput-object v0, p0, Lkoq;->a:Lkoq$a;

    .line 88
    invoke-direct {p0}, Lkoq;->b()V

    .line 89
    return-void
.end method

.method static a(Lokio/ByteString;)I
    .locals 7
    .param p0, "bytes"    # Lokio/ByteString;

    .prologue
    .line 118
    const-wide/16 v2, 0x0

    .line 120
    .local v2, "len":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 121
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 122
    .local v0, "b":I
    sget-object v4, Lkoq;->c:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "b":I
    :cond_0
    const-wide/16 v4, 0x7

    add-long/2addr v4, v2

    const/4 v6, 0x3

    shr-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method

.method public static a()Lkoq;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lkoq;->d:Lkoq;

    return-object v0
.end method

.method static a(Lokio/ByteString;Lokio/BufferedSink;)V
    .locals 10
    .param p0, "data"    # Lokio/ByteString;
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "current":J
    const/4 v5, 0x0

    .line 95
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 96
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 97
    .local v0, "b":I
    sget-object v7, Lkoq;->b:[I

    aget v1, v7, v0

    .line 98
    .local v1, "code":I
    sget-object v7, Lkoq;->c:[B

    aget-byte v6, v7, v0

    .line 100
    .local v6, "nbits":I
    shl-long/2addr v2, v6

    .line 101
    int-to-long v8, v1

    or-long/2addr v2, v8

    .line 102
    add-int/2addr v5, v6

    .line 104
    :goto_1
    const/16 v7, 0x8

    if-lt v5, v7, :cond_0

    .line 105
    add-int/lit8 v5, v5, -0x8

    .line 106
    shr-long v8, v2, v5

    long-to-int v7, v8

    invoke-interface {p1, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "b":I
    .end local v1    # "code":I
    .end local v6    # "nbits":I
    :cond_1
    if-lez v5, :cond_2

    .line 111
    rsub-int/lit8 v7, v5, 0x8

    shl-long/2addr v2, v7

    .line 112
    const/16 v7, 0xff

    ushr-int/2addr v7, v5

    int-to-long v8, v7

    or-long/2addr v2, v8

    .line 113
    long-to-int v7, v2

    invoke-interface {p1, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 115
    :cond_2
    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_4

    .line 168
    sget-object v1, Lkoq;->b:[I

    aget v4, v1, v0

    sget-object v1, Lkoq;->c:[B

    aget-byte v2, v1, v0

    .line 1173
    new-instance v5, Lkoq$a;

    invoke-direct {v5, v0, v2}, Lkoq$a;-><init>(II)V

    .line 1175
    iget-object v1, p0, Lkoq;->a:Lkoq$a;

    move-object v3, v1

    move v1, v2

    .line 1176
    :goto_1
    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 1177
    add-int/lit8 v1, v1, -0x8

    int-to-byte v2, v1

    .line 1178
    ushr-int v1, v4, v2

    and-int/lit16 v1, v1, 0xff

    .line 1179
    iget-object v6, v3, Lkoq$a;->a:[Lkoq$a;

    if-nez v6, :cond_0

    .line 1180
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "invalid dictionary: prefix not unique"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1182
    :cond_0
    iget-object v6, v3, Lkoq$a;->a:[Lkoq$a;

    aget-object v6, v6, v1

    if-nez v6, :cond_1

    .line 1183
    iget-object v6, v3, Lkoq$a;->a:[Lkoq$a;

    new-instance v7, Lkoq$a;

    invoke-direct {v7}, Lkoq$a;-><init>()V

    aput-object v7, v6, v1

    .line 1185
    :cond_1
    iget-object v3, v3, Lkoq$a;->a:[Lkoq$a;

    aget-object v1, v3, v1

    move-object v3, v1

    move v1, v2

    .line 1186
    goto :goto_1

    .line 1188
    :cond_2
    rsub-int/lit8 v1, v1, 0x8

    .line 1189
    shl-int v2, v4, v1

    and-int/lit16 v2, v2, 0xff

    .line 1190
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    move v1, v2

    .line 1191
    :goto_2
    add-int v6, v2, v4

    if-ge v1, v6, :cond_3

    .line 1192
    iget-object v6, v3, Lkoq$a;->a:[Lkoq$a;

    aput-object v5, v6, v1

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_4
    return-void
.end method
