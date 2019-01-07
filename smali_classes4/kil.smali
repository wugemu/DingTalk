.class public final Lkil;
.super Lkgb;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/CharProgressionIterator;",
        "Lkotlin/collections/CharIterator;",
        "first",
        "",
        "last",
        "step",
        "",
        "(CCI)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()I",
        "nextChar",
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
.method public constructor <init>(CCI)V
    .locals 3
    .param p1, "first"    # C
    .param p2, "last"    # C
    .param p3, "step"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lkgb;-><init>()V

    iput p3, p0, Lkil;->d:I

    .line 26
    iput p1, p0, Lkil;->a:I

    .line 27
    iput p2, p0, Lkil;->b:I

    .line 28
    iget v2, p0, Lkil;->d:I

    if-lez v2, :cond_2

    if-gt p1, p2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lkil;->c:Z

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
.method public final a()C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    iget v0, p0, Lkil;->a:I

    .line 34
    .local v0, "value":I
    iget v1, p0, Lkil;->b:I

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkil;->c:Z

    .line 40
    :goto_0
    int-to-char v1, v0

    return v1

    .line 38
    :cond_0
    iget v1, p0, Lkil;->a:I

    iget v2, p0, Lkil;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lkil;->a:I

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lkil;->c:Z

    return v0
.end method
