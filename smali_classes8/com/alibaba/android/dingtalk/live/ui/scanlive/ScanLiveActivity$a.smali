.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;
.super Ljava/lang/Object;
.source "ScanLiveActivity.java"

# interfaces
.implements Ljjx$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v0, "onPushStreamError"

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public final a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V
    .locals 0
    .param p1, "status"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .prologue
    .line 446
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 403
    const-string/jumbo v0, "onPushStreamStarted"

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 418
    const-string/jumbo v0, "onPushStreamRetry"

    .line 3013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method
