.class public abstract Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingNotifyCenterAbstractFragmentV2.java"


# static fields
.field protected static b:I


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field protected c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field protected d:Landroid/widget/ProgressBar;

.field protected e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field protected f:Z

.field protected g:J

.field protected h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x32

    sput v0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->b:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->f:Z

    .line 37
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->g:J

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;

    .prologue
    .line 26
    .line 1127
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->l()V

    .line 1129
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->g()V

    .line 26
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->i:Z

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->n()V

    .line 141
    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->i:Z

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    return-void
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public abstract d()V
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method protected final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->g:J

    .line 80
    return-void
.end method

.method protected final j()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->m()V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->h()V

    .line 151
    return-void
.end method

.method protected final k()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->m()V

    .line 155
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->n()V

    .line 156
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->h:I

    .line 68
    iget v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->h:I

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->j()V

    .line 72
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingNotifyCenterAbstractFragmentV2] mUnreadCounts:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1086
    new-instance v1, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;-><init>(Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 1100
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->d()V

    .line 1117
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->i:Z

    if-nez v1, :cond_1

    .line 1118
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->l()V

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->g()V

    .line 76
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->I:Landroid/view/View;

    sget v1, Laxp$f;->ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->I:Landroid/view/View;

    sget v1, Laxp$f;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->d:Landroid/widget/ProgressBar;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 46
    sget v0, Laxp$g;->ding_fragment_notify_center_ding_v2:I

    return v0
.end method
