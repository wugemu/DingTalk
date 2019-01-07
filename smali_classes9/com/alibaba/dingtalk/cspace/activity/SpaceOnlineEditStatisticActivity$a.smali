.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;
.super Lcq;
.source "SpaceOnlineEditStatisticActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcn;)V
    .locals 0
    .param p2, "fragmentManager"    # Lcn;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .line 173
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcn;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
    .param p2, "x1"    # Lcn;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcn;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(ILcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(ILcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 198
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
