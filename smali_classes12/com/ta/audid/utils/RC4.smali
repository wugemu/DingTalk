.class public Lcom/ta/audid/utils/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/utils/RC4$RC4Key;
    }
.end annotation


# static fields
.field private static final RC4_PK:Ljava/lang/String; = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static prepareKey(Ljava/lang/String;)Lcom/ta/audid/utils/RC4$RC4Key;
    .locals 9
    .param p0, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    new-instance v3, Lcom/ta/audid/utils/RC4$RC4Key;

    invoke-direct {v3, v5}, Lcom/ta/audid/utils/RC4$RC4Key;-><init>(Lcom/ta/audid/utils/RC4$1;)V

    .line 34
    .local v3, "lRC4Key":Lcom/ta/audid/utils/RC4$RC4Key;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 35
    iget-object v6, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aput v0, v6, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput v7, v3, Lcom/ta/audid/utils/RC4$RC4Key;->x:I

    .line 38
    iput v7, v3, Lcom/ta/audid/utils/RC4$RC4Key;->y:I

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 42
    .local v2, "index2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 43
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x100

    .line 44
    iget-object v6, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v4, v6, v0

    .line 45
    .local v4, "swapInt":I
    iget-object v6, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    iget-object v7, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 46
    iget-object v6, v3, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aput v4, v6, v2

    .line 47
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v1, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v4    # "swapInt":I
    :catch_0
    move-exception v6

    move-object v3, v5

    .line 54
    .end local v0    # "counter":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "lRC4Key":Lcom/ta/audid/utils/RC4$RC4Key;
    :cond_1
    :goto_2
    return-object v3

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method

.method public static rc4([B)[B
    .locals 2
    .param p0, "pData"    # [B

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const-string/jumbo v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {v1}, Lcom/ta/audid/utils/RC4;->prepareKey(Ljava/lang/String;)Lcom/ta/audid/utils/RC4$RC4Key;

    move-result-object v0

    .line 21
    .local v0, "lRC4Key":Lcom/ta/audid/utils/RC4$RC4Key;
    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0, v0}, Lcom/ta/audid/utils/RC4;->rc4([BLcom/ta/audid/utils/RC4$RC4Key;)[B

    move-result-object v1

    .line 25
    .end local v0    # "lRC4Key":Lcom/ta/audid/utils/RC4$RC4Key;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static rc4([BLcom/ta/audid/utils/RC4$RC4Key;)[B
    .locals 7
    .param p0, "pData"    # [B
    .param p1, "pKey"    # Lcom/ta/audid/utils/RC4$RC4Key;

    .prologue
    .line 58
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 63
    iget v2, p1, Lcom/ta/audid/utils/RC4$RC4Key;->x:I

    .line 64
    .local v2, "x":I
    iget v4, p1, Lcom/ta/audid/utils/RC4$RC4Key;->y:I

    .line 66
    .local v4, "y":I
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 68
    add-int/lit8 v5, v2, 0x1

    rem-int/lit16 v2, v5, 0x100

    .line 69
    iget-object v5, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v5, v5, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x100

    .line 70
    iget-object v5, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v1, v5, v2

    .line 71
    .local v1, "lSwapInt":I
    iget-object v5, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    iget-object v6, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v4

    aput v6, v5, v2

    .line 72
    iget-object v5, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aput v1, v5, v4

    .line 73
    iget-object v5, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v5, v5, v2

    iget-object v6, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    rem-int/lit16 v3, v5, 0x100

    .line 75
    .local v3, "xorIndex":I
    aget-byte v5, p0, v0

    iget-object v6, p1, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    aget v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "lSwapInt":I
    .end local v3    # "xorIndex":I
    :cond_0
    iput v2, p1, Lcom/ta/audid/utils/RC4$RC4Key;->x:I

    .line 78
    iput v4, p1, Lcom/ta/audid/utils/RC4$RC4Key;->y:I

    .line 81
    .end local v0    # "counter":I
    .end local v2    # "x":I
    .end local v4    # "y":I
    .end local p0    # "pData":[B
    :goto_1
    return-object p0

    .restart local p0    # "pData":[B
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method
