.class final Lnu;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# instance fields
.field protected a:I

.field private b:[Lns;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x2

    .line 1077
    new-array v0, v0, [Lns;

    iput-object v0, p0, Lnu;->b:[Lns;

    .line 1079
    const/4 v0, 0x1

    iput v0, p0, Lnu;->c:I

    .line 1080
    iput v1, p0, Lnu;->d:I

    .line 1081
    iput v1, p0, Lnu;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lns;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lnu;->b:[Lns;

    iget v1, p0, Lnu;->d:I

    add-int/2addr v1, p1

    iget v2, p0, Lnu;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    iget v0, p0, Lnu;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnu;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Lnu;->d:I

    .line 94
    iget v0, p0, Lnu;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnu;->a:I

    .line 95
    return-void
.end method

.method public final a(Lns;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 43
    iget v0, p0, Lnu;->a:I

    iget-object v2, p0, Lnu;->b:[Lns;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 2059
    iget-object v0, p0, Lnu;->b:[Lns;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lns;

    move v0, v1

    .line 2063
    :goto_0
    iget-object v3, p0, Lnu;->b:[Lns;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2064
    invoke-virtual {p0, v0}, Lnu;->a(I)Lns;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2067
    :cond_0
    iput-object v2, p0, Lnu;->b:[Lns;

    .line 2068
    iget-object v0, p0, Lnu;->b:[Lns;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnu;->c:I

    .line 2069
    iput v1, p0, Lnu;->d:I

    .line 46
    :cond_1
    iget-object v0, p0, Lnu;->b:[Lns;

    iget v1, p0, Lnu;->d:I

    iget v2, p0, Lnu;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lnu;->c:I

    and-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 47
    iget v0, p0, Lnu;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu;->a:I

    .line 48
    return-void
.end method
