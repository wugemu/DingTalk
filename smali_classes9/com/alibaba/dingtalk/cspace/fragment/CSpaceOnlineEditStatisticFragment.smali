.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceOnlineEditStatisticFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;,
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;,
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 307
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static a(ILcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .locals 3
    .param p0, "mode"    # I
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .prologue
    .line 58
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;-><init>()V

    .line 59
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_statistic_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v2, "intent_key_args"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;ZLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(ZLjava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceOnlineEditStatisticFragment"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ": invalid mMode "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    .line 236
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 235
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, ""

    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 10
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lgjm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "collaboratorList":Ljava/util/List;, "Ljava/util/List<Lgjm;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 158
    .line 7051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 158
    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->c:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->c:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->c()V

    goto :goto_0

    .line 169
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, "userModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjm;

    .line 171
    .local v0, "member":Lgjm;
    if-eqz v0, :cond_5

    iget-object v4, v0, Lgjm;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 174
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    iget-object v4, v0, Lgjm;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lgjm;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6, v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;-><init>(JLjava/lang/String;B)V

    .line 175
    .local v1, "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v0    # "member":Lgjm;
    .end local v1    # "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 178
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->c()V

    goto :goto_0

    .line 181
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 7221
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    if-eqz v3, :cond_8

    .line 7224
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .line 7225
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-ne v5, v8, :cond_9

    .line 8225
    iput v4, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b:I

    .line 8226
    iget-object v4, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 182
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->e(Ljava/util/List;)V

    .line 184
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-ne v3, v8, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 7227
    :cond_9
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-nez v5, :cond_a

    .line 9220
    iput v4, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a:I

    .line 9221
    iget-object v4, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 7230
    :cond_a
    const-string/jumbo v3, "updateActivityData"

    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 207
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->msg_unconfirm_none:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->dt_im_space_online_edit_all_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 218
    :goto_0
    return-void

    .line 211
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->msg_confirm_none:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->dt_cspace_all_unedit:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 216
    :cond_1
    const-string/jumbo v0, "showEmptyView"

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    return-object v0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    .line 196
    .local v1, "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    if-eqz v1, :cond_2

    .line 9307
    iget-wide v4, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 196
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 10307
    iget-wide v4, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 200
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3115
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)V

    .line 3146
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 3147
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3148
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->e:Ljava/lang/String;

    .line 4109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3148
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->g:Ljava/lang/String;

    .line 4980
    if-eqz v3, :cond_0

    .line 4983
    iget-object v0, v2, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v0, :cond_1

    .line 4984
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "getUnEditedCollaborator: mOnlineDocIService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4986
    const-string/jumbo v0, "SERVICE_NULL"

    const-string/jumbo v1, "mOnlineDocIService is null"

    invoke-interface {v3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 4989
    :cond_1
    new-instance v0, Lgji;

    invoke-direct {v0}, Lgji;-><init>()V

    .line 4990
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgji;->a:Ljava/lang/Long;

    .line 4991
    iput-object v6, v0, Lgji;->b:Ljava/lang/String;

    .line 4992
    iput-object v7, v0, Lgji;->c:Ljava/lang/String;

    .line 4993
    iget-object v8, v2, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v1, Lgon$55;

    invoke-direct/range {v1 .. v7}, Lgon$55;-><init>(Lgon;Lcma;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->listUnEdit(Lgji;Liyv;)V

    goto :goto_0

    .line 3149
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-nez v0, :cond_4

    .line 3150
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->e:Ljava/lang/String;

    .line 5109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3150
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->g:Ljava/lang/String;

    .line 6024
    if-eqz v3, :cond_0

    .line 6027
    iget-object v0, v2, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v0, :cond_3

    .line 6028
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "listEditedCollaborator: mOnlineDocIService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6030
    const-string/jumbo v0, "SERVICE_NULL"

    const-string/jumbo v1, "mOnlineDocIService is null"

    invoke-interface {v3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6033
    :cond_3
    new-instance v0, Lgji;

    invoke-direct {v0}, Lgji;-><init>()V

    .line 6034
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgji;->a:Ljava/lang/Long;

    .line 6035
    iput-object v6, v0, Lgji;->b:Ljava/lang/String;

    .line 6036
    iput-object v7, v0, Lgji;->c:Ljava/lang/String;

    .line 6037
    iget-object v8, v2, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v1, Lgon$56;

    invoke-direct/range {v1 .. v7}, Lgon$56;-><init>(Lgon;Lcma;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->listEdit(Lgji;Liyv;)V

    goto :goto_0

    .line 3152
    :cond_4
    const-string/jumbo v0, "loadUserList"

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(Ljava/lang/String;)V

    .line 3153
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(ZLjava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v2, "key_statistic_mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    .line 74
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->h:I

    if-eqz v2, :cond_1

    .line 75
    const-string/jumbo v2, "onCreate"

    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(Ljava/lang/String;)V

    .line 77
    :cond_1
    const-string/jumbo v2, "intent_key_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .line 78
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fix(Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    move-result-object v0

    .line 79
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->e:Ljava/lang/String;

    .line 80
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->f:Ljava/lang/String;

    .line 81
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_staticstic_fragment_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    sget v2, Lfzs$f;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a:Landroid/widget/ListView;

    .line 89
    sget v2, Lfzs$f;->loading_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 90
    .local v0, "loadingViewContainer":Landroid/view/ViewStub;
    sget v2, Lfzs$f;->view_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->c:Landroid/view/View;

    .line 92
    return-object v1
.end method
