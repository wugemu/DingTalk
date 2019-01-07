.class public abstract Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingNotifyCenterAbstractFragment.java"


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field protected c:Landroid/widget/ProgressBar;

.field protected d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field protected e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 42
    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 160
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract f()V
.end method

.method protected abstract g()V
.end method

.method public h()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->m()V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 138
    return-void
.end method

.method protected final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    return-void
.end method

.method protected final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->j()V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->g()V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 148
    return-void
.end method

.method protected final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->j()V

    .line 152
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->m()V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;)V

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1085
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1092
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$2;-><init>(Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->c()V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->d()V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->swipe_layout_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->c:Landroid/widget/ProgressBar;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Laxp$c;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Laxp$c;->swipe_refresh_color2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Laxp$c;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Laxp$c;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 46
    sget v0, Laxp$g;->ding_fragment_notify_center_ding:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->setUserVisibleHint(Z)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->f()V

    .line 80
    :cond_0
    return-void
.end method
