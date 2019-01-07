.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MiniAppListActivity.java"

# interfaces
.implements Lheo;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lheq;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lhmb;

.field private i:Lhmc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 47
    const-string/jumbo v0, "my_applications"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->f:I

    .line 60
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->h:Lhmb;

    .line 73
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->i:Lhmc;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)Lheq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "batchFetch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 208
    :goto_1
    return-void

    .line 181
    :sswitch_0
    const-string/jumbo v5, "my_applications"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "applications_in_chat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    .line 183
    :pswitch_0
    if-eqz p1, :cond_1

    .line 184
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->h:Lhmb;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->i:Lhmc;

    .line 5072
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v4

    const-string/jumbo v5, "PREFERENCE_MY_MINI_APP_LIST_KEY"

    new-instance v6, Lhmr$1;

    invoke-direct {v6, v1, v2, v3}, Lhmr$1;-><init>(Lhmr;Lhmb;Lhmc;)V

    invoke-virtual {v4, v5, v6}, Lhmj;->a(Ljava/lang/String;Lhmd$a;)V

    goto :goto_1

    .line 188
    :cond_1
    const/4 v0, -0x1

    .line 189
    .local v0, "curMaxLimit":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 5185
    iget-object v1, v1, Lhek;->a:Ljava/util/List;

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    :cond_2
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->i:Lhmc;

    invoke-virtual {v1, v2, v0, v3, v4}, Lhmr;->a(IIZLhmc;)V

    goto :goto_1

    .line 200
    .end local v0    # "curMaxLimit":I
    :pswitch_1
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->h:Lhmb;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->i:Lhmc;

    .line 5197
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v5

    const-string/jumbo v6, "PREFERENCE_MINI_APP_IN_CHAT_LIST_KEY"

    new-instance v7, Lhmr$4;

    invoke-direct {v7, v1, v3, v2, v4}, Lhmr$4;-><init>(Lhmr;Lhmb;Ljava/lang/String;Lhmc;)V

    invoke-virtual {v5, v6, v7}, Lhmj;->a(Ljava/lang/String;Lhmd$a;)V

    goto :goto_1

    .line 181
    :sswitch_data_0
    .sparse-switch
        -0x4143672a -> :sswitch_0
        -0x320d8ea -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "index":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 6185
    iget-object v1, v1, Lhek;->a:Ljava/util/List;

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    :cond_0
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->i:Lhmc;

    invoke-virtual {v1, v0, v2, v3}, Lhmr;->a(IZLhmc;)V

    .line 221
    return-void
.end method

.method public final b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 228
    const-string/jumbo v1, "applications_in_chat"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 6321
    iget-boolean v0, v0, Lheq;->m:Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 6335
    iget-boolean v0, v0, Lheq;->o:Z

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v0, Lhdn$i;->activity_miniapp_list_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->setContentView(I)V

    .line 87
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->d:Z

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->e:Ljava/lang/String;

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "ding_content_type"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->f:I

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "mini_app_list_type"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1146
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "mini_app_list_show_guide"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1149
    if-eqz v0, :cond_1

    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1262
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2127
    :cond_1
    sget v0, Lhdn$h;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2128
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2129
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2130
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 2131
    new-instance v4, Lheq;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v4, v5, p0, v0}, Lheq;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 2132
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4269
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 4273
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    .line 4289
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miniapp.launch.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4290
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    :cond_4
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Z)V

    .line 93
    return-void

    .line 2158
    :sswitch_0
    const-string/jumbo v4, "my_applications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "applications_in_chat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 2160
    :pswitch_0
    sget v0, Lhdn$k;->dt_miniapp_my_app:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->setTitle(I)V

    .line 2161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v0, :cond_3

    .line 2162
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 2328
    iput-boolean v3, v0, Lheq;->o:Z

    .line 2163
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 2343
    const/16 v1, 0xc8

    iput v1, v0, Lheq;->n:I

    goto :goto_1

    .line 2167
    :pswitch_1
    sget v0, Lhdn$k;->dt_conversation_setting_mini_app_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->setTitle(I)V

    .line 2168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v0, :cond_3

    .line 2169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    .line 3328
    iput-boolean v1, v0, Lheq;->o:Z

    goto :goto_1

    .line 2158
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4143672a -> :sswitch_0
        -0x320d8ea -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 4297
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4301
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 4302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->g:Landroid/content/BroadcastReceiver;

    .line 121
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->d:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->d:Z

    .line 107
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->b:Lheq;

    invoke-virtual {v0}, Lheq;->a()V

    .line 115
    :cond_0
    return-void
.end method
