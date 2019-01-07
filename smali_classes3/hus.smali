.class public final Lhus;
.super Ljava/lang/Object;
.source "RestBaseRequestAuthentication.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;
    .param p3, "isEncode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhus;->a:Z

    .line 24
    iput-object v1, p0, Lhus;->b:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lhus;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lhus;->d:[B

    .line 48
    iput-object p1, p0, Lhus;->b:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lhus;->c:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lhus;->a:Z

    .line 51
    return-void
.end method

.method private static a([B[B)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # [B
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 58
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v2, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 60
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 61
    .local v1, "result":[B
    invoke-static {v1}, Lhuz;->a([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lhus;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhus;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 78
    :cond_0
    const-string/jumbo v2, "There is no appkey,please check it!"

    .line 1029
    const-string/jumbo v3, "RestApi"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 96
    :goto_0
    return-object v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move-object v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    const-string/jumbo v0, ""

    .line 88
    .local v0, "lHex2":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lhus;->a:Z

    if-eqz v2, :cond_3

    .line 89
    iget-object v1, p0, Lhus;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lhus;->a([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v2, p0, Lhus;->d:[B

    if-nez v2, :cond_6

    .line 1101
    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 2016
    const-string/jumbo v3, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    .line 2021
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 2022
    invoke-static {v3}, Lhva;->a(Ljava/lang/String;)Lhva$a;

    move-result-object v5

    .line 2023
    if-eqz v5, :cond_5

    .line 2061
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    .line 2066
    iget v4, v5, Lhva$a;->b:I

    .line 2067
    iget v3, v5, Lhva$a;->c:I

    .line 2069
    const/4 v1, 0x0

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 2071
    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v4, v4, 0x100

    .line 2072
    iget-object v6, v5, Lhva$a;->a:[I

    aget v6, v6, v4

    add-int/2addr v3, v6

    rem-int/lit16 v3, v3, 0x100

    .line 2073
    iget-object v6, v5, Lhva$a;->a:[I

    aget v6, v6, v4

    .line 2074
    iget-object v7, v5, Lhva$a;->a:[I

    iget-object v8, v5, Lhva$a;->a:[I

    aget v8, v8, v3

    aput v8, v7, v4

    .line 2075
    iget-object v7, v5, Lhva$a;->a:[I

    aput v6, v7, v3

    .line 2076
    iget-object v6, v5, Lhva$a;->a:[I

    aget v6, v6, v4

    iget-object v7, v5, Lhva$a;->a:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    rem-int/lit16 v6, v6, 0x100

    .line 2078
    aget-byte v7, v2, v1

    iget-object v8, v5, Lhva$a;->a:[I

    aget v6, v8, v6

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 2069
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2080
    :cond_4
    iput v4, v5, Lhva$a;->b:I

    .line 2081
    iput v3, v5, Lhva$a;->c:I

    move-object v1, v2

    .line 1104
    :cond_5
    iput-object v1, p0, Lhus;->d:[B

    .line 1106
    :cond_6
    iget-object v1, p0, Lhus;->d:[B

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lhus;->a([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1101
    :array_0
    .array-data 1
        0x42t
        0x25t
        0x2at
        -0x77t
        0x76t
        -0x68t
        -0x1et
        0x4t
        -0x5ft
        0xft
        -0x1at
        -0xct
        -0x4bt
        -0x66t
        0x47t
        0x17t
        -0x3t
        -0x78t
        -0x1t
        -0x39t
        0x2at
        0x63t
        -0x10t
        -0x65t
        0x67t
        -0x4at
        0x5dt
        -0x72t
        0x70t
        -0x1at
        -0x18t
        -0x18t
    .end array-data
.end method
