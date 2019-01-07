.class public Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "LiveDetailsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lbxq;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->h:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lbxq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b:Lbxq;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->e:Z

    return p1
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->f:Z

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)V

    .line 113
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 116
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;-><init>()V

    .line 117
    .local v1, "reqObject":Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->cid:Ljava/lang/String;

    .line 118
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->g:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->stat:I

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->liveUuid:Ljava/lang/String;

    .line 120
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->anchorId:J

    .line 121
    const/16 v2, 0xbb8

    iput v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->count:I

    .line 122
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->h:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->index:I

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->f:Z

    .line 125
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 28
    .line 1071
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbtp$e;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1075
    sget v1, Lbtp$g;->icon_live_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1076
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget v1, Lbtp$g;->dt_lv_no_member_involved:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 1076
    :cond_2
    sget v1, Lbtp$g;->dt_lv_all_member_involved:I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "intent_extra_viewer_stat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->g:I

    .line 55
    const-string/jumbo v1, "intent_extra_live_uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->d:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->e:Z

    if-nez v0, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c()V

    .line 138
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Lbxq;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->g:I

    invoke-direct {v0, v1, v2}, Lbxq;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b:Lbxq;

    .line 63
    sget v0, Lbtp$e;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b:Lbxq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c()V

    .line 68
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lbtp$f;->fragment_live_details_list:I

    return v0
.end method
