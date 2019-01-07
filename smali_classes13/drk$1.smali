.class final Ldrk$1;
.super Ljava/lang/Object;
.source "InputSwitchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldrk;->a(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Ldrk;


# direct methods
.method constructor <init>(Ldrk;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Ldrk;

    .prologue
    .line 80
    iput-object p1, p0, Ldrk$1;->d:Ldrk;

    iput p2, p0, Ldrk$1;->a:I

    iput-object p3, p0, Ldrk$1;->b:Landroid/view/View;

    iput-object p4, p0, Ldrk$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iget v1, p0, Ldrk$1;->a:I

    iget-object v2, p0, Ldrk$1;->d:Ldrk;

    .line 1010
    iget v2, v2, Ldrk;->a:I

    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Ldrk$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 85
    .local v0, "show":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 87
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 88
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    new-instance v1, Ldrk$1$1;

    invoke-direct {v1, p0}, Ldrk$1$1;-><init>(Ldrk$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    iget-object v1, p0, Ldrk$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 113
    iget-object v1, p0, Ldrk$1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    .end local v0    # "show":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
