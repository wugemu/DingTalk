.class public final Llem;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# instance fields
.field public final a:[C

.field public final b:I

.field public c:I

.field d:I

.field private final e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Llem;->c:I

    .line 18
    iput v0, p0, Llem;->d:I

    .line 19
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Llem;->e:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llem;->a:[C

    .line 24
    iget-object v0, p0, Llem;->a:[C

    array-length v0, v0

    iput v0, p0, Llem;->b:I

    .line 25
    return-void
.end method

.method private a(IILjava/lang/String;)Z
    .locals 9
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 383
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 384
    iget-object v5, p0, Llem;->a:[C

    .line 385
    .local v5, "one":[C
    move v1, p1

    .line 386
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v0, p2

    .line 387
    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-eqz v0, :cond_1

    .line 388
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v7, v5, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 393
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v5    # "one":[C
    :cond_0
    :goto_1
    return v6

    .line 391
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "one":[C
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_2
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 88
    .local v4, "startChar":C
    iget v3, p0, Llem;->c:I

    .local v3, "offset":I
    :goto_0
    iget v5, p0, Llem;->b:I

    if-ge v3, v5, :cond_4

    .line 90
    iget-object v5, p0, Llem;->a:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Llem;->b:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Llem;->a:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 92
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 93
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 94
    .local v2, "last":I
    iget v5, p0, Llem;->b:I

    if-ge v3, v5, :cond_3

    iget v5, p0, Llem;->b:I

    if-gt v2, v5, :cond_3

    .line 95
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Llem;->a:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    if-ne v0, v2, :cond_3

    .line 97
    iget v5, p0, Llem;->c:I

    sub-int v5, v3, v5

    .line 100
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "last":I
    :goto_2
    return v5

    .line 88
    .restart local v0    # "i":I
    .restart local v2    # "last":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    .end local v2    # "last":I
    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public final a(C)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 104
    .line 1072
    iget v2, p0, Llem;->c:I

    :goto_0
    iget v4, p0, Llem;->b:I

    if-ge v2, v4, :cond_1

    .line 1073
    iget-object v4, p0, Llem;->a:[C

    aget-char v4, v4, v2

    if-ne p1, v4, :cond_0

    .line 1074
    iget v4, p0, Llem;->c:I

    sub-int v1, v2, v4

    .line 105
    .local v1, "offset":I
    :goto_1
    if-eq v1, v3, :cond_2

    .line 106
    iget v2, p0, Llem;->c:I

    invoke-virtual {p0, v2, v1}, Llem;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Llem;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Llem;->c:I

    .line 110
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 1072
    .end local v1    # "offset":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1076
    goto :goto_1

    .line 110
    .restart local v1    # "offset":I
    :cond_2
    invoke-virtual {p0}, Llem;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a(II)Ljava/lang/String;
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 347
    iget-object v7, p0, Llem;->a:[C

    .line 348
    .local v7, "val":[C
    iget-object v0, p0, Llem;->e:[Ljava/lang/String;

    .line 351
    .local v0, "cache":[Ljava/lang/String;
    const/16 v8, 0xc

    if-le p2, v8, :cond_1

    .line 352
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 376
    :cond_0
    :goto_0
    return-object v1

    .line 355
    :cond_1
    const/4 v2, 0x0

    .line 356
    .local v2, "hash":I
    move v5, p1

    .line 357
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 358
    mul-int/lit8 v8, v2, 0x1f

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-char v9, v7, v6

    add-int v2, v8, v9

    .line 357
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 362
    :cond_2
    and-int/lit16 v4, v2, 0x1ff

    .line 363
    .local v4, "index":I
    aget-object v1, v0, v4

    .line 365
    .local v1, "cached":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 366
    new-instance v1, Ljava/lang/String;

    .end local v1    # "cached":Ljava/lang/String;
    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 367
    .restart local v1    # "cached":Ljava/lang/String;
    aput-object v1, v0, v4

    goto :goto_0

    .line 369
    :cond_3
    invoke-direct {p0, p1, p2, v1}, Llem;->a(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 373
    new-instance v1, Ljava/lang/String;

    .end local v1    # "cached":Ljava/lang/String;
    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .restart local v1    # "cached":Ljava/lang/String;
    goto :goto_0
.end method

.method public final varargs a([C)Ljava/lang/String;
    .locals 8
    .param p1, "chars"    # [C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 126
    iget v5, p0, Llem;->c:I

    .line 127
    .local v5, "start":I
    iget v4, p0, Llem;->b:I

    .line 129
    .local v4, "remaining":I
    :goto_0
    iget v6, p0, Llem;->c:I

    if-ge v6, v4, :cond_1

    .line 130
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 131
    .local v1, "c":C
    iget-object v6, p0, Llem;->a:[C

    iget v7, p0, Llem;->c:I

    aget-char v6, v6, v7

    if-eq v6, v1, :cond_1

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "c":C
    :cond_0
    iget v6, p0, Llem;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Llem;->c:I

    goto :goto_0

    .line 137
    .end local v0    # "arr$":[C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget v6, p0, Llem;->c:I

    if-le v6, v5, :cond_2

    iget v6, p0, Llem;->c:I

    sub-int/2addr v6, v5

    invoke-virtual {p0, v5, v6}, Llem;->a(II)Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6

    :cond_2
    const-string/jumbo v6, ""

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    iget v0, p0, Llem;->c:I

    iget v1, p0, Llem;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    .line 1255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1256
    iget v2, p0, Llem;->b:I

    iget v4, p0, Llem;->c:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_0

    move v2, v1

    .line 310
    :goto_0
    if-eqz v2, :cond_3

    .line 311
    iget v1, p0, Llem;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Llem;->c:I

    .line 314
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1259
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1260
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Llem;->a:[C

    iget v6, p0, Llem;->c:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_1

    move v2, v1

    .line 1261
    goto :goto_0

    .line 1259
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 1262
    goto :goto_0

    :cond_3
    move v0, v1

    .line 314
    goto :goto_1
.end method

.method public final b()C
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    iget v0, p0, Llem;->c:I

    iget v1, p0, Llem;->b:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llem;->a:[C

    iget v1, p0, Llem;->c:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public final varargs b([C)Ljava/lang/String;
    .locals 4
    .param p1, "chars"    # [C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    iget v1, p0, Llem;->c:I

    .line 142
    .local v1, "start":I
    iget v0, p0, Llem;->b:I

    .line 143
    .local v0, "remaining":I
    iget-object v2, p0, Llem;->a:[C

    .line 145
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Llem;->c:I

    if-ge v3, v0, :cond_0

    .line 146
    iget v3, p0, Llem;->c:I

    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-gez v3, :cond_0

    .line 148
    iget v3, p0, Llem;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llem;->c:I

    goto :goto_0

    .line 151
    :cond_0
    iget v3, p0, Llem;->c:I

    if-le v3, v1, :cond_1

    iget v3, p0, Llem;->c:I

    sub-int/2addr v3, v1

    invoke-virtual {p0, v1, v3}, Llem;->a(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method public final b(C)Z
    .locals 2
    .param p1, "c"    # C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 250
    invoke-virtual {p0}, Llem;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llem;->a:[C

    iget v1, p0, Llem;->c:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    .line 1266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1267
    iget v2, p0, Llem;->b:I

    iget v4, p0, Llem;->c:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_0

    move v2, v1

    .line 319
    :goto_0
    if-eqz v2, :cond_3

    .line 320
    iget v1, p0, Llem;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Llem;->c:I

    .line 323
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1270
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1271
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1272
    iget-object v5, p0, Llem;->a:[C

    iget v6, p0, Llem;->c:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1273
    if-eq v4, v5, :cond_1

    move v2, v1

    .line 1274
    goto :goto_0

    .line 1270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 1276
    goto :goto_0

    :cond_3
    move v0, v1

    .line 323
    goto :goto_1
.end method

.method public final c()C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    iget v1, p0, Llem;->c:I

    iget v2, p0, Llem;->b:I

    if-lt v1, v2, :cond_0

    const v0, 0xffff

    .line 41
    .local v0, "val":C
    :goto_0
    iget v1, p0, Llem;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llem;->c:I

    .line 42
    return v0

    .line 40
    .end local v0    # "val":C
    :cond_0
    iget-object v1, p0, Llem;->a:[C

    iget v2, p0, Llem;->c:I

    aget-char v0, v1, v2

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 329
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "loScan":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v1}, Llem;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p0, v0}, Llem;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final varargs c([C)Z
    .locals 8
    .param p1, "seq"    # [C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 280
    invoke-virtual {p0}, Llem;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v5

    .line 283
    :cond_1
    iget-object v6, p0, Llem;->a:[C

    iget v7, p0, Llem;->c:I

    aget-char v1, v6, v7

    .line 284
    .local v1, "c":C
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v4, v0, v2

    .line 285
    .local v4, "seek":C
    if-ne v4, v1, :cond_2

    .line 286
    const/4 v5, 0x1

    goto :goto_0

    .line 284
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Llem;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llem;->c:I

    .line 47
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Llem;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llem;->c:I

    .line 51
    return-void
.end method

.method final f()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Llem;->d:I

    iput v0, p0, Llem;->c:I

    .line 59
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    iget v1, p0, Llem;->c:I

    iget v2, p0, Llem;->b:I

    iget v3, p0, Llem;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Llem;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Llem;->b:I

    iput v1, p0, Llem;->c:I

    .line 189
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 193
    iget v1, p0, Llem;->c:I

    .line 194
    .local v1, "start":I
    :goto_0
    iget v2, p0, Llem;->c:I

    iget v3, p0, Llem;->b:I

    if-ge v2, v3, :cond_2

    .line 195
    iget-object v2, p0, Llem;->a:[C

    iget v3, p0, Llem;->c:I

    aget-char v0, v2, v3

    .line 196
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 197
    :cond_1
    iget v2, p0, Llem;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Llem;->c:I

    goto :goto_0

    .line 202
    .end local v0    # "c":C
    :cond_2
    iget v2, p0, Llem;->c:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Llem;->a(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final i()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Llem;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    iget-object v2, p0, Llem;->a:[C

    iget v3, p0, Llem;->c:I

    aget-char v0, v2, v3

    .line 299
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Llem;->a:[C

    iget v2, p0, Llem;->c:I

    iget v3, p0, Llem;->b:I

    iget v4, p0, Llem;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
