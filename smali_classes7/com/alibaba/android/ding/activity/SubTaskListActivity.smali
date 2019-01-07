.class public Lcom/alibaba/android/ding/activity/SubTaskListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SubTaskListActivity.java"

# interfaces
.implements Lbbg$b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private c:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

.field private d:Lbbg$a;

.field private e:Z

.field private f:Landroid/widget/AbsListView$OnScrollListener;

.field private g:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;-><init>(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 46
    new-instance v0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;-><init>(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lbbg$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->d:Lbbg$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->dismissLoadingDialog()V

    .line 96
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->finish()V

    .line 81
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    .line 3032
    iget-object v1, v0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3033
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3034
    iget-object v1, v0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3036
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->e:Z

    .line 71
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->showLoadingDialog()V

    .line 91
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    sget v0, Laxp$i;->dt_task_subtask_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Laxp$g;->ding_activity_sub_task_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->setContentView(I)V

    .line 1128
    sget v0, Laxp$f;->lv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVerticalScrollBarEnabled(Z)V

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->f:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1131
    new-instance v0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1134
    sget v0, Laxp$f;->ll_create_subtask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->a:Landroid/view/View;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/SubTaskListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/SubTaskListActivity$3;-><init>(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2124
    new-instance v0, Lbbh;

    invoke-direct {v0, p0, p0}, Lbbh;-><init>(Landroid/app/Activity;Lbbg$b;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->d:Lbbg$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->d:Lbbg$a;

    invoke-interface {v0}, Lbbg$a;->i()V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lbbg$a;

    .line 3085
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->d:Lbbg$a;

    .line 24
    return-void
.end method
