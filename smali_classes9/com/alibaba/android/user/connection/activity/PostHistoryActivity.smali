.class public Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostHistoryActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lfcg;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
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
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4274
    const-string/jumbo v0, "Circle-posthistory-getDataFromDB"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$7;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
    .param p1, "x1"    # J

    .prologue
    .line 41
    .line 5160
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;J)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    .line 5278
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$9;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    .line 5179
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$6;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Lfcg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->b:Lfcg;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->d:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 41
    .line 5254
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$8;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lezg$j;->activity_connection_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->setContentView(I)V

    .line 59
    sget v0, Lezg$l;->dt_circle_title_comments:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->setTitle(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    .line 1099
    const-string/jumbo v1, "extra_notice_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    .line 1104
    :cond_0
    sget v0, Lezg$h;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1105
    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 1106
    new-instance v1, Lfcg;

    invoke-direct {v1, p0}, Lfcg;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->b:Lfcg;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1107
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1108
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->b:Lfcg;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    .line 2101
    iput-object v1, v0, Lfcg;->a:Lcou;

    .line 2263
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3120
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2266
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->b:Lfcg;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lfcg;->a(Ljava/util/List;)V

    .line 3134
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .line 3135
    if-eqz v0, :cond_1

    .line 3139
    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    .line 3140
    iput-wide v0, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->e:J

    .line 3274
    const-string/jumbo v2, "Circle-posthistory-getDataFromDB"

    invoke-static {v2, v4}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 3142
    new-instance v3, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;J)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4089
    :cond_1
    :goto_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_receive_notice"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    return-void

    .line 2269
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 4093
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 70
    return-void
.end method
