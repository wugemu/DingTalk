.class public final Lnk;
.super Ljava/lang/Object;
.source "CharQueue.java"


# instance fields
.field protected a:[C

.field protected b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    .line 1076
    new-array v0, v0, [C

    iput-object v0, p0, Lnk;->a:[C

    .line 1078
    const/4 v0, 0x1

    iput v0, p0, Lnk;->c:I

    .line 1079
    iput v1, p0, Lnk;->d:I

    .line 1080
    iput v1, p0, Lnk;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lnk;->a:[C

    iget v1, p0, Lnk;->d:I

    add-int/2addr v1, p1

    iget v2, p0, Lnk;->c:I

    and-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    iget v0, p0, Lnk;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnk;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Lnk;->d:I

    .line 93
    iget v0, p0, Lnk;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnk;->b:I

    .line 94
    return-void
.end method

.method public final a(C)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 42
    iget v0, p0, Lnk;->b:I

    iget-object v2, p0, Lnk;->a:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 2058
    iget-object v0, p0, Lnk;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    move v0, v1

    .line 2062
    :goto_0
    iget-object v3, p0, Lnk;->a:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2063
    invoke-virtual {p0, v0}, Lnk;->a(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 2062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    :cond_0
    iput-object v2, p0, Lnk;->a:[C

    .line 2067
    iget-object v0, p0, Lnk;->a:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnk;->c:I

    .line 2068
    iput v1, p0, Lnk;->d:I

    .line 45
    :cond_1
    iget-object v0, p0, Lnk;->a:[C

    iget v1, p0, Lnk;->d:I

    iget v2, p0, Lnk;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lnk;->c:I

    and-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 46
    iget v0, p0, Lnk;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnk;->b:I

    .line 47
    return-void
.end method
