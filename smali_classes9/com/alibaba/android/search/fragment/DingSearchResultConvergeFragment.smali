.class public Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
.super Lcom/alibaba/android/search/widget/SearchBaseFragment;
.source "DingSearchResultConvergeFragment.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field private final g:Ljava/lang/String;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/view/View;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lemx;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;-><init>()V

    .line 53
    const-class v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->g:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->p:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->q:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->p:I

    return v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->r:Z

    .line 1223
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 202
    return-void

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->q:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    .line 2214
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Lemx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->o:Lemx;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h:Landroid/widget/RelativeLayout;

    .line 1113
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->i:Landroid/widget/LinearLayout;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->i:Landroid/widget/LinearLayout;

    sget v1, Lemt$e;->tv_search_result_header:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->j:Landroid/widget/TextView;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1117
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    .line 1118
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1119
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->footer_loading_view:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->m:Landroid/view/View;

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1133
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    const-class v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1133
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1146
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .line 1161
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1146
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .line 1162
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setFlingCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lemt$g;->dt_ding_search_bysender_section_at_at:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->n:Ljava/util/List;

    .line 1169
    new-instance v0, Lemx;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lemx;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->o:Lemx;

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->o:Lemx;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1172
    iput-boolean v6, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->r:Z

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1174
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lemt$f;->fragment_ding_search_result_converge:I

    return v0
.end method
