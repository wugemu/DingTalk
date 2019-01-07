.class public final Lfl;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field static a:[Ljava/lang/Object;

.field static b:I

.field static c:[Ljava/lang/Object;

.field static d:I

.field private static final j:[I

.field private static final k:[Ljava/lang/Object;


# instance fields
.field final e:Z

.field f:[I

.field public g:[Ljava/lang/Object;

.field h:I

.field i:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-array v0, v1, [I

    sput-object v0, Lfl;->j:[I

    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lfl;->k:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0, v0}, Lfl;-><init>(IZ)V

    .line 242
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean v1, p0, Lfl;->e:Z

    .line 255
    sget-object v0, Lfl;->j:[I

    iput-object v0, p0, Lfl;->f:[I

    .line 256
    sget-object v0, Lfl;->k:[Ljava/lang/Object;

    iput-object v0, p0, Lfl;->g:[Ljava/lang/Object;

    .line 260
    iput v1, p0, Lfl;->h:I

    .line 261
    return-void
.end method

.method private a()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 122
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget v0, p0, Lfl;->h:I

    .line 125
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 126
    const/4 v3, -0x1

    .line 156
    :cond_0
    :goto_0
    return v3

    .line 129
    :cond_1
    iget-object v4, p0, Lfl;->f:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lfm;->a([III)I

    move-result v3

    .line 132
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 137
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 143
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lfl;->f:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 144
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lfl;->f:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 149
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 148
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 156
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget v0, p0, Lfl;->h:I

    .line 87
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 88
    const/4 v3, -0x1

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    iget-object v4, p0, Lfl;->f:[I

    invoke-static {v4, v0, p2}, Lfm;->a([III)I

    move-result v3

    .line 94
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 99
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lfl;->f:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 106
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 105
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lfl;->f:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 111
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 110
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 118
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 201
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 202
    const-class v2, Lfl;

    monitor-enter v2

    .line 203
    :try_start_0
    sget v1, Lfl;->d:I

    if-ge v1, v3, :cond_1

    .line 204
    const/4 v1, 0x0

    sget-object v3, Lfl;->c:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 205
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 206
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 207
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    :cond_0
    sput-object p1, Lfl;->c:[Ljava/lang/Object;

    .line 210
    sget v1, Lfl;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfl;->d:I

    .line 216
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 234
    :cond_2
    :goto_1
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 217
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 218
    const-class v2, Lfl;

    monitor-enter v2

    .line 219
    :try_start_1
    sget v1, Lfl;->b:I

    if-ge v1, v3, :cond_5

    .line 220
    const/4 v1, 0x0

    sget-object v3, Lfl;->a:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 221
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 222
    add-int/lit8 v0, p2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 223
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 225
    :cond_4
    sput-object p1, Lfl;->a:[Ljava/lang/Object;

    .line 226
    sget v1, Lfl;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfl;->b:I

    .line 232
    .end local v0    # "i":I
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private b(I)V
    .locals 5
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 161
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 162
    const-class v2, Lfl;

    monitor-enter v2

    .line 163
    :try_start_0
    sget-object v1, Lfl;->c:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 164
    sget-object v0, Lfl;->c:[Ljava/lang/Object;

    .line 165
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Lfl;->g:[Ljava/lang/Object;

    .line 166
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lfl;->c:[Ljava/lang/Object;

    .line 167
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lfl;->f:[I

    .line 168
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 169
    sget v1, Lfl;->d:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfl;->d:I

    .line 174
    monitor-exit v2

    .line 197
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 176
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :goto_1
    new-array v1, p1, [I

    iput-object v1, p0, Lfl;->f:[I

    .line 196
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lfl;->g:[Ljava/lang/Object;

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 177
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 178
    const-class v2, Lfl;

    monitor-enter v2

    .line 179
    :try_start_2
    sget-object v1, Lfl;->a:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 180
    sget-object v0, Lfl;->a:[Ljava/lang/Object;

    .line 181
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Lfl;->g:[Ljava/lang/Object;

    .line 182
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lfl;->a:[Ljava/lang/Object;

    .line 183
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lfl;->f:[I

    .line 184
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 185
    sget v1, Lfl;->b:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfl;->b:I

    .line 190
    monitor-exit v2

    goto :goto_0

    .line 192
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 329
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lfl;->a()I

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-boolean v0, p0, Lfl;->e:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lfl;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 480
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v3, v4, p1

    .line 481
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Lfl;->h:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 484
    iget-object v4, p0, Lfl;->f:[I

    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    iget v6, p0, Lfl;->h:I

    invoke-static {v4, v5, v6}, Lfl;->a([I[Ljava/lang/Object;I)V

    .line 485
    sget-object v4, Lfl;->j:[I

    iput-object v4, p0, Lfl;->f:[I

    .line 486
    sget-object v4, Lfl;->k:[Ljava/lang/Object;

    iput-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    .line 487
    iput v7, p0, Lfl;->h:I

    .line 527
    :cond_0
    :goto_0
    return-object v3

    .line 489
    :cond_1
    iget-object v4, p0, Lfl;->f:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Lfl;->h:I

    iget-object v5, p0, Lfl;->f:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 493
    iget v4, p0, Lfl;->h:I

    if-le v4, v0, :cond_2

    iget v4, p0, Lfl;->h:I

    iget v5, p0, Lfl;->h:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 497
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Lfl;->f:[I

    .line 498
    .local v2, "ohashes":[I
    iget-object v1, p0, Lfl;->g:[Ljava/lang/Object;

    .line 499
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lfl;->b(I)V

    .line 501
    iget v4, p0, Lfl;->h:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lfl;->h:I

    .line 502
    if-lez p1, :cond_3

    .line 504
    iget-object v4, p0, Lfl;->f:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    :cond_3
    iget v4, p0, Lfl;->h:I

    if-ge p1, v4, :cond_0

    .line 512
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lfl;->f:[I

    iget v6, p0, Lfl;->h:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    iget v6, p0, Lfl;->h:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 516
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Lfl;->h:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lfl;->h:I

    .line 517
    iget v4, p0, Lfl;->h:I

    if-ge p1, v4, :cond_5

    .line 521
    iget-object v4, p0, Lfl;->f:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lfl;->f:[I

    iget v7, p0, Lfl;->h:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lfl;->g:[Ljava/lang/Object;

    iget v7, p0, Lfl;->h:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    :cond_5
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    iget v5, p0, Lfl;->h:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 363
    if-nez p1, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "hash":I
    invoke-direct {p0}, Lfl;->a()I

    move-result v1

    .line 370
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    move v5, v6

    .line 405
    :goto_1
    return v5

    .line 367
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    iget-boolean v7, p0, Lfl;->e:Z

    if-eqz v7, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 368
    .restart local v0    # "hash":I
    :goto_2
    invoke-direct {p0, p1, v0}, Lfl;->a(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 367
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    .line 374
    .restart local v0    # "hash":I
    .restart local v1    # "index":I
    :cond_2
    xor-int/lit8 v1, v1, -0x1

    .line 375
    iget v7, p0, Lfl;->h:I

    iget-object v8, p0, Lfl;->f:[I

    array-length v8, v8

    if-lt v7, v8, :cond_5

    .line 376
    iget v7, p0, Lfl;->h:I

    if-lt v7, v2, :cond_7

    iget v5, p0, Lfl;->h:I

    iget v7, p0, Lfl;->h:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v5, v7

    .line 381
    .local v2, "n":I
    :cond_3
    :goto_3
    iget-object v4, p0, Lfl;->f:[I

    .line 382
    .local v4, "ohashes":[I
    iget-object v3, p0, Lfl;->g:[Ljava/lang/Object;

    .line 383
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lfl;->b(I)V

    .line 385
    iget-object v5, p0, Lfl;->f:[I

    array-length v5, v5

    if-lez v5, :cond_4

    .line 387
    iget-object v5, p0, Lfl;->f:[I

    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    :cond_4
    iget v5, p0, Lfl;->h:I

    invoke-static {v4, v3, v5}, Lfl;->a([I[Ljava/lang/Object;I)V

    .line 394
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_5
    iget v5, p0, Lfl;->h:I

    if-ge v1, v5, :cond_6

    .line 398
    iget-object v5, p0, Lfl;->f:[I

    iget-object v6, p0, Lfl;->f:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lfl;->h:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    iget-object v6, p0, Lfl;->g:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lfl;->h:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_6
    iget-object v5, p0, Lfl;->f:[I

    aput v0, v5, v1

    .line 403
    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 404
    iget v5, p0, Lfl;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfl;->h:I

    .line 405
    const/4 v5, 0x1

    goto :goto_1

    .line 376
    :cond_7
    iget v7, p0, Lfl;->h:I

    if-ge v7, v5, :cond_3

    move v2, v5

    goto :goto_3
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    .line 751
    iget v2, p0, Lfl;->h:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 3299
    iget-object v3, p0, Lfl;->f:[I

    array-length v3, v3

    if-ge v3, v2, :cond_1

    .line 3300
    iget-object v3, p0, Lfl;->f:[I

    .line 3301
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    .line 3302
    invoke-direct {p0, v2}, Lfl;->b(I)V

    .line 3303
    iget v2, p0, Lfl;->h:I

    if-lez v2, :cond_0

    .line 3304
    iget-object v2, p0, Lfl;->f:[I

    iget v5, p0, Lfl;->h:I

    invoke-static {v3, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3305
    iget-object v2, p0, Lfl;->g:[Ljava/lang/Object;

    iget v5, p0, Lfl;->h:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3307
    :cond_0
    iget v2, p0, Lfl;->h:I

    invoke-static {v3, v4, v2}, Lfl;->a([I[Ljava/lang/Object;I)V

    .line 752
    :cond_1
    const/4 v0, 0x0

    .line 753
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 754
    .local v1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lfl;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 755
    goto :goto_0

    .line 756
    .end local v1    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    return v0
.end method

.method public final clear()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 286
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget v0, p0, Lfl;->h:I

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lfl;->f:[I

    iget-object v1, p0, Lfl;->g:[Ljava/lang/Object;

    iget v2, p0, Lfl;->h:I

    invoke-static {v0, v1, v2}, Lfl;->a([I[Ljava/lang/Object;I)V

    .line 288
    sget-object v0, Lfl;->j:[I

    iput-object v0, p0, Lfl;->f:[I

    .line 289
    sget-object v0, Lfl;->k:[Ljava/lang/Object;

    iput-object v0, p0, Lfl;->g:[Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lfl;->h:I

    .line 292
    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    invoke-virtual {p0, p1}, Lfl;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 736
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 737
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfl;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    const/4 v1, 0x0

    .line 742
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 590
    if-ne p0, p1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v3

    .line 593
    :cond_1
    instance-of v5, p1, Ljava/util/Set;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 594
    check-cast v2, Ljava/util/Set;

    .line 595
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lfl;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v3, v4

    .line 596
    goto :goto_0

    .line 600
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v5, p0, Lfl;->h:I

    if-ge v0, v5, :cond_0

    .line 1339
    iget-object v5, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v1, v5, v0

    .line 602
    .local v1, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 603
    goto :goto_0

    .line 600
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 607
    .end local v1    # "mine":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v3

    move v3, v4

    goto :goto_0

    .line 609
    :catch_1
    move-exception v3

    move v3, v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    move v3, v4

    .line 613
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 621
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget-object v0, p0, Lfl;->f:[I

    .line 622
    .local v0, "hashes":[I
    const/4 v2, 0x0

    .line 623
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Lfl;->h:I

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 624
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget v0, p0, Lfl;->h:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 725
    .line 2665
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget-object v0, p0, Lfl;->i:Lfr;

    if-nez v0, :cond_0

    .line 2666
    new-instance v0, Lfl$1;

    invoke-direct {v0, p0}, Lfl$1;-><init>(Lfl;)V

    iput-object v0, p0, Lfl;->i:Lfr;

    .line 2713
    :cond_0
    iget-object v0, p0, Lfl;->i:Lfr;

    .line 725
    invoke-virtual {v0}, Lfr;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 466
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    invoke-virtual {p0, p1}, Lfl;->a(Ljava/lang/Object;)I

    move-result v0

    .line 467
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 468
    invoke-virtual {p0, v0}, Lfl;->a(I)Ljava/lang/Object;

    .line 469
    const/4 v1, 0x1

    .line 471
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 766
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 767
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 768
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lfl;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 769
    goto :goto_0

    .line 770
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 781
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 782
    .local v1, "removed":Z
    iget v2, p0, Lfl;->h:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 783
    iget-object v2, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    invoke-virtual {p0, v0}, Lfl;->a(I)Ljava/lang/Object;

    .line 785
    const/4 v1, 0x1

    .line 782
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 788
    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 555
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    iget v0, p0, Lfl;->h:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    const/4 v3, 0x0

    .line 560
    iget v1, p0, Lfl;->h:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 561
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Lfl;->g:[Ljava/lang/Object;

    iget v2, p0, Lfl;->h:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 567
    array-length v1, p1

    iget v2, p0, Lfl;->h:I

    if-ge v1, v2, :cond_0

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lfl;->h:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 570
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 572
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Lfl;->g:[Ljava/lang/Object;

    iget v2, p0, Lfl;->h:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    array-length v1, p1

    iget v2, p0, Lfl;->h:I

    if-le v1, v2, :cond_1

    .line 574
    iget v1, p0, Lfl;->h:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 576
    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 638
    .local p0, "this":Lfl;, "Lfl<TE;>;"
    invoke-virtual {p0}, Lfl;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    const-string/jumbo v3, "{}"

    .line 656
    :goto_0
    return-object v3

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lfl;->h:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 643
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lfl;->h:I

    if-ge v1, v3, :cond_3

    .line 645
    if-lez v1, :cond_1

    .line 646
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    :cond_1
    iget-object v3, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 649
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 652
    :cond_2
    const-string/jumbo v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 655
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
