.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;
.super Lcq;
.source "SpaceStatisticActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .line 669
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 670
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/util/ArrayList;IJI)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .line 676
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->o(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/util/ArrayList;IJI)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .line 679
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
