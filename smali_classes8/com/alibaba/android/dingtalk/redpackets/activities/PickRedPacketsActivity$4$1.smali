.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 338
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 1342
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->i(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 407
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 409
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 410
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v1, "dt":Ljava/util/HashMap;
    const-string/jumbo v2, "senderId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v2, "clusterId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff08\u7f51\u7edc\u6b63\u5e38\uff09 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 416
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "redpackets"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 417
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 418
    const/16 v2, 0x44e

    iput v2, v0, Lhzu;->c:I

    .line 420
    const-string/jumbo v2, "\u62a2\u7ea2\u5305\u5931\u8d25"

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 421
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 423
    .end local v0    # "alarm":Lhzu;
    .end local v1    # "dt":Ljava/util/HashMap;
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 403
    return-void
.end method
