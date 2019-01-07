.class public Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SingleChatTaskActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

.field private d:Landroid/view/View;

.field private e:Lbbf;

.field private f:Lbbe$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;-><init>(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->f:Lbbe$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Lbbf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->e:Lbbf;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->c:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v2, Laxp$g;->ding_activity_single_chat_task:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_user_id"

    invoke-static {v2, v3, v8, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    .line 42
    .local v0, "userId":J
    cmp-long v2, v0, v10

    if-gez v2, :cond_0

    .line 43
    const-string/jumbo v2, "[SingleChatTaskActivity]onCreate failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "invalidate uid"

    invoke-static {v2, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->f:Lbbe$b;

    invoke-interface {v2}, Lbbe$b;->a()V

    .line 2059
    :goto_0
    return-void

    .line 1056
    :cond_0
    sget v2, Laxp$f;->lv_tasks:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->a:Landroid/widget/ListView;

    .line 1057
    sget v2, Laxp$f;->rl_empty:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->b:Landroid/widget/RelativeLayout;

    .line 1058
    sget v2, Laxp$f;->v_add_task:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->d:Landroid/view/View;

    .line 1060
    new-instance v2, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->a:Landroid/widget/ListView;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;-><init>(Landroid/app/Activity;JLandroid/widget/ListView;)V

    iput-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->c:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    .line 1062
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->c:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1066
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->d:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$1;-><init>(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v2, Lbbf;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->f:Lbbe$b;

    invoke-direct {v2, v3}, Lbbf;-><init>(Lbbe$b;)V

    iput-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->e:Lbbf;

    .line 52
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->e:Lbbf;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2050
    if-nez v2, :cond_1

    .line 2051
    iget-object v2, v3, Lbbf;->a:Lbbe$b;

    invoke-interface {v2}, Lbbe$b;->a()V

    .line 2052
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[SingleChatTaskActivity] intent is null"

    aput-object v3, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2055
    :cond_1
    const-string/jumbo v4, "intent_key_user_id"

    invoke-static {v2, v4, v8, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lbbf;->b:J

    .line 2056
    iget-wide v4, v3, Lbbf;->b:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    .line 2057
    iget-object v2, v3, Lbbf;->a:Lbbe$b;

    invoke-interface {v2}, Lbbe$b;->a()V

    .line 2058
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[SingleChatTaskActivity] invalid uid"

    aput-object v3, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :cond_2
    const-string/jumbo v4, "intent_key_todo_task_ids"

    invoke-static {v2, v4}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lbbf;->e:Ljava/util/List;

    .line 2063
    iget-object v2, v3, Lbbf;->e:Ljava/util/List;

    if-nez v2, :cond_3

    .line 2064
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lbbf;->e:Ljava/util/List;

    .line 2104
    :cond_3
    new-instance v2, Lbbf$1;

    invoke-direct {v2, v3}, Lbbf$1;-><init>(Lbbf;)V

    iput-object v2, v3, Lbbf;->g:Layv$h;

    .line 2117
    invoke-static {}, Layv;->a()Layv;

    move-result-object v2

    iget-object v4, v3, Lbbf;->g:Layv$h;

    .line 3104
    iput-object v4, v2, Layv;->j:Layv$h;

    .line 3125
    iget-object v2, v3, Lbbf;->c:Lbht;

    if-nez v2, :cond_4

    .line 3126
    new-instance v2, Lbht;

    iget-wide v4, v3, Lbbf;->b:J

    new-instance v6, Lbbf$2;

    invoke-direct {v6, v3}, Lbbf$2;-><init>(Lbbf;)V

    invoke-direct {v2, v4, v5, v6}, Lbht;-><init>(JLbht$a;)V

    iput-object v2, v3, Lbbf;->c:Lbht;

    .line 3147
    :cond_4
    iget-object v2, v3, Lbbf;->a:Lbbe$b;

    invoke-interface {v2}, Lbbe$b;->b()V

    .line 3148
    iget-object v2, v3, Lbbf;->c:Lbht;

    invoke-virtual {v2}, Lbht;->a()V

    goto/16 :goto_0
.end method
