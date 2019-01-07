.class Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FavorCountFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->startAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    iput-object p2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void
.end method
