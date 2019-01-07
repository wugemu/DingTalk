.class public final Lknj;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lknf;

.field public static final d:Lknd;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Ljava/util/TimeZone;

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lokio/ByteString;

.field private static final j:Lokio/ByteString;

.field private static final k:Lokio/ByteString;

.field private static final l:Lokio/ByteString;

.field private static final m:Lokio/ByteString;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/nio/charset/Charset;

.field private static final q:Ljava/nio/charset/Charset;

.field private static final r:Ljava/lang/reflect/Method;

.field private static final s:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    new-array v1, v2, [B

    sput-object v1, Lknj;->a:[B

    .line 58
    new-array v1, v2, [Ljava/lang/String;

    sput-object v1, Lknj;->b:[Ljava/lang/String;

    .line 60
    sget-object v1, Lknj;->a:[B

    invoke-static {v3, v1}, Lknf;->a(Lkmy;[B)Lknf;

    move-result-object v1

    sput-object v1, Lknj;->c:Lknf;

    .line 61
    sget-object v1, Lknj;->a:[B

    invoke-static {v3, v1}, Lknd;->create(Lkmy;[B)Lknd;

    move-result-object v1

    sput-object v1, Lknj;->d:Lknd;

    .line 63
    const-string/jumbo v1, "efbbbf"

    invoke-static {v1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lknj;->i:Lokio/ByteString;

    .line 64
    const-string/jumbo v1, "feff"

    invoke-static {v1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lknj;->j:Lokio/ByteString;

    .line 65
    const-string/jumbo v1, "fffe"

    invoke-static {v1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lknj;->k:Lokio/ByteString;

    .line 66
    const-string/jumbo v1, "0000ffff"

    invoke-static {v1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lknj;->l:Lokio/ByteString;

    .line 67
    const-string/jumbo v1, "ffff0000"

    invoke-static {v1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lknj;->m:Lokio/ByteString;

    .line 69
    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->e:Ljava/nio/charset/Charset;

    .line 70
    const-string/jumbo v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->f:Ljava/nio/charset/Charset;

    .line 71
    const-string/jumbo v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->n:Ljava/nio/charset/Charset;

    .line 72
    const-string/jumbo v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->o:Ljava/nio/charset/Charset;

    .line 73
    const-string/jumbo v1, "UTF-32BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->p:Ljava/nio/charset/Charset;

    .line 74
    const-string/jumbo v1, "UTF-32LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lknj;->q:Ljava/nio/charset/Charset;

    .line 77
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lknj;->g:Ljava/util/TimeZone;

    .line 79
    new-instance v1, Lknj$1;

    invoke-direct {v1}, Lknj$1;-><init>()V

    sput-object v1, Lknj;->h:Ljava/util/Comparator;

    .line 90
    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    .local v0, "m":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v0, Lknj;->r:Ljava/lang/reflect/Method;

    .line 116
    const-string/jumbo v1, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lknj;->s:Ljava/util/regex/Pattern;

    return-void

    .line 92
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static a(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 512
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 515
    :goto_0
    return v0

    .line 513
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 514
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 324
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 336
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 324
    .restart local v0    # "i":I
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 336
    goto :goto_1

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .prologue
    .line 382
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    .line 385
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 382
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 385
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 371
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 374
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 371
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 374
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 493
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 496
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " too large."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " too small."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_3
    long-to-int v2, v0

    return v2
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 307
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    .line 309
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 306
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 502
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 504
    .local v0, "assertionError":Ljava/lang/AssertionError;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 398
    const-string/jumbo v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 400
    const-string/jumbo v5, "["

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "]"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v5, v6}, Lknj;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 403
    .local v1, "inetAddress":Ljava/net/InetAddress;
    :goto_0
    if-nez v1, :cond_2

    move-object v2, v3

    .line 420
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    :goto_1
    return-object v2

    .line 402
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p0, v4, v5}, Lknj;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 404
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 405
    .local v0, "address":[B
    array-length v3, v0

    if-ne v3, v10, :cond_a

    .line 4629
    const/4 v3, -0x1

    move v5, v4

    move v6, v3

    move v3, v4

    .line 4631
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_5

    move v8, v3

    .line 4633
    :goto_3
    if-ge v8, v10, :cond_3

    aget-byte v7, v0, v8

    if-nez v7, :cond_3

    add-int/lit8 v7, v8, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_3

    .line 4634
    add-int/lit8 v7, v8, 0x2

    move v8, v7

    goto :goto_3

    .line 4636
    :cond_3
    sub-int v7, v8, v3

    .line 4637
    if-le v7, v5, :cond_4

    const/4 v9, 0x4

    if-lt v7, v9, :cond_4

    move v5, v7

    move v6, v3

    .line 4631
    :cond_4
    add-int/lit8 v3, v8, 0x2

    goto :goto_2

    .line 4644
    :cond_5
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 4645
    :cond_6
    :goto_4
    array-length v7, v0

    if-ge v4, v7, :cond_9

    .line 4646
    if-ne v4, v6, :cond_7

    .line 4647
    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 4648
    add-int/2addr v4, v5

    .line 4649
    if-ne v4, v10, :cond_6

    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_4

    .line 4651
    :cond_7
    if-lez v4, :cond_8

    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 4652
    :cond_8
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 4653
    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 4654
    add-int/lit8 v4, v4, 0x2

    .line 4655
    goto :goto_4

    .line 4657
    :cond_9
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 406
    :cond_a
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Invalid IPv6 address: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 410
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v2, v3

    goto/16 :goto_1

    .line 414
    :cond_c
    invoke-static {v2}, Lknj;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 415
    goto/16 :goto_1

    .line 420
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 465
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lkmw;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Lkmw;
    .param p1, "includeDefaultPort"    # Z

    .prologue
    .line 288
    .line 1486
    iget-object v1, p0, Lkmw;->b:Ljava/lang/String;

    .line 288
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2486
    iget-object v2, p0, Lkmw;->b:Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 3502
    iget v1, p0, Lkmw;->c:I

    .line 4393
    iget-object v2, p0, Lkmw;->a:Ljava/lang/String;

    .line 291
    invoke-static {v2}, Lkmw;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4502
    iget v2, p0, Lkmw;->c:I

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 3486
    :cond_2
    iget-object v0, p0, Lkmw;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 238
    new-instance v0, Lknj$2;

    invoke-direct {v0, p0, p1}, Lknj$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .prologue
    .line 663
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 664
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 665
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 666
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 667
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected default trust managers:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "No System TLS"

    invoke-static {v3, v0}, Lknj;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 670
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method

.method public static a(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 123
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 126
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "suppressed"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    sget-object v0, Lknj;->r:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    sget-object v0, Lknj;->r:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lknj;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-nez v2, :cond_0

    throw v0

    .line 158
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1

    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 301
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 130
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p0, "source"    # Lokio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 187
    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0, p2}, Lknj;->b(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 189
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p1, v5

    .line 256
    .local v0, "a":Ljava/lang/String;
    array-length v7, p2

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_0

    aget-object v1, p2, v3

    .line 257
    .local v1, "b":Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_1

    .line 258
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v1    # "b":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 256
    .restart local v1    # "b":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 313
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 314
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 316
    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 450
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 451
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_1

    .line 455
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 449
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "c":C
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 344
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 353
    add-int/lit8 p1, v0, 0x1

    .line 356
    .end local p1    # "pos":I
    :cond_0
    return p1

    .line 344
    .restart local p1    # "pos":I
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 274
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    .line 277
    :cond_1
    array-length v5, p1

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 278
    .local v0, "a":Ljava/lang/String;
    array-length v6, p2

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v1, p2, v3

    .line 279
    .local v1, "b":Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_2

    .line 280
    const/4 v2, 0x1

    goto :goto_0

    .line 278
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 277
    .end local v1    # "b":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1
.end method

.method public static b(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lokio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 199
    .local v0, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long v2, v8, v0

    .line 202
    .local v2, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-virtual {v5, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 204
    :try_start_0
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 205
    .local v4, "skipBuffer":Lokio/Buffer;
    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v4}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 212
    .end local v4    # "skipBuffer":Lokio/Buffer;
    :catch_0
    move-exception v5

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    .line 213
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 210
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return v5

    .end local v2    # "originalDuration":J
    :cond_0
    move-wide v2, v6

    .line 201
    goto :goto_0

    .line 212
    .restart local v2    # "originalDuration":J
    .restart local v4    # "skipBuffer":Lokio/Buffer;
    :cond_1
    cmp-long v5, v2, v6

    if-nez v5, :cond_2

    .line 213
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 208
    :goto_4
    const/4 v5, 0x1

    goto :goto_3

    .line 215
    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    add-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4

    .end local v4    # "skipBuffer":Lokio/Buffer;
    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    add-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    .line 212
    :catchall_0
    move-exception v5

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    .line 213
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 215
    :goto_5
    throw v5

    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v8, v0, v2

    invoke-virtual {v6, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 361
    invoke-static {p0, p1, p2}, Lknj;->a(Ljava/lang/String;II)I

    move-result v1

    .line 362
    .local v1, "start":I
    invoke-static {p0, v1, p2}, Lknj;->b(Ljava/lang/String;II)I

    move-result v0

    .line 363
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 460
    sget-object v0, Lknj;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 19
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 520
    const/16 v12, 0x10

    new-array v2, v12, [B

    .line 521
    .local v2, "address":[B
    const/4 v3, 0x0

    .line 522
    .local v3, "b":I
    const/4 v6, -0x1

    .line 523
    .local v6, "compress":I
    const/4 v8, -0x1

    .line 525
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 526
    const/16 v12, 0x10

    if-ne v3, v12, :cond_0

    const/4 v12, 0x0

    .line 583
    :goto_1
    return-object v12

    .line 529
    :cond_0
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_3

    const-string/jumbo v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 531
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    .line 532
    :cond_1
    add-int/lit8 v10, v10, 0x2

    .line 533
    add-int/lit8 v3, v3, 0x2

    .line 534
    move v6, v3

    .line 535
    move/from16 v0, p2

    if-ne v10, v0, :cond_4

    .line 576
    :cond_2
    :goto_2
    const/16 v12, 0x10

    if-eq v3, v12, :cond_15

    .line 577
    const/4 v12, -0x1

    if-ne v6, v12, :cond_14

    const/4 v12, 0x0

    goto :goto_1

    .line 536
    :cond_3
    if-eqz v3, :cond_4

    .line 538
    const-string/jumbo v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 539
    add-int/lit8 v10, v10, 0x1

    .line 551
    :cond_4
    const/4 v11, 0x0

    .line 552
    .local v11, "value":I
    move v8, v10

    .line 553
    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_11

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 555
    .local v5, "c":C
    invoke-static {v5}, Lknj;->a(C)I

    move-result v9

    .line 556
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_11

    .line 557
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 553
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 540
    .end local v5    # "c":C
    .end local v9    # "hexDigit":I
    .end local v11    # "value":I
    :cond_5
    const-string/jumbo v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 542
    add-int/lit8 v16, v3, -0x2

    move v12, v8

    move/from16 v15, v16

    .line 5594
    :goto_4
    move/from16 v0, p2

    if-ge v12, v0, :cond_d

    .line 5595
    const/16 v13, 0x10

    if-ne v15, v13, :cond_6

    const/4 v12, 0x0

    .line 542
    :goto_5
    if-nez v12, :cond_f

    const/4 v12, 0x0

    goto :goto_1

    .line 5598
    :cond_6
    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 5599
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    .line 5600
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 5604
    :cond_8
    const/4 v13, 0x0

    move v14, v12

    .line 5606
    :goto_6
    move/from16 v0, p2

    if-ge v14, v0, :cond_b

    .line 5607
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 5608
    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 5609
    if-nez v13, :cond_9

    if-eq v12, v14, :cond_9

    const/4 v12, 0x0

    goto :goto_5

    .line 5610
    :cond_9
    mul-int/lit8 v13, v13, 0xa

    add-int v13, v13, v17

    add-int/lit8 v13, v13, -0x30

    .line 5611
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v13, v0, :cond_a

    const/4 v12, 0x0

    goto :goto_5

    .line 5606
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 5613
    :cond_b
    sub-int v12, v14, v12

    .line 5614
    if-nez v12, :cond_c

    const/4 v12, 0x0

    goto :goto_5

    .line 5617
    :cond_c
    add-int/lit8 v12, v15, 0x1

    int-to-byte v13, v13

    aput-byte v13, v2, v15

    move v15, v12

    move v12, v14

    .line 5618
    goto :goto_4

    .line 5620
    :cond_d
    add-int/lit8 v12, v16, 0x4

    if-eq v15, v12, :cond_e

    const/4 v12, 0x0

    goto :goto_5

    .line 5621
    :cond_e
    const/4 v12, 0x1

    goto :goto_5

    .line 543
    :cond_f
    add-int/lit8 v3, v3, 0x2

    .line 544
    goto/16 :goto_2

    .line 546
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 559
    .restart local v11    # "value":I
    :cond_11
    sub-int v7, v10, v8

    .line 560
    .local v7, "groupLength":I
    if-eqz v7, :cond_12

    const/4 v12, 0x4

    if-le v7, v12, :cond_13

    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 563
    :cond_13
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "b":I
    .local v4, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 564
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "b":I
    .restart local v3    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    goto/16 :goto_0

    .line 578
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_14
    sub-int v12, v3, v6

    rsub-int/lit8 v12, v12, 0x10

    sub-int v13, v3, v6

    invoke-static {v2, v6, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    rsub-int/lit8 v12, v3, 0x10

    add-int/2addr v12, v6

    const/4 v13, 0x0

    invoke-static {v2, v6, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 583
    :cond_15
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 585
    :catch_0
    move-exception v12

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 426
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 430
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_1

    .line 440
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v2

    .line 436
    .restart local v0    # "c":C
    :cond_1
    const-string/jumbo v3, " #%/:?@[\\]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
