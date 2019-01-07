.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;
.super Ljava/lang/Object;
.source "SpaceStatisticActivity.java"

# interfaces
.implements Lcma;


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
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 350
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getUsersUnreadOfGroup: listMembers"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", conversationId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->a:Ljava/lang/String;

    .line 352
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", spaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .line 353
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 350
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceStatisticActivity"

    const/4 v3, 0x0

    .line 355
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 310
    check-cast p1, Ljava/util/List;

    .line 1313
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1314
    const-string/jumbo v0, "null fragment"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :goto_0
    return-void

    .line 1318
    :cond_0
    if-nez p1, :cond_1

    .line 1319
    const-string/jumbo v0, "null result"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0

    .line 1324
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;

    .line 1325
    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-eqz v2, :cond_2

    .line 1326
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1330
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V

    .line 1331
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    .line 347
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 337
    return-void
.end method
