.class public final Ller;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Ller;->b:I

    .line 22
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Ller;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private g()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Ller;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ller;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(CC)Ljava/lang/String;
    .locals 6
    .param p1, "open"    # C
    .param p2, "close"    # C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    const/4 v4, -0x1

    .line 264
    .local v4, "start":I
    const/4 v2, -0x1

    .line 265
    .local v2, "end":I
    const/4 v1, 0x0

    .line 266
    .local v1, "depth":I
    const/4 v3, 0x0

    .line 269
    .local v3, "last":C
    :cond_0
    invoke-virtual {p0}, Ller;->a()Z

    move-result v5

    if-nez v5, :cond_4

    .line 270
    invoke-virtual {p0}, Ller;->c()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 271
    .local v0, "c":Ljava/lang/Character;
    if-eqz v3, :cond_1

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_2

    .line 272
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 275
    iget v4, p0, Ller;->b:I

    .line 281
    :cond_2
    :goto_0
    if-lez v1, :cond_3

    if-eqz v3, :cond_3

    .line 282
    iget v2, p0, Ller;->b:I

    .line 283
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 284
    if-gtz v1, :cond_0

    .line 285
    .end local v0    # "c":Ljava/lang/Character;
    :cond_4
    if-ltz v2, :cond_6

    iget-object v5, p0, Ller;->a:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 277
    .restart local v0    # "c":Ljava/lang/Character;
    :cond_5
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 285
    .end local v0    # "c":Ljava/lang/Character;
    :cond_6
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ller;->g()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Ller;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Ller;->b:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final varargs a([C)Z
    .locals 7
    .param p1, "seq"    # [C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0}, Ller;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 101
    .local v1, "c":C
    iget-object v5, p0, Ller;->a:Ljava/lang/String;

    iget v6, p0, Ller;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_2

    .line 102
    const/4 v4, 0x1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final varargs a([Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 90
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ller;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    const/4 v4, 0x1

    .line 93
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 89
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    invoke-virtual {p0}, Ller;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ller;->a:Ljava/lang/String;

    iget v1, p0, Ller;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Ller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Ller;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ller;->b:I

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Ller;->a:Ljava/lang/String;

    iget v1, p0, Ller;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ller;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Ller;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Queue did not match expected sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, "len":I
    invoke-direct {p0}, Ller;->g()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    iget v1, p0, Ller;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Ller;->b:I

    .line 173
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 242
    .line 1181
    iget-object v1, p0, Ller;->a:Ljava/lang/String;

    iget v2, p0, Ller;->b:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1182
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1183
    iget-object v2, p0, Ller;->a:Ljava/lang/String;

    iget v3, p0, Ller;->b:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1184
    iget v1, p0, Ller;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ller;->b:I

    .line 243
    .local v0, "data":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Ller;->b(Ljava/lang/String;)Z

    .line 244
    return-object v0

    .line 1187
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ller;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 2132
    .local v0, "seen":Z
    :goto_0
    invoke-virtual {p0}, Ller;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ller;->a:Ljava/lang/String;

    iget v2, p0, Ller;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Llea;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 314
    :goto_1
    if-eqz v1, :cond_1

    .line 315
    iget v1, p0, Ller;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ller;->b:I

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 2132
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 318
    :cond_1
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 364
    iget v0, p0, Ller;->b:I

    .line 365
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Ller;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ller;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Ller;->a([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    iget v1, p0, Ller;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ller;->b:I

    goto :goto_0

    .line 368
    :cond_1
    iget-object v1, p0, Ller;->a:Ljava/lang/String;

    iget v2, p0, Ller;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    nop

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 388
    iget-object v1, p0, Ller;->a:Ljava/lang/String;

    iget v2, p0, Ller;->b:I

    iget-object v3, p0, Ller;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "remainder":Ljava/lang/String;
    iget-object v1, p0, Ller;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Ller;->b:I

    .line 390
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 395
    iget-object v0, p0, Ller;->a:Ljava/lang/String;

    iget v1, p0, Ller;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
