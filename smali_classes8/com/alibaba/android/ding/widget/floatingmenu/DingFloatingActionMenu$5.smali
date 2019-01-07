.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;
.super Ljava/lang/Object;
.source "DingFloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->c:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iput-boolean p3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 629
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->c:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->c:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .line 1607
    iget-boolean v1, v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    .line 633
    if-nez v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->c:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 638
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->b:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(Z)V

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    sget v2, Laxp$f;->ding_fab_label:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 642
    .local v0, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v0, :cond_0

    .line 643
    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;->b:Z

    .line 2234
    if-eqz v1, :cond_3

    .line 3164
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    .line 3165
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->i:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 3166
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2237
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setVisibility(I)V

    goto :goto_0
.end method
