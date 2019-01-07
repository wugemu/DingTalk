.class public Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "LiveReplayListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field a:Lbxy$b;

.field private b:Landroid/widget/ListView;

.field private c:Lbxy;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcom/alibaba/wukong/im/Conversation;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lbxy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->k:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Landroid/content/Intent;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 50
    .line 6332
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    if-eqz v0, :cond_0

    .line 6335
    const-string/jumbo v0, "intent_extra_live_info"

    .line 6336
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 6337
    instance-of v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v1, :cond_0

    .line 6340
    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 6341
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    invoke-virtual {v1, v0}, Lbxy;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .prologue
    .line 50
    .line 4313
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 4314
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 4177
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4178
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4179
    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 4204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4205
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v2, v0

    .line 4207
    :cond_1
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d:Ljava/lang/String;

    .line 5225
    new-instance v0, Lbxe$4;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v6}, Lbxe$4;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)V

    .line 5231
    invoke-virtual {v0}, Lbxe$4;->start()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 50
    .line 5319
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 5320
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Landroid/content/Intent;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 50
    .line 6345
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    if-eqz v0, :cond_0

    .line 6348
    const-string/jumbo v0, "intent_extra_live_uuid"

    invoke-static {p1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6349
    const-string/jumbo v0, "intent_extra_live_title"

    invoke-static {p1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6350
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    .line 7120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7131
    :cond_0
    :goto_0
    return-void

    .line 7124
    :cond_1
    iget-object v0, v3, Lbxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 7125
    if-eqz v0, :cond_2

    .line 7128
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7129
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 7130
    invoke-virtual {v3}, Lbxy;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .prologue
    .line 50
    .line 5325
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 5326
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_replay_list_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "intent_extra_live_info"

    .line 5327
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 5328
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->j:I

    return v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 250
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->h:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->i:Z

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V

    .line 279
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 282
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;-><init>()V

    .line 283
    .local v1, "reqObject":Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->cid:Ljava/lang/String;

    .line 284
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->e:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->openId:J

    .line 285
    const/16 v2, 0x1e

    iput v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->count:I

    .line 286
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->j:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->index:I

    .line 288
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->i:Z

    .line 289
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 50
    .line 6236
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6237
    :cond_0
    :goto_0
    return-void

    .line 6239
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbtp$e;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 6240
    sget v1, Lbtp$g;->icon_live_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 6241
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->f:Z

    if-eqz v1, :cond_2

    sget v1, Lbtp$g;->dt_lv_no_my_live_records:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 6243
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->f:Z

    if-eqz v1, :cond_3

    sget v1, Lbtp$g;->dt_lv_no_mime_live_records_tips:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 6245
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 6241
    :cond_2
    sget v1, Lbtp$g;->dt_lv_no_live_records:I

    goto :goto_1

    .line 6243
    :cond_3
    sget v1, Lbtp$g;->dt_lv_no_group_live_records_tips:I

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "intent_extra_open_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->e:J

    .line 82
    const-string/jumbo v1, "intent_extra_view_data_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->g:Z

    .line 83
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->f:Z

    .line 1212
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V

    .line 1229
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1230
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    move-object v2, v1

    .line 1232
    :goto_1
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 1358
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    .line 1372
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1373
    const-string/jumbo v2, "intent_action_replay_list_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1374
    const-string/jumbo v2, "intent_action_live_title_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 1376
    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    :cond_1
    return-void

    .line 83
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    .line 2380
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2384
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 2385
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->l:Landroid/content/BroadcastReceiver;

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    .line 3286
    iget-object v1, v0, Lbxy;->d:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 3287
    iget-object v1, v0, Lbxy;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 131
    .local v7, "o":Ljava/lang/Object;
    instance-of v0, v7, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v0, :cond_0

    move-object v8, v7

    .line 134
    check-cast v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 135
    .local v8, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iget-boolean v0, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->hasWatched:Z

    if-nez v0, :cond_2

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->hasWatched:Z

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    invoke-virtual {v0}, Lbxy;->notifyDataSetChanged()V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->playUrl:Ljava/lang/String;

    iget-object v2, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->token:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d:Ljava/lang/String;

    iget-object v5, v8, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v4

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "o":Ljava/lang/Object;
    instance-of v6, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v6, :cond_0

    .line 155
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v0

    .local v0, "currentUid":J
    move-object v3, v2

    .line 156
    check-cast v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 157
    .local v3, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->k:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->k:Lcom/alibaba/wukong/im/Conversation;

    .line 158
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 160
    :cond_2
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v7, v5, [Ljava/lang/String;

    sget v8, Lbtp$g;->and_chat_menu_delete:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;

    invoke-direct {v4, p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    invoke-virtual {v6, v7, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move v4, v5

    .line 168
    goto :goto_0
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
    .line 299
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->h:Z

    if-nez v0, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0xa

    if-le v0, v1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c()V

    .line 302
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 295
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    sget v2, Lbtp$e;->list_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    .line 94
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_lv_replay_save_duration_tip"

    invoke-virtual {v2, v3, v4, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 96
    .local v1, "isShowDurationTips":Z
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->layout_replay_list_footer:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "footerView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 102
    .end local v0    # "footerView":Landroid/view/View;
    :cond_0
    new-instance v2, Lbxy;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->g:Z

    invoke-direct {v2, v3, v4}, Lbxy;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a:Lbxy$b;

    .line 2082
    iput-object v3, v2, Lbxy;->b:Lbxy$b;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c:Lbxy;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c()V

    .line 110
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lbtp$f;->fragment_live_replay_list:I

    return v0
.end method
