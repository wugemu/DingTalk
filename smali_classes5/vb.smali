.class public final Lvb;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BIII)I
    .locals 10
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "null"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_0
    const/4 v4, 0x0

    .line 65
    .local v4, "result":I
    const/4 v3, 0x0

    .line 66
    .local v3, "negative":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "i":I
    aget-byte v5, p0, v8

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    .line 73
    const/4 v3, 0x1

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 81
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p0, v1

    int-to-char v5, v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 82
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 83
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "illegal number: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v8, v9}, Lvb;->a([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_2
    neg-int v4, v0

    move v1, v2

    .line 90
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_0
    if-ge v1, v9, :cond_6

    .line 92
    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-byte v5, p0, v5

    int-to-char v5, v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 93
    if-gez v0, :cond_3

    .line 94
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "illegal number"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_3
    const v5, -0x7ffffff

    if-ge v4, v5, :cond_4

    .line 97
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "illegal number"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    :cond_4
    mul-int/lit8 v4, v4, 0x10

    .line 100
    const v5, -0x7fffffff

    add-int/2addr v5, v0

    if-ge v4, v5, :cond_5

    .line 101
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "illegal number"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    :cond_5
    sub-int/2addr v4, v0

    goto :goto_0

    .line 108
    :cond_6
    if-eqz v3, :cond_7

    .line 115
    .end local v4    # "result":I
    :goto_1
    return v4

    .restart local v4    # "result":I
    :cond_7
    neg-int v4, v4

    goto :goto_1
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 212
    sub-int v4, p2, p1

    .line 213
    .local v4, "size":I
    new-array v5, v4, [C

    .line 215
    .local v5, "theChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 216
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v5, v1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 218
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 236
    .local v1, "chars":[C
    array-length v4, v1

    .line 237
    .local v4, "size":I
    new-array v0, v4, [B

    .line 239
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 240
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v5, v1, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 241
    :cond_0
    return-object v0
.end method
