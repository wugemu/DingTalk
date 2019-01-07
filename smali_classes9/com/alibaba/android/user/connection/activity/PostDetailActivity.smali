.class public Lcom/alibaba/android/user/connection/activity/PostDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private b:J

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private d:Landroid/widget/ScrollView;

.field private e:Lfcm;

.field private f:Lfdp;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 112
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->d:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object p1
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    sget v2, Lezg$h;->circle_detail_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    .local v0, "contentView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    new-instance v2, Lfda;

    invoke-direct {v2}, Lfda;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v2, p0, v3, v4}, Lfda;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lfcm;

    move-result-object v1

    .line 214
    .local v1, "viewHolder":Lfcm;
    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->e:Lfcm;

    .line 215
    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v2, "viewHolder = null"

    .line 4060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 4213
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfcm;->d:Z

    .line 220
    iget-object v2, v1, Lfcm;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v1, v2}, Lfcm;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 223
    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$6;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    .line 4247
    iput-object v2, v1, Lfcm;->h:Lfcm$b;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

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

    const-class v2, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

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

    .line 1060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfcm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->e:Lfcm;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfdp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    invoke-virtual {v0}, Lfdp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1190
    if-eqz v2, :cond_1

    .line 1194
    const-string/jumbo v0, "extra_post_object"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1195
    const-string/jumbo v0, "extra_post_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->b:J

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    if-nez v0, :cond_2

    .line 82
    const-string/jumbo v0, "don\'t have post param"

    .line 2060
    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->finish()V

    .line 101
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1196
    goto :goto_0

    .line 87
    :cond_2
    sget v0, Lezg$j;->activity_connection_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->setContentView(I)V

    .line 2127
    sget v0, Lezg$h;->input_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 2128
    sget v0, Lezg$h;->circle_detail_scroll:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->d:Landroid/widget/ScrollView;

    .line 2129
    new-instance v0, Lfdp;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v3, Lezg$h;->circle_detail_content:I

    .line 2144
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lfdp;-><init>(Landroid/app/Activity;Lfdp$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    .line 3143
    iput-object v1, v0, Lfdp;->c:Lcov;

    .line 90
    sget v0, Lezg$l;->dt_circle_title_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->setTitle(I)V

    .line 92
    sget v0, Lezg$h;->ui_common_base_ui_activity_toolbar_divide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_3

    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a()V

    .line 100
    :goto_2
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "connection_on_delete_post"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 97
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->b:J

    .line 4036
    sget-object v1, Lfdm$a;->a:Lfdk;

    .line 3158
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lfdk;->c(JLcma;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->f:Lfdp;

    invoke-virtual {v0}, Lfdp;->a()V

    .line 108
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 110
    return-void
.end method
