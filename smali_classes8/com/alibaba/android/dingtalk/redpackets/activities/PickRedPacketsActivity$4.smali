.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "pick start"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "senderId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 312
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " clusterId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 314
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 316
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 320
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_org_redenvelope_open"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v0, v1, v2}, Lcap;->a(Landroid/view/View;FF)V

    .line 336
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 337
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;)V

    invoke-virtual {v0, v1, v2, v6, v3}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;ZLcma;)V

    .line 426
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 322
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_org_redenvelope_new_open"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 325
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 326
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_normal_redenvelope_open"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    sget v1, Lcaj$f;->dt_redenvelop_goodtime:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_luckytime_redenvelope_open_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_rand_redenvelope_open"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
