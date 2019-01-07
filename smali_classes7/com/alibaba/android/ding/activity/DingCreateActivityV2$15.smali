.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1362
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1351
    return-void
.end method
