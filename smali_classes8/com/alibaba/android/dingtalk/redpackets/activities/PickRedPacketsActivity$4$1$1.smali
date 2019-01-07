.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 345
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 351
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "pick"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "senderId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 354
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " clusterId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 356
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 358
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-ne v0, v6, :cond_3

    .line 368
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 370
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/detail.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;)V

    .line 371
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->finish()V

    .line 396
    :cond_1
    :goto_1
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 363
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 362
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    goto :goto_1
.end method
