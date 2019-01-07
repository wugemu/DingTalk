.class public final Lnl/dionsegijn/konfetti/KonfettiView;
.super Landroid/view/View;
.source "KonfettiView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/dionsegijn/konfetti/KonfettiView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001#B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u001c\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0014J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0013R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006$"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/KonfettiView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onParticleSystemUpdateListener",
        "Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;",
        "getOnParticleSystemUpdateListener",
        "()Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;",
        "setOnParticleSystemUpdateListener",
        "(Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;)V",
        "systems",
        "",
        "Lnl/dionsegijn/konfetti/ParticleSystem;",
        "getSystems",
        "()Ljava/util/List;",
        "timer",
        "Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;",
        "getTimer$konfetti_release",
        "()Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;",
        "setTimer$konfetti_release",
        "(Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;)V",
        "build",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "start",
        "particleSystem",
        "TimerIntegration",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lklu;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkly;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lnl/dionsegijn/konfetti/KonfettiView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance v0, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {v0}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance v0, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {v0}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance v0, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {v0}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method


# virtual methods
.method public final getOnParticleSystemUpdateListener()Lkly;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lkly;

    return-object v0
.end method

.method public final getSystems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lklu;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getTimer$konfetti_release()Lnl/dionsegijn/konfetti/KonfettiView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v3, "canvas"

    invoke-static {p1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    .line 1080
    iget-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    .line 1082
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1083
    iget-wide v6, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 1084
    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    .line 1085
    long-to-float v3, v6

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v0, v3, v4

    .line 45
    .local v0, "deltaTime":F
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    if-ltz v1, :cond_10

    .line 46
    :goto_0
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lklu;

    .line 2036
    .local v2, "particleSystem":Lklu;
    iget-object v7, v2, Lklu;->g:Lklw;

    if-nez v7, :cond_1

    const-string/jumbo v3, "renderSystem"

    invoke-static {v3}, Lkib;->a(Ljava/lang/String;)V

    .line 47
    :cond_1
    const-string/jumbo v3, "canvas"

    invoke-static {p1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    iget-object v3, v7, Lklw;->c:Lklv;

    invoke-virtual {v3, v0}, Lklv;->a(F)V

    .line 2048
    iget-object v3, v7, Lklw;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_c

    move v4, v3

    .line 2049
    :goto_1
    iget-object v3, v7, Lklw;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkls;

    .line 2050
    iget-object v5, v7, Lklw;->a:Lkmc;

    const-string/jumbo v6, "force"

    invoke-static {v5, v6}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3052
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v5, v6, v8, v9}, Lkmc;->a(Lkmc;FFI)Lkmc;

    move-result-object v5

    .line 3053
    iget v6, v3, Lkls;->a:F

    .line 4018
    iget v8, v5, Lkmc;->a:F

    div-float/2addr v8, v6

    iput v8, v5, Lkmc;->a:F

    .line 4019
    iget v8, v5, Lkmc;->b:F

    div-float v6, v8, v6

    iput v6, v5, Lkmc;->b:F

    .line 3054
    iget-object v6, v3, Lkls;->n:Lkmc;

    invoke-virtual {v6, v5}, Lkmc;->a(Lkmc;)V

    .line 2051
    const-string/jumbo v5, "canvas"

    invoke-static {p1, v5}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4063
    iget-object v5, v3, Lkls;->o:Lkmc;

    iget-object v6, v3, Lkls;->n:Lkmc;

    invoke-virtual {v5, v6}, Lkmc;->a(Lkmc;)V

    .line 4065
    iget-object v5, v3, Lkls;->o:Lkmc;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v5, v6, v8, v9}, Lkmc;->a(Lkmc;FFI)Lkmc;

    move-result-object v5

    .line 4066
    iget v6, v3, Lkls;->h:F

    mul-float/2addr v6, v0

    .line 5013
    iget v8, v5, Lkmc;->a:F

    mul-float/2addr v8, v6

    iput v8, v5, Lkmc;->a:F

    .line 5014
    iget v8, v5, Lkmc;->b:F

    mul-float/2addr v6, v8

    iput v6, v5, Lkmc;->b:F

    .line 4067
    iget-object v6, v3, Lkls;->j:Lkmc;

    invoke-virtual {v6, v5}, Lkmc;->a(Lkmc;)V

    .line 4070
    iget-wide v8, v3, Lkls;->l:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_8

    .line 5082
    iget-boolean v5, v3, Lkls;->m:Z

    if-eqz v5, :cond_7

    .line 5083
    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v0

    iget v6, v3, Lkls;->h:F

    mul-float/2addr v5, v6

    .line 5084
    iget v6, v3, Lkls;->i:I

    int-to-float v6, v6

    sub-float v5, v6, v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    const/4 v5, 0x0

    iput v5, v3, Lkls;->i:I

    .line 4073
    :goto_2
    iget v5, v3, Lkls;->d:F

    mul-float/2addr v5, v0

    iget v6, v3, Lkls;->h:F

    mul-float/2addr v5, v6

    .line 4074
    iget v6, v3, Lkls;->e:F

    add-float/2addr v6, v5

    iput v6, v3, Lkls;->e:F

    .line 4075
    iget v6, v3, Lkls;->e:F

    const/high16 v8, 0x43b40000    # 360.0f

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    iput v6, v3, Lkls;->e:F

    .line 4077
    :cond_2
    iget v6, v3, Lkls;->f:F

    sub-float v5, v6, v5

    iput v5, v3, Lkls;->f:F

    .line 4078
    iget v5, v3, Lkls;->f:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget v5, v3, Lkls;->b:F

    iput v5, v3, Lkls;->f:F

    .line 4059
    :cond_3
    const-string/jumbo v5, "canvas"

    invoke-static {p1, v5}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5093
    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 6006
    iget v5, v5, Lkmc;->b:F

    .line 5093
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 5094
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lkls;->l:J

    .line 13048
    :cond_4
    :goto_3
    iget v3, v3, Lkls;->i:I

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_b

    const/4 v3, 0x1

    .line 2052
    :goto_4
    if-eqz v3, :cond_5

    iget-object v3, v7, Lklw;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2048
    :cond_5
    if-eqz v4, :cond_c

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto/16 :goto_1

    .line 5085
    :cond_6
    iget v5, v3, Lkls;->i:I

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    iget v8, v3, Lkls;->h:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v3, Lkls;->i:I

    goto :goto_2

    .line 5087
    :cond_7
    const/4 v5, 0x0

    iput v5, v3, Lkls;->i:I

    goto :goto_2

    .line 4071
    :cond_8
    iget-wide v8, v3, Lkls;->l:J

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v0

    float-to-long v10, v5

    sub-long/2addr v8, v10

    iput-wide v8, v3, Lkls;->l:J

    goto :goto_2

    .line 5099
    :cond_9
    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 7006
    iget v5, v5, Lkmc;->a:F

    .line 5099
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 8006
    iget v5, v5, Lkmc;->a:F

    .line 8044
    iget v6, v3, Lkls;->b:F

    .line 5099
    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 9006
    iget v5, v5, Lkmc;->b:F

    .line 9044
    iget v6, v3, Lkls;->b:F

    .line 5099
    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 5103
    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 10006
    iget v5, v5, Lkmc;->a:F

    .line 5103
    iget v6, v3, Lkls;->b:F

    iget v8, v3, Lkls;->f:F

    sub-float/2addr v6, v8

    add-float/2addr v6, v5

    .line 5104
    iget-object v5, v3, Lkls;->j:Lkmc;

    .line 11006
    iget v5, v5, Lkmc;->a:F

    .line 5104
    iget v8, v3, Lkls;->f:F

    add-float/2addr v5, v8

    .line 5107
    cmpl-float v8, v6, v5

    if-lez v8, :cond_a

    .line 5108
    add-float/2addr v6, v5

    .line 5109
    sub-float v5, v6, v5

    .line 5110
    sub-float/2addr v6, v5

    .line 5113
    :cond_a
    iget-object v8, v3, Lkls;->c:Landroid/graphics/Paint;

    iget v9, v3, Lkls;->i:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5115
    iget-object v8, v3, Lkls;->g:Landroid/graphics/RectF;

    iget-object v9, v3, Lkls;->j:Lkmc;

    .line 12006
    iget v9, v9, Lkmc;->b:F

    .line 5115
    iget-object v10, v3, Lkls;->j:Lkmc;

    .line 13006
    iget v10, v10, Lkmc;->b:F

    .line 13044
    iget v11, v3, Lkls;->b:F

    .line 5115
    add-float/2addr v10, v11

    invoke-virtual {v8, v6, v9, v5, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5118
    iget v5, v3, Lkls;->e:F

    iget-object v6, v3, Lkls;->g:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v8, v3, Lkls;->g:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5119
    iget-object v5, v3, Lkls;->k:Lnl/dionsegijn/konfetti/models/Shape;

    sget-object v6, Lklt;->a:[I

    invoke-virtual {v5}, Lnl/dionsegijn/konfetti/models/Shape;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 5123
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 5120
    :pswitch_0
    iget-object v5, v3, Lkls;->g:Landroid/graphics/RectF;

    iget-object v6, v3, Lkls;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 5121
    :pswitch_1
    iget-object v5, v3, Lkls;->g:Landroid/graphics/RectF;

    iget-object v6, v3, Lkls;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 13048
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 13197
    :cond_c
    iget-object v3, v2, Lklu;->g:Lklw;

    if-nez v3, :cond_d

    const-string/jumbo v4, "renderSystem"

    invoke-static {v4}, Lkib;->a(Ljava/lang/String;)V

    .line 14058
    :cond_d
    iget-object v4, v3, Lklw;->c:Lklv;

    invoke-virtual {v4}, Lklv;->a()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, v3, Lklw;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    .line 48
    :goto_6
    if-eqz v3, :cond_e

    .line 49
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lkly;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    :cond_e
    if-eqz v1, :cond_10

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    goto/16 :goto_0

    .line 14058
    .end local v1    # "i":I
    :cond_f
    const/4 v3, 0x0

    goto :goto_6

    .line 54
    .end local v2    # "particleSystem":Lklu;
    :cond_10
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_11

    .line 55
    invoke-virtual {p0}, Lnl/dionsegijn/konfetti/KonfettiView;->invalidate()V

    .line 59
    :goto_7
    return-void

    .line 57
    :cond_11
    iget-object v3, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    .line 14075
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    goto :goto_7

    .line 5119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setOnParticleSystemUpdateListener(Lkly;)V
    .locals 0
    .param p1, "<set-?>"    # Lkly;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lkly;

    return-void
.end method

.method public final setTimer$konfetti_release(Lnl/dionsegijn/konfetti/KonfettiView$a;)V
    .locals 1
    .param p1, "<set-?>"    # Lnl/dionsegijn/konfetti/KonfettiView$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string/jumbo v0, "<set-?>"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method
