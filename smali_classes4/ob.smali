.class public final Lob;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lob;-><init>(I)V

    .line 45
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lob;->a:[J

    .line 57
    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lob;->a:[J

    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 211
    .line 1481
    shr-int/lit8 v1, p1, 0x6

    .line 212
    iget-object v2, p0, Lob;->a:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lob;->a:[J

    aget-wide v2, v2, v1

    .line 2089
    and-int/lit8 v1, p1, 0x3f

    .line 2090
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    .line 213
    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()[I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 327
    .line 2122
    iget-object v0, p0, Lob;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 2123
    iget-object v2, p0, Lob;->a:[J

    aget-wide v4, v2, v3

    .line 2124
    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 2125
    const/16 v2, 0x3f

    :goto_1
    if-ltz v2, :cond_1

    .line 2126
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 2127
    add-int/lit8 v0, v0, 0x1

    .line 2125
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2122
    :cond_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    .line 327
    :cond_2
    new-array v3, v0, [I

    move v0, v1

    .line 329
    :goto_2
    iget-object v2, p0, Lob;->a:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v0, v2, :cond_4

    .line 330
    invoke-virtual {p0, v0}, Lob;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    add-int/lit8 v2, v1, 0x1

    aput v0, v3, v1

    move v1, v2

    .line 329
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 334
    :cond_4
    return-object v3
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 110
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob;

    .line 111
    iget-object v1, p0, Lob;->a:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lob;->a:[J

    .line 112
    iget-object v1, p0, Lob;->a:[J

    const/4 v2, 0x0

    iget-object v3, v0, Lob;->a:[J

    const/4 v4, 0x0

    iget-object v5, p0, Lob;->a:[J

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_0

    instance-of v1, p1, Lob;

    if-eqz v1, :cond_0

    .line 138
    check-cast p1, Lob;

    .line 140
    iget-object v1, p0, Lob;->a:[J

    array-length v1, v1

    iget-object v2, p1, Lob;->a:[J

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    .line 141
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 142
    iget-object v1, p0, Lob;->a:[J

    aget-wide v4, v1, v2

    iget-object v1, p1, Lob;->a:[J

    aget-wide v6, v1, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 162
    :cond_0
    :goto_1
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lob;->a:[J

    array-length v1, v1

    if-le v1, v3, :cond_2

    .line 147
    iget-object v1, p0, Lob;->a:[J

    array-length v1, v1

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-le v1, v3, :cond_3

    .line 148
    iget-object v1, p0, Lob;->a:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_2

    .line 153
    :cond_2
    iget-object v1, p1, Lob;->a:[J

    array-length v1, v1

    if-le v1, v3, :cond_3

    .line 154
    iget-object v1, p1, Lob;->a:[J

    array-length v1, v1

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-le v1, v3, :cond_3

    .line 155
    iget-object v1, p1, Lob;->a:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_3

    .line 160
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 342
    const-string/jumbo v2, ","

    .line 2350
    const-string/jumbo v1, ""

    .line 2351
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget-object v3, p0, Lob;->a:[J

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v1, v3, :cond_2

    .line 2352
    invoke-virtual {p0, v1}, Lob;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2354
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2356
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2351
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_2
    return-object v0
.end method
