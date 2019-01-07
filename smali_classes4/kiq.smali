.class public final Lkiq;
.super Lkgn;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/IntProgressionIterator;",
        "Lkotlin/collections/IntIterator;",
        "first",
        "",
        "last",
        "step",
        "(III)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()I",
        "nextInt",
        "kotlin-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private c:Z

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lkgn;-><init>()V

    iput p3, p0, Lkiq;->d:I

    .line 49
    iput p1, p0, Lkiq;->a:I

    .line 50
    iput p2, p0, Lkiq;->b:I

    .line 51
    iget v2, p0, Lkiq;->d:I

    if-lez v2, :cond_2

    if-gt p1, p2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lkiq;->c:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    iget v0, p0, Lkiq;->a:I

    .line 57
    .local v0, "value":I
    iget v1, p0, Lkiq;->b:I

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkiq;->c:Z

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    iget v1, p0, Lkiq;->a:I

    iget v2, p0, Lkiq;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lkiq;->a:I

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lkiq;->c:Z

    return v0
.end method
