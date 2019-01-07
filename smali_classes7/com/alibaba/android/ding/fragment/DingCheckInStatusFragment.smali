.class public Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingCheckInStatusFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private d:Laxw;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchg;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:I

.field private m:Lbhr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Laxw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d:Laxw;

    return-object v0
.end method

.method public static a(Ljava/lang/String;JI)Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
    .locals 7
    .param p0, "dingId"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "status"    # I

    .prologue
    .line 57
    new-instance v1, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;-><init>()V

    .line 58
    .local v1, "fragment":Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_id"

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 59
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 60
    const-string/jumbo v2, "meeting_start_time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    const-string/jumbo v2, "sign_up_status"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->i:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->i:Z

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f:I

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f:I

    .line 173
    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->g:Z

    .line 174
    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->i:Z

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    .line 3072
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhr;->a:Z

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f()Lbhr;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    .line 179
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c()V

    .line 180
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 30
    .line 3137
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3138
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3140
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3152
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d:Laxw;

    if-eqz v0, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d:Laxw;

    invoke-virtual {v0}, Laxw;->notifyDataSetChanged()V

    .line 30
    :cond_0
    return-void

    .line 3142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3143
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->l:I

    if-nez v0, :cond_2

    .line 3144
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_yes_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 3145
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_all_people_check_in:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 3147
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_meeting_signin_:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 3148
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_people_check_in:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method private f()Lbhr;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lbhr;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->j:J

    const/4 v4, 0x3

    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->l:I

    new-instance v0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;)V

    const-class v6, Lbhr$a;

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 184
    invoke-static {v0, v6, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbhr$a;

    invoke-direct/range {v1 .. v6}, Lbhr;-><init>(JIILbhr$a;)V

    .line 219
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "lazyReload"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->h:Z

    .line 159
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->h:Z

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d()V

    .line 162
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->h:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->h:Z

    .line 167
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d()V

    .line 169
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v1, "ding_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->j:J

    .line 84
    const-string/jumbo v1, "meeting_start_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->k:J

    .line 85
    const-string/jumbo v1, "sign_up_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->l:I

    .line 2117
    :cond_0
    new-instance v1, Laxw;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->k:J

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    invoke-direct {v1, v2, v4, v5, v3}, Laxw;-><init>(Landroid/app/Activity;JLjava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d:Laxw;

    .line 2118
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->d:Laxw;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2119
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->f()Lbhr;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->m:Lbhr;

    .line 2120
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c()V

    .line 2124
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2106
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    .line 2107
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b:Landroid/view/View;

    .line 2109
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 2110
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2111
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b:Landroid/view/View;

    sget v1, Laxp$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->b:Landroid/view/View;

    sget v1, Laxp$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Laxp$i;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->e:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->c()V

    .line 103
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 93
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 68
    sget v0, Laxp$g;->ding_fragment_ding_member_list:I

    return v0
.end method
