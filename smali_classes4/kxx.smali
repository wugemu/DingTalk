.class public final Lkxx;
.super Lkyc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkyc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkvn;Ljava/lang/String;)Lkvm;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x61

    const/4 v0, 0x0

    .line 0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    .line 1000
    :try_start_0
    invoke-static {p2}, Llbd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v3, v5, :cond_0

    add-int/lit8 v3, v3, -0x30

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-byte v3, v2, v0

    add-int/lit8 v4, v4, -0x30

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can\'t recode value for oid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2000
    iget-object v2, p1, Lkvn;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_1
    :try_start_1
    aget-byte v3, v2, v0

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_2

    :cond_2
    new-instance v0, Lktw;

    invoke-direct {v0, v2}, Lktw;-><init>([B)V

    invoke-virtual {v0}, Lktw;->a()Lkvm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 0
    :goto_3
    return-object v0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    sget-object v0, Lkyb;->D:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lkyb;->H:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Lkvi;

    invoke-direct {v0, p2}, Lkvi;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lkyb;->t:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lkvh;

    invoke-direct {v0, p2}, Lkvh;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object v0, Lkyb;->a:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lkyb;->f:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lkyb;->r:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lkyb;->B:Lkvn;

    invoke-virtual {p1, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-instance v0, Lkvr;

    invoke-direct {v0, p2}, Lkvr;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lkwa;

    invoke-direct {v0, p2}, Lkwa;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method
