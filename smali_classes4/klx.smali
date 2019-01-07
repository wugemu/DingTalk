.class public final Lklx;
.super Lklv;
.source "StreamEmitter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/emitters/StreamEmitter;",
        "Lnl/dionsegijn/konfetti/emitters/Emitter;",
        "()V",
        "amountPerMs",
        "",
        "createParticleMs",
        "elapsedTime",
        "emittingTime",
        "",
        "maxParticles",
        "",
        "particlesCreated",
        "build",
        "particlesPerSecond",
        "createConfetti",
        "",
        "deltaTime",
        "createParticle",
        "isFinished",
        "",
        "isTimeElapsed",
        "reachedMaxParticles",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field public b:I

.field public c:J

.field public d:F

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lklv;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lklx;->b:I

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 8
    .param p1, "deltaTime"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    iget v2, p0, Lklx;->g:F

    add-float/2addr v2, p1

    iput v2, p0, Lklx;->g:F

    .line 43
    iget v2, p0, Lklx;->g:F

    iget v3, p0, Lklx;->d:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1064
    iget-wide v2, p0, Lklx;->c:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lklx;->f:F

    iget-wide v6, p0, Lklx;->c:J

    long-to-float v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move v2, v4

    .line 43
    :goto_0
    if-nez v2, :cond_4

    .line 45
    iget v2, p0, Lklx;->g:F

    iget v3, p0, Lklx;->d:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 46
    .local v1, "amount":I
    new-instance v0, Lkir;

    invoke-direct {v0, v4, v1}, Lkir;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 91
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    check-cast v2, Lkgn;

    invoke-virtual {v2}, Lkgn;->a()I

    .line 2074
    iget v2, p0, Lklx;->b:I

    if-gt v4, v2, :cond_2

    iget v6, p0, Lklx;->e:I

    if-gt v2, v6, :cond_2

    move v2, v4

    .line 2055
    :goto_2
    if-nez v2, :cond_0

    .line 2056
    iget v2, p0, Lklx;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lklx;->e:I

    .line 3014
    iget-object v2, p0, Lklv;->a:Lkhk;

    .line 2057
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkhk;->invoke()Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v1    # "amount":I
    :cond_1
    move v2, v5

    .line 1064
    goto :goto_0

    .restart local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .restart local v1    # "amount":I
    :cond_2
    move v2, v5

    .line 2074
    goto :goto_2

    .line 48
    :cond_3
    iget v2, p0, Lklx;->g:F

    iget v3, p0, Lklx;->d:F

    rem-float/2addr v2, v3

    iput v2, p0, Lklx;->g:F

    .line 51
    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v1    # "amount":I
    :cond_4
    iget v2, p0, Lklx;->f:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lklx;->f:F

    .line 52
    return-void
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget-wide v2, p0, Lklx;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 84
    iget v2, p0, Lklx;->f:F

    iget-wide v4, p0, Lklx;->c:J

    long-to-float v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    iget v2, p0, Lklx;->b:I

    iget v3, p0, Lklx;->e:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
