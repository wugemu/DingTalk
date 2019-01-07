.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;
.super Lbyi$a;
.source "CreateLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lbyi$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbyi$a;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;Lbyi$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->a:Lbyi$a;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 582
    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    new-instance v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;-><init>()V

    .line 1589
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    .line 1590
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    .line 1591
    iput v1, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 1592
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4, v3}, Lbtq;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 1594
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    new-instance v3, Ljjx;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z

    move-result v4

    invoke-direct {v3, v4, v1, v2}, Ljjx;-><init>(ZZZ)V

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;Ljjx;)Ljjx;

    .line 1596
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljjx;->a(Z)V

    .line 1597
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    sget v3, Lbtp$e;->live_container:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2213
    iput-object v0, v2, Ljjx;->b:Landroid/widget/RelativeLayout;

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lbxp;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1604
    const-string/jumbo v0, "load live so, enable start button"

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v6, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->a:Lbyi$a;

    if-eqz v0, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;->a:Lbyi$a;

    invoke-virtual {v0, v6}, Lbyi$a;->onSuccess(Ljava/lang/Object;)V

    .line 582
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1590
    goto :goto_0
.end method
