.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 555
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getLiveDetail failed, errorCode="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 559
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 502
    check-cast p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;

    .line 1505
    if-eqz p1, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z

    .line 1511
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    .line 1513
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 1514
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 1515
    if-eqz v1, :cond_0

    .line 1517
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v2

    iput v1, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 1519
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->n(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1523
    sget v0, Lbtp$g;->and_wukong_error_param_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1524
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    .line 1525
    :cond_2
    :goto_0
    return-void

    .line 1528
    :cond_3
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->o(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbtq;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 1529
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->status:I

    if-eqz v0, :cond_5

    .line 1530
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z

    .line 1533
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->p(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 1534
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1535
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V

    .line 1541
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v0, :cond_7

    .line 1542
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->uv:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(I)V

    .line 1543
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->praiseCount:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(J)V

    .line 1546
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z

    .line 1547
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->g(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1548
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lbxn$a;

    move-result-object v0

    invoke-interface {v0}, Lbxn$a;->c()V

    .line 1550
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->r(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    goto/16 :goto_0

    .line 1537
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1538
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$11;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lbxn$a;

    move-result-object v0

    invoke-interface {v0}, Lbxn$a;->a()V

    goto :goto_1
.end method
