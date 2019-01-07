.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 401
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->a:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->a:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    sget v3, Lhdn$h;->content_layout:I

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 406
    .local v0, "contentTitleHeight":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 408
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->a:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->b:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->b:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Landroid/view/View;)Landroid/view/View;

    .line 411
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhrc;->a(Ljava/lang/String;)V

    .line 413
    .end local v0    # "contentTitleHeight":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method
