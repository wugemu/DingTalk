.class public Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private b:J

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private d:Landroid/widget/ScrollView;

.field private e:Lbnv;

.field private f:Lboy;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 112
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->d:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    return-object p1
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    sget v2, Lbpu$d;->circle_detail_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    .local v0, "contentView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    new-instance v2, Lboj;

    invoke-direct {v2}, Lboj;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v2, p0, v3, v4}, Lboj;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lbnv;

    move-result-object v1

    .line 212
    .local v1, "viewHolder":Lbnv;
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->e:Lbnv;

    .line 213
    if-nez v1, :cond_0

    .line 214
    const-string/jumbo v2, "viewHolder = null"

    .line 4076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 4203
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lbnv;->d:Z

    .line 218
    iget-object v2, v1, Lbnv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v1, v2}, Lbnv;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 221
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    .line 4237
    iput-object v2, v1, Lbnv;->h:Lbnv$d;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_post_object"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 68
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)Lbnv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->e:Lbnv;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)Lboy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    invoke-virtual {v0}, Lboy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1190
    if-eqz v2, :cond_1

    .line 1192
    const-string/jumbo v0, "extra_post_object"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1193
    const-string/jumbo v0, "extra_post_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->b:J

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    if-nez v0, :cond_2

    .line 82
    const-string/jumbo v0, "don\'t have post param"

    .line 2076
    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->finish()V

    .line 101
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1194
    goto :goto_0

    .line 87
    :cond_2
    sget v0, Lbpu$e;->activity_circle_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->setContentView(I)V

    .line 2127
    sget v0, Lbpu$d;->input_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 2128
    sget v0, Lbpu$d;->circle_detail_scroll:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->d:Landroid/widget/ScrollView;

    .line 2129
    new-instance v0, Lboy;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v3, Lbpu$d;->circle_detail_content:I

    .line 2144
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lboy;-><init>(Landroid/app/Activity;Lboy$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    .line 2176
    iput-object v1, v0, Lboy;->c:Lcov;

    .line 90
    sget v0, Lbpu$f;->dt_circle_title_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->setTitle(I)V

    .line 92
    sget v0, Lbpu$d;->ui_common_base_ui_activity_toolbar_divide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_3

    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a()V

    .line 100
    :goto_2
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_delete_post"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 97
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->b:J

    .line 3157
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v2

    .line 3158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v1, v0}, Lbou;->c(Ljava/lang/Long;Lcma;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->f:Lboy;

    invoke-virtual {v0}, Lboy;->a()V

    .line 108
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 110
    return-void
.end method
