.class Lw$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field protected m:[Ldu$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lw$d;->m:[Ldu$b;

    .line 1522
    return-void
.end method

.method public constructor <init>(Lw$d;)V
    .locals 1
    .param p1, "copy"    # Lw$d;

    .prologue
    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lw$d;->m:[Ldu$b;

    .line 1547
    iget-object v0, p1, Lw$d;->n:Ljava/lang/String;

    iput-object v0, p0, Lw$d;->n:Ljava/lang/String;

    .line 1548
    iget v0, p1, Lw$d;->o:I

    iput v0, p0, Lw$d;->o:I

    .line 1549
    iget-object v0, p1, Lw$d;->m:[Ldu$b;

    invoke-static {v0}, Ldu;->a([Ldu$b;)[Ldu$b;

    move-result-object v0

    iput-object v0, p0, Lw$d;->m:[Ldu$b;

    .line 1550
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1553
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1554
    iget-object v0, p0, Lw$d;->m:[Ldu$b;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lw$d;->m:[Ldu$b;

    invoke-static {v0, p1}, Ldu$b;->a([Ldu$b;Landroid/graphics/Path;)V

    .line 1557
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Ldu$b;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lw$d;->m:[Ldu$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lw$d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Ldu$b;)V
    .locals 6
    .param p1, "nodes"    # [Ldu$b;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1582
    iget-object v0, p0, Lw$d;->m:[Ldu$b;

    invoke-static {v0, p1}, Ldu;->a([Ldu$b;[Ldu$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1584
    invoke-static {p1}, Ldu;->a([Ldu$b;)[Ldu$b;

    move-result-object v0

    iput-object v0, p0, Lw$d;->m:[Ldu$b;

    .line 1588
    :cond_0
    return-void

    .line 1586
    :cond_1
    iget-object v3, p0, Lw$d;->m:[Ldu$b;

    move v0, v1

    .line 2161
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2162
    aget-object v2, v3, v0

    aget-object v4, p1, v0

    iget-char v4, v4, Ldu$b;->a:C

    iput-char v4, v2, Ldu$b;->a:C

    move v2, v1

    .line 2163
    :goto_1
    aget-object v4, p1, v0

    iget-object v4, v4, Ldu$b;->b:[F

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 2164
    aget-object v4, v3, v0

    iget-object v4, v4, Ldu$b;->b:[F

    aget-object v5, p1, v0

    iget-object v5, v5, Ldu$b;->b:[F

    aget v5, v5, v2

    aput v5, v4, v2

    .line 2163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
