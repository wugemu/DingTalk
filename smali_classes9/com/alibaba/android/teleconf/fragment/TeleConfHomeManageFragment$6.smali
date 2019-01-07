.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 559
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;

    .line 1562
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1565
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    if-eqz p1, :cond_7

    .line 1567
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->a:Z

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->adModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    .line 1574
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)V

    .line 1576
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/util/List;)Ljava/util/List;

    .line 1581
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .line 1582
    if-eqz v0, :cond_1

    .line 1585
    new-instance v3, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;-><init>(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;)V

    .line 1586
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v3, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->b:J

    .line 1587
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-wide v4, v3, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->b:J

    invoke-static {v0, v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->c:Ljava/lang/String;

    .line 1589
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->b()V

    .line 1591
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1579
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1586
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 1593
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Leuq;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1594
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1596
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Leuq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Leuq;->b(Ljava/util/List;)V

    .line 1599
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V

    .line 1602
    :cond_5
    :goto_3
    return-void

    .line 1601
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3

    .line 1605
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 612
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Getting management info fail: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " , "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 613
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
