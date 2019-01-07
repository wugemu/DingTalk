.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceStatisticFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

.field private c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private d:Landroid/view/ViewStub;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private g:I

.field private h:J

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->h:J

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->j:Ljava/util/Map;

    .line 77
    const-class v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->l:Ljava/lang/String;

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    return-object v0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/util/ArrayList;IJI)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    .locals 3
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "mode"    # I
    .param p3, "orgId"    # J
    .param p5, "spaceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;IJI)",
            "Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;>;"
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;-><init>()V

    .line 81
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dentry_model"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string/jumbo v2, "space_statistic_user"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    const-string/jumbo v2, "key_statistic_mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    const-string/jumbo v2, "space_type"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->k:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->h:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "model"    # Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 143
    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 143
    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 160
    :cond_3
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->g:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->msg_confirm_none:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->and_msg_confirmer_all_unconfirmed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->msg_unconfirm_none:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->and_msg_confirmer_all_confirmed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->i:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 97
    const-string/jumbo v1, "space_statistic_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->i:Ljava/util/ArrayList;

    .line 98
    const-string/jumbo v1, "key_statistic_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->g:I

    .line 99
    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->h:J

    .line 100
    const-string/jumbo v1, "space_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->k:I

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_staticstic_fragment_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a:Landroid/widget/ListView;

    .line 109
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->d:Landroid/view/ViewStub;

    .line 110
    sget v1, Lfzs$f;->view_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 111
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->d:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->e:Landroid/view/View;

    .line 113
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 119
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->i:Ljava/util/ArrayList;

    .line 120
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->j:Ljava/util/Map;

    .line 121
    return-void
.end method
