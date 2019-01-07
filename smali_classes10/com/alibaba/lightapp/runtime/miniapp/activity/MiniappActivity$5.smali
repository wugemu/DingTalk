.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;
.super Lcmi;
.source "MiniappActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "addPageErrorView exception: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "code= "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "reason= "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 374
    check-cast p1, Landroid/view/View;

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1381
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1385
    if-eqz v0, :cond_2

    if-ne v0, v5, :cond_0

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_0

    .line 1393
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1394
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1397
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1398
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addPageErrorView exception: "

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 2071
    const-string/jumbo v0, "mini_app"

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
