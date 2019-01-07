.class public final Ldrk;
.super Ljava/lang/Object;
.source "InputSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldrk$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Ldrk$a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Ldrk$a;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "listener"    # Ldrk$a;
    .param p2, "inputPanelView"    # Landroid/view/View;
    .param p3, "menuInputView"    # Landroid/view/View;
    .param p4, "bottomMenuView"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Ldrk;->a:I

    .line 22
    iput-object p1, p0, Ldrk;->b:Ldrk$a;

    .line 23
    iput-object p2, p0, Ldrk;->c:Landroid/view/View;

    .line 24
    iput-object p3, p0, Ldrk;->d:Landroid/view/View;

    .line 25
    iput-object p4, p0, Ldrk;->e:Landroid/view/View;

    .line 26
    iput-object p2, p0, Ldrk;->f:Landroid/view/View;

    .line 27
    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .locals 9
    .param p1, "anim"    # Z
    .param p2, "switchView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 57
    .line 1030
    iget-object v4, p0, Ldrk;->b:Ldrk$a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldrk;->c:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldrk;->d:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldrk;->e:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 57
    :goto_0
    if-nez v4, :cond_2

    .line 131
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 1033
    goto :goto_0

    .line 60
    :cond_2
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    iget-object v7, p0, Ldrk;->c:Landroid/view/View;

    if-ne v4, v7, :cond_3

    .line 61
    iget-object v4, p0, Ldrk;->b:Ldrk$a;

    invoke-interface {v4, v6}, Ldrk$a;->a(Z)V

    .line 64
    :cond_3
    iget v4, p0, Ldrk;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldrk;->a:I

    .line 65
    iget v0, p0, Ldrk;->a:I

    .line 67
    .local v0, "currentCode":I
    if-eqz p1, :cond_5

    .line 68
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v8, v8, v8, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 69
    .local v2, "hide":Landroid/view/animation/Animation;
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 70
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 71
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    iget-object v1, p0, Ldrk;->f:Landroid/view/View;

    .line 73
    .local v1, "hiddenView":Landroid/view/View;
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 76
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 80
    new-instance v3, Ldrk$1;

    invoke-direct {v3, p0, v0, p2, v1}, Ldrk$1;-><init>(Ldrk;ILandroid/view/View;Landroid/view/View;)V

    .line 117
    .local v3, "run":Ljava/lang/Runnable;
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_4

    .line 118
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 123
    :goto_2
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    iput-object v4, p0, Ldrk;->g:Landroid/view/View;

    .line 124
    iput-object p2, p0, Ldrk;->f:Landroid/view/View;

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 126
    .end local v1    # "hiddenView":Landroid/view/View;
    .end local v2    # "hide":Landroid/view/animation/Animation;
    .end local v3    # "run":Ljava/lang/Runnable;
    :cond_5
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Ldrk;->f:Landroid/view/View;

    iput-object v4, p0, Ldrk;->g:Landroid/view/View;

    .line 129
    iput-object p2, p0, Ldrk;->f:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Ldrk;->c:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Ldrk;->a(ZLandroid/view/View;)V

    .line 38
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Ldrk;->d:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Ldrk;->a(ZLandroid/view/View;)V

    .line 42
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Ldrk;->e:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Ldrk;->a(ZLandroid/view/View;)V

    .line 46
    return-void
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Ldrk;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ldrk;->g:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Ldrk;->a(ZLandroid/view/View;)V

    .line 52
    :cond_0
    return-void
.end method
