.class public final Lfx;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:[I

.field public c:I

.field private e:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfx;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lfx;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lfx;->a:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object v0, Lfm;->a:[I

    iput-object v0, p0, Lfx;->b:[I

    .line 48
    sget-object v0, Lfm;->c:[Ljava/lang/Object;

    iput-object v0, p0, Lfx;->e:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v1, p0, Lfx;->c:I

    .line 55
    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Lfm;->a(I)I

    move-result p1

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Lfx;->b:[I

    .line 52
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lfx;->e:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()Lfx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfx",
            "<TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "clone":Lfx;, "Lfx<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfx;

    move-object v1, v0

    .line 63
    iget-object v2, p0, Lfx;->b:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lfx;->b:[I

    .line 64
    iget-object v2, p0, Lfx;->e:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Lfx;->e:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    .line 1085
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget-object v0, p0, Lfx;->b:[I

    iget v1, p0, Lfx;->c:I

    invoke-static {v0, v1, p1}, Lfm;->a([III)I

    move-result v0

    .line 1087
    if-ltz v0, :cond_0

    iget-object v1, p0, Lfx;->e:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lfx;->d:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 1088
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1090
    :cond_1
    iget-object v1, p0, Lfx;->e:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 141
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget v2, p0, Lfx;->c:I

    .line 142
    .local v2, "n":I
    const/4 v3, 0x0

    .line 143
    .local v3, "o":I
    iget-object v1, p0, Lfx;->b:[I

    .line 144
    .local v1, "keys":[I
    iget-object v5, p0, Lfx;->e:[Ljava/lang/Object;

    .line 146
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 147
    aget-object v4, v5, v0

    .line 149
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Lfx;->d:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 150
    if-eq v0, v3, :cond_0

    .line 151
    aget v6, v1, v0

    aput v6, v1, v3

    .line 152
    aput-object v4, v5, v3

    .line 153
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 156
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lfx;->a:Z

    .line 161
    iput v3, p0, Lfx;->c:I

    .line 164
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 172
    iget-object v4, p0, Lfx;->b:[I

    iget v5, p0, Lfx;->c:I

    invoke-static {v4, v5, p1}, Lfm;->a([III)I

    move-result v0

    .line 174
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 175
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 216
    :goto_0
    return-void

    .line 177
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 179
    iget v4, p0, Lfx;->c:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lfx;->d:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 180
    iget-object v4, p0, Lfx;->b:[I

    aput p1, v4, v0

    .line 181
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 185
    :cond_1
    iget-boolean v4, p0, Lfx;->a:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lfx;->c:I

    iget-object v5, p0, Lfx;->b:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 186
    invoke-virtual {p0}, Lfx;->a()V

    .line 189
    iget-object v4, p0, Lfx;->b:[I

    iget v5, p0, Lfx;->c:I

    invoke-static {v4, v5, p1}, Lfm;->a([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 192
    :cond_2
    iget v4, p0, Lfx;->c:I

    iget-object v5, p0, Lfx;->b:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 193
    iget v4, p0, Lfx;->c:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lfm;->a(I)I

    move-result v1

    .line 195
    .local v1, "n":I
    new-array v2, v1, [I

    .line 196
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 199
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lfx;->b:[I

    iget-object v5, p0, Lfx;->b:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    iget-object v5, p0, Lfx;->e:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Lfx;->b:[I

    .line 203
    iput-object v3, p0, Lfx;->e:[Ljava/lang/Object;

    .line 206
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lfx;->c:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 208
    iget-object v4, p0, Lfx;->b:[I

    iget-object v5, p0, Lfx;->b:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lfx;->c:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    iget-object v5, p0, Lfx;->e:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lfx;->c:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    iget-object v4, p0, Lfx;->b:[I

    aput p1, v4, v0

    .line 213
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 214
    iget v4, p0, Lfx;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfx;->c:I

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget-boolean v0, p0, Lfx;->a:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lfx;->a()V

    .line 227
    :cond_0
    iget v0, p0, Lfx;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 3
    .param p1, "key"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 112
    .line 1098
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget-object v0, p0, Lfx;->b:[I

    iget v1, p0, Lfx;->c:I

    invoke-static {v0, v1, p1}, Lfm;->a([III)I

    move-result v0

    .line 1100
    if-ltz v0, :cond_0

    .line 1101
    iget-object v1, p0, Lfx;->e:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lfx;->d:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 1102
    iget-object v1, p0, Lfx;->e:[Ljava/lang/Object;

    sget-object v2, Lfx;->d:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfx;->a:Z

    .line 113
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 325
    iget v4, p0, Lfx;->c:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lfx;->b:[I

    iget v5, p0, Lfx;->c:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 326
    invoke-virtual {p0, p1, p2}, Lfx;->a(ILjava/lang/Object;)V

    .line 352
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-boolean v4, p0, Lfx;->a:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lfx;->c:I

    iget-object v5, p0, Lfx;->b:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 331
    invoke-virtual {p0}, Lfx;->a()V

    .line 334
    :cond_1
    iget v3, p0, Lfx;->c:I

    .line 335
    .local v3, "pos":I
    iget-object v4, p0, Lfx;->b:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 336
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lfm;->a(I)I

    move-result v0

    .line 338
    .local v0, "n":I
    new-array v1, v0, [I

    .line 339
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 342
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lfx;->b:[I

    iget-object v5, p0, Lfx;->b:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    iget-object v5, p0, Lfx;->e:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v1, p0, Lfx;->b:[I

    .line 346
    iput-object v2, p0, Lfx;->e:[Ljava/lang/Object;

    .line 349
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lfx;->b:[I

    aput p1, v4, v3

    .line 350
    iget-object v4, p0, Lfx;->e:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 351
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfx;->c:I

    goto :goto_0
.end method

.method public final c(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 236
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget-boolean v0, p0, Lfx;->a:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lfx;->a()V

    .line 240
    :cond_0
    iget-object v0, p0, Lfx;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    const/4 v4, 0x0

    .line 309
    iget v1, p0, Lfx;->c:I

    .line 310
    .local v1, "n":I
    iget-object v2, p0, Lfx;->e:[Ljava/lang/Object;

    .line 312
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 313
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iput v4, p0, Lfx;->c:I

    .line 317
    iput-boolean v4, p0, Lfx;->a:Z

    .line 318
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    invoke-direct {p0}, Lfx;->d()Lfx;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    iget-boolean v0, p0, Lfx;->a:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lfx;->a()V

    .line 254
    :cond_0
    iget-object v0, p0, Lfx;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 363
    .local p0, "this":Lfx;, "Lfx<TE;>;"
    invoke-virtual {p0}, Lfx;->b()I

    move-result v4

    if-gtz v4, :cond_0

    .line 364
    const-string/jumbo v4, "{}"

    .line 384
    :goto_0
    return-object v4

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lfx;->c:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lfx;->c:I

    if-ge v1, v4, :cond_3

    .line 370
    if-lez v1, :cond_1

    .line 371
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    invoke-virtual {p0, v1}, Lfx;->c(I)I

    move-result v2

    .line 374
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_2
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 383
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
