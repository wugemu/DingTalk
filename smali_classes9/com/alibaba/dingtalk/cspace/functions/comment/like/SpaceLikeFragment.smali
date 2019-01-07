.class public Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "SpaceLikeFragment.java"

# interfaces
.implements Lgdq$b;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/ViewStub;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

.field private f:Lgdq$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;)Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    return-object v0
.end method

.method public static e()Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->b:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->icon_like:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->dt_msg_reaction_no_likes:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 139
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;->a(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->f:Lgdq$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->f:Lgdq$a;

    invoke-interface {v0}, Lgdq$a;->a()V

    .line 92
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
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_staticstic_fragment_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->b:Landroid/widget/ListView;

    .line 59
    sget v1, Lfzs$f;->view_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 60
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->c:Landroid/view/ViewStub;

    .line 1067
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-object v0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lgdq$a;

    .line 1096
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdq$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->f:Lgdq$a;

    .line 41
    return-void
.end method
