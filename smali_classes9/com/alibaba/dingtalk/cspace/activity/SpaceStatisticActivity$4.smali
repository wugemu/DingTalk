.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;
.super Lcmi;
.source "SpaceStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgio;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->b:Ljava/util/List;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 437
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getUsersUnreadOfCooperation: listMembersByRole"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", conversationId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->a:Ljava/lang/String;

    .line 439
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", roleList"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->b:Ljava/util/List;

    .line 440
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", spaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .line 441
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 437
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceStatisticActivity"

    .line 443
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    check-cast p1, Lgio;

    .line 1393
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    if-nez p1, :cond_2

    .line 1398
    const-string/jumbo v0, "null result"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1399
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0

    .line 1403
    :cond_2
    iget-object v0, p1, Lgio;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1403
    if-eqz v0, :cond_5

    .line 1404
    iget-object v0, p1, Lgio;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1405
    iget-object v0, p1, Lgio;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgiq;

    .line 1406
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lgiq;->a:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1409
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V

    .line 1410
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 1417
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    iget-object v1, p1, Lgio;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1418
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0

    .line 1413
    :cond_5
    iget-object v0, p1, Lgio;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgio;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1414
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p1, Lgio;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2
.end method
