.class public Liwt;
.super Ljava/lang/Object;
.source "DateValueImpl.java"

# interfaces
.implements Liws;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Liwt;->a:I

    .line 30
    iput p2, p0, Liwt;->b:I

    .line 31
    iput p3, p0, Liwt;->c:I

    .line 32
    return-void
.end method

.method private a(Liws;)I
    .locals 8
    .param p1, "other"    # Liws;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    .line 1043
    iget v6, p0, Liwt;->c:I

    .line 2039
    iget v7, p0, Liwt;->b:I

    .line 52
    shl-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    .line 3035
    iget v7, p0, Liwt;->a:I

    .line 52
    shl-int/lit8 v7, v7, 0x9

    add-int v2, v6, v7

    .line 55
    .local v2, "n0":I
    invoke-interface {p1}, Liws;->f()I

    move-result v6

    invoke-interface {p1}, Liws;->e()I

    move-result v7

    shl-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    invoke-interface {p1}, Liws;->d()I

    move-result v7

    shl-int/lit8 v7, v7, 0x9

    add-int v3, v6, v7

    .line 58
    .local v3, "n1":I
    if-eq v2, v3, :cond_0

    sub-int v6, v2, v3

    .line 71
    :goto_0
    return v6

    .line 59
    :cond_0
    instance-of v6, p0, Liwv;

    if-nez v6, :cond_2

    .line 60
    instance-of v6, p1, Liwv;

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v5, p0

    .line 62
    check-cast v5, Liwv;

    .line 63
    .local v5, "self":Liwv;
    instance-of v6, p1, Liwv;

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 64
    check-cast v4, Liwv;

    .line 65
    .local v4, "othr":Liwv;
    invoke-interface {v5}, Liwv;->c()I

    move-result v6

    invoke-interface {v5}, Liwv;->b()I

    move-result v7

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-interface {v5}, Liwv;->a()I

    move-result v7

    shl-int/lit8 v7, v7, 0xc

    add-int v0, v6, v7

    .line 68
    .local v0, "m0":I
    invoke-interface {v4}, Liwv;->c()I

    move-result v6

    invoke-interface {v4}, Liwv;->b()I

    move-result v7

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-interface {v4}, Liwv;->a()I

    move-result v7

    shl-int/lit8 v7, v7, 0xc

    add-int v1, v6, v7

    .line 71
    .local v1, "m1":I
    sub-int v6, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Liws;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Liwt;->a(Liws;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Liwt;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Liwt;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 76
    instance-of v1, p1, Liws;

    if-nez v1, :cond_1

    .line 78
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Liws;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Liwt;->a(Liws;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Liwt;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget v0, p0, Liwt;->a:I

    shl-int/lit8 v0, v0, 0x9

    iget v1, p0, Liwt;->b:I

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Liwt;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    const-string/jumbo v0, "%04d%02d%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Liwt;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Liwt;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Liwt;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
