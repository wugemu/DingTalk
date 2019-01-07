.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->c:J

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 460
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[sendDing] listMembers failed, code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget v0, Lctk$i;->dt_im_announce_ding_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 463
    const-string/jumbo v0, "chat_setting_announce_fail"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    .line 465
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 396
    check-cast p1, Ljava/util/List;

    .line 1399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "[sendDing] members is empty"

    invoke-static {v0, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1413
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    :cond_2
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 1416
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    sget v5, Lctk$i;->dt_im_group_announce_ding_prefix:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1417
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1418
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1419
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1420
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1422
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .line 1922
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1423
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;->e:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .line 1424
    invoke-static {v0, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1422
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V

    .line 396
    return-void

    .line 1403
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 1404
    if-eqz v0, :cond_4

    .line 1405
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1406
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 1409
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
