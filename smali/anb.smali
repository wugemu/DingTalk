.class public final Lanb;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static a(Ljava/lang/String;)Lanb$a;
    .locals 9
    .param p0, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x100

    const/4 v7, 0x0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    new-instance v3, Lanb$a;

    invoke-direct {v3, v7}, Lanb$a;-><init>(B)V

    .line 40
    .local v3, "lRC4Key":Lanb$a;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 41
    iget-object v6, v3, Lanb$a;->a:[I

    aput v0, v6, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iput v7, v3, Lanb$a;->b:I

    .line 44
    iput v7, v3, Lanb$a;->c:I

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 48
    .local v2, "index2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v3, Lanb$a;->a:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x100

    .line 50
    iget-object v6, v3, Lanb$a;->a:[I

    aget v4, v6, v0

    .line 51
    .local v4, "swapInt":I
    iget-object v6, v3, Lanb$a;->a:[I

    iget-object v7, v3, Lanb$a;->a:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 52
    iget-object v6, v3, Lanb$a;->a:[I

    aput v4, v6, v2

    .line 53
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v1, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v4    # "swapInt":I
    :catch_0
    move-exception v6

    move-object v3, v5

    .line 60
    .end local v0    # "counter":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "lRC4Key":Lanb$a;
    :cond_1
    :goto_2
    return-object v3

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method

.method public static a([B)[B
    .locals 7
    .param p0, "pData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 21
    const-string/jumbo v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    .line 1025
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 1026
    invoke-static {v1}, Lanb;->a(Ljava/lang/String;)Lanb$a;

    move-result-object v3

    .line 1027
    if-eqz v3, :cond_2

    .line 1064
    if-eqz p0, :cond_1

    if-eqz v3, :cond_1

    .line 1069
    iget v2, v3, Lanb$a;->b:I

    .line 1070
    iget v1, v3, Lanb$a;->c:I

    .line 1072
    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 1074
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    .line 1075
    iget-object v4, v3, Lanb$a;->a:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    rem-int/lit16 v1, v1, 0x100

    .line 1076
    iget-object v4, v3, Lanb$a;->a:[I

    aget v4, v4, v2

    .line 1077
    iget-object v5, v3, Lanb$a;->a:[I

    iget-object v6, v3, Lanb$a;->a:[I

    aget v6, v6, v1

    aput v6, v5, v2

    .line 1078
    iget-object v5, v3, Lanb$a;->a:[I

    aput v4, v5, v1

    .line 1079
    iget-object v4, v3, Lanb$a;->a:[I

    aget v4, v4, v2

    iget-object v5, v3, Lanb$a;->a:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x100

    .line 1081
    aget-byte v5, p0, v0

    iget-object v6, v3, Lanb$a;->a:[I

    aget v4, v6, v4

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    iput v2, v3, Lanb$a;->b:I

    .line 1084
    iput v1, v3, Lanb$a;->c:I

    :goto_1
    move-object v0, p0

    .line 1028
    :cond_1
    return-object v0

    :cond_2
    move-object p0, v0

    .line 1031
    goto :goto_1
.end method
