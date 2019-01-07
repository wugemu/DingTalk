.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 478
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    .line 1481
    if-eqz p1, :cond_2

    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_SUCCESS:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    if-ne p1, v0, :cond_2

    .line 1483
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)J

    .line 1484
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2157
    if-nez v1, :cond_1

    .line 1485
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lexi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lexi$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v1, v1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-interface {v0, v1, v2}, Lexi$a;->a(ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;JZ)V

    .line 1491
    sget v0, Leuj$l;->dt_conference_org_switch_sucess:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1493
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_manage_switch_bizcall_org_sucess"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 2160
    :cond_1
    new-instance v2, Lewh$c;

    invoke-direct {v2, v0, v6}, Lewh$c;-><init>(Lewh;B)V

    .line 2161
    iput-object v1, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2162
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v2, Lewh$c;->a:J

    .line 2164
    invoke-virtual {v0, v2}, Lewh;->a(Lewh$c;)V

    goto :goto_0

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    :cond_3
    sget v0, Leuj$l;->dt_conference_org_switch_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1501
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_manage_switch_bizcall_org_fail"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1503
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Modify biz org fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 509
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Modify biz org fail: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " , "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 510
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_0
    sget v0, Leuj$l;->dt_conference_org_switch_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 516
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_manage_switch_bizcall_org_fail"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 517
    return-void
.end method
