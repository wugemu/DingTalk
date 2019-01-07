.class public Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostHistoryActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lbnp;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:J

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4272
    const-string/jumbo v0, "Circle-posthistory-getDataFromDB"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
    .param p1, "x1"    # J

    .prologue
    .line 44
    .line 5158
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    .line 5276
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    .line 5177
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Lbnp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->b:Lbnp;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->d:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 44
    .line 5252
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$8;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lbpu$e;->activity_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->setContentView(I)V

    .line 62
    sget v0, Lbpu$f;->dt_circle_title_comments:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->setTitle(I)V

    .line 1100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_0

    .line 1102
    const-string/jumbo v1, "extra_notice_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    .line 1107
    :cond_0
    sget v0, Lbpu$d;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1108
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 1109
    new-instance v1, Lbnp;

    invoke-direct {v1, p0}, Lbnp;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->b:Lbnp;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1110
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1111
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->b:Lbnp;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    .line 2101
    iput-object v1, v0, Lbnp;->a:Lcou;

    .line 2261
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2262
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->b:Lbnp;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lbnp;->a(Ljava/util/List;)V

    .line 3134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 3135
    if-eqz v0, :cond_1

    .line 3137
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    .line 3138
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->e:J

    .line 3272
    const-string/jumbo v2, "Circle-posthistory-getDataFromDB"

    invoke-static {v2, v4}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 3140
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4092
    :cond_1
    :goto_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_receive_notice"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    return-void

    .line 2267
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 4096
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method
